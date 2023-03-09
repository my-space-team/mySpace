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
 
    @GetMapping("/order_list")
    public String orderList() {
        return "mypage/order_list";
    }
    
    @GetMapping("/review")
    public String review() {
        return "mypage/review";
    }
    
    @GetMapping("/review_insert")
    public String reviewInsert() {
        return "mypage/review_insert";
    }
}
