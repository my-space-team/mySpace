package com.kosa.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/memberLogin")
public class LoginController {

    @GetMapping
    public String login(String error, String logout, Model model) {

        if (error != null) {
            model.addAttribute("error", "올바른 아이디 혹은 비밀번호를 입력하세요" + error);
        }

        if (logout != null) {
            model.addAttribute("logout", "logout!!");
        }

        return "member/login";
    }
}
