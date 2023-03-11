package com.kosa.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosa.project.domain.MemberVO;
import com.kosa.project.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/member")
public class MemberController {

    @Autowired
    private MemberService memberService;

    @GetMapping("/register")
    public String addMember(Model Model) {
        try {

        } catch (Exception e) {
            log.error(e.getMessage());
        }
        return "member/register";
    }

    @GetMapping("/{idx}/update")
    public String updateMember(@PathVariable int idx, Model model) {
        try {
            MemberVO findMember = memberService.find(idx);
            model.addAttribute("member", findMember);
        } catch (Exception e) {
            log.error(e.getMessage());
        }
        return "member/register";
    }
}
