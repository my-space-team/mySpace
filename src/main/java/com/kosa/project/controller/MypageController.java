package com.kosa.project.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosa.project.domain.CartProductVO;
import com.kosa.project.domain.MemberVO;
import com.kosa.project.domain.OrderVO;
import com.kosa.project.domain.ProductVO;
import com.kosa.project.domain.ScoreVO;
import com.kosa.project.service.CustomUserDetailsService;
import com.kosa.project.service.MemberService;
import com.kosa.project.service.OrderMapperService;
import com.kosa.project.service.OrderService;
import com.kosa.project.service.ProductService;
import com.kosa.project.service.ReviewService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/mypage")
public class MypageController {

    @Autowired
    private ReviewService reviewService;

    @Autowired
    private MemberService memberService;

    @Autowired
    private OrderService orderService;

    @Autowired
    private ProductService productService;

    @GetMapping("/home")
    public String orderList(Principal principal, Model model) {

        if (principal == null) {
            return "redirect:/memberLogin";
        }
        MemberVO findMember = memberService.findMemberByLoginId(principal.getName());
        List<OrderVO> orderList = orderService.findOrderByMemberIdx(findMember.getIdx());

        model.addAttribute("member", findMember);

        for (OrderVO order : orderList) {
            List<ProductVO> productList2 = new ArrayList<>();

            order.getCartProduct().forEach(product -> productList2.add(productService.getProduct(product.getIdx())));
            order.setProductList(productList2);
        }

        model.addAttribute("orderList", orderList);
        log.info(orderList);
        return "mypage/home";
    }
    
    @GetMapping("/order")
    public String order(Principal principal, 
    		@RequestParam("orderIdx") int orderIdx,
            @RequestParam("productIdx") int productIdx, Model model) {
    	//orderIdx
    	//model.addAttribute("orderIdx", orderIdx);
    	//model.addAttribute("productIdx", productIdx);
    	//MemberVO findMember = memberService.findMemberByLoginId(principal.getName());
    	//findMember.getIdx();
    	return "mypage/order";
    }

    @GetMapping("/review")
    public String review(Principal principal, Model model) {
        if (principal == null) {
            return "redirect:/memberLogin";
        }
        MemberVO findMember = memberService.findMemberByLoginId(principal.getName());

        model.addAttribute("member", findMember);
        model.addAttribute("List", reviewService.getMemberReviewList(findMember.getIdx()));
        return "mypage/review";
    }

    @GetMapping("/review/insert")
    public String reviewInsert(
            @RequestParam("orderIdx") int orderIdx,
            @RequestParam("productIdx") int productIdx,
            @RequestParam("memberIdx") int memberIdx, Model model) {

        model.addAttribute("memberIdx", memberIdx);
        model.addAttribute("orderIdx", orderIdx);
        model.addAttribute("productIdx", productIdx);
        model.addAttribute("product", productService.getProduct(productIdx));
        return "mypage/review_insert";
    }

    @GetMapping("/review/update")
    public String reviewUpdate(Principal principal, @RequestParam("reviewIdx") int reviewIdx, Model model) {
        if (principal == null) {
            return "redirect:/memberLogin";
        }
        model.addAttribute("reviewIdx", reviewIdx);
        model.addAttribute("reviewScore", reviewService.get(reviewIdx));
        return "mypage/review_update";
    }
}
