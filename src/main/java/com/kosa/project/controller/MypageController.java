package com.kosa.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosa.project.domain.MemberVO;
import com.kosa.project.service.MemberService;

@Controller
@RequestMapping("/mypage")
public class MypageController {

    @Autowired
    private MemberService memberService;

    @GetMapping("/{idx}/order_list_page")
    public String shoppingPage(@PathVariable int idx, MemberVO member, Model model) {
        if (member.getIdx() == idx) {
            // orderService를 이용해서 orderList를 불러와야함
            return "order_list_page";
        }
        return "/home";
    }
}
