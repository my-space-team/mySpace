package com.kosa.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosa.project.service.MemberService;

@Controller
@RequestMapping("/members")
public class MypageController {

    @Autowired
    private MemberService memberService;

    @GetMapping("/shopping_page")
    public String shoppingPage() {
        return "shopping_page";
    }
}
