package com.kosa.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kosa.project.domain.CartProductVO;
import com.kosa.project.domain.MemberVO;
import com.kosa.project.service.MemberService;
import com.kosa.project.service.OrderService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/order/*")
@Log4j
public class OrderController {
    
    @Autowired
    private OrderService orderService;
    
    @Autowired
    private MemberService memberService;
    
    @GetMapping("/pay")
    public String getcartList(Model model, @ModelAttribute("member") MemberVO member, 
            @ModelAttribute("cartProduct") CartProductVO cartProduct) {
        int memberIdx = member.getIdx();
        model.addAttribute("member", memberService.find(memberIdx));
        model.addAttribute("cartProduct", orderService.getcartList(memberIdx));
        System.out.println(orderService.getcartList(memberIdx));
        return "order/pay";
    }
    
    @GetMapping("/confirm")
    public String confirm() {
        return "order/confirm";
    }
}