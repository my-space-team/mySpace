package com.kosa.project.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import lombok.extern.log4j.Log4j;

@Log4j
public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
            Authentication auth) throws IOException, ServletException {
        log.warn("login success");
        List<String> rolesNames = new ArrayList<>();
        auth.getAuthorities().forEach(authority -> {
            rolesNames.add(authority.getAuthority());
        });

        log.warn("ROLE NAMES: " + rolesNames);

        if (rolesNames.contains("MEMBER")) {
            response.sendRedirect("/");
            return;
        }

        response.sendRedirect("/");
    }

}
