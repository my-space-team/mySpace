package com.kosa.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.kosa.project.domain.CustomUser;
import com.kosa.project.domain.MemberVO;
import com.kosa.project.mapper.MemberMapper;

public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private MemberMapper mapper;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        MemberVO member = mapper.findMemberByLoginId(username);
        return member == null ? null : new CustomUser(member);
    }

}
