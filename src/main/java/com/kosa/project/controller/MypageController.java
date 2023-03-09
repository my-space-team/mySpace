package com.kosa.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/members")
public class MypageController {

    @GetMapping("/_shopping_pages/order_list")
    public String shoppingPage() {
        return "shopping_pages";
    }
}
