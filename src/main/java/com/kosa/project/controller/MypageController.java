package com.kosa.project.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosa.project.domain.CustomUser;
import com.kosa.project.domain.MemberVO;
<<<<<<< HEAD
import com.kosa.project.domain.OrderVO;
=======
import com.kosa.project.domain.ReviewVO;
>>>>>>> origin/youngoh
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
	private CustomUserDetailsService customUserDetailsService;
	
    @Autowired
    private ReviewService reviewService;

    @Autowired
    private MemberService memberService;

    @Autowired
    private OrderService orderService;
    
    @Autowired
<<<<<<< HEAD
    private OrderMapperService orderMapperService;
=======
    private ProductService productService;
>>>>>>> origin/youngoh

    @GetMapping("/home")
    public String orderList(Principal principal, Model model) {
    	
        if (principal == null) {
            return "redirect:/memberLogin";
        }	
        MemberVO findMember = memberService.findMemberByLoginId(principal.getName());
<<<<<<< HEAD
        System.out.println(findMember.getIdx());
        model.addAttribute("member", findMember);
        System.out.println(orderMapperService.getOrderList(findMember.getIdx()));
        model.addAttribute("orderList", orderMapperService.getOrderList(findMember.getIdx()));
=======
        //orderService.getcartList(findMember.getIdx());
        model.addAttribute("member", findMember);
        //model.addAttribute(null, findMember);
>>>>>>> origin/youngoh
        return "mypage/order_list";
    }

    @GetMapping("/review")
    public String review(Model model) {
        model.addAttribute("List", reviewService.getMemberReviewList(1));
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

    @PostMapping("/review/insert")
    public ResponseEntity<String> reviewInsert(ScoreVO vo) {
        return reviewService.insertReview(vo) == 1
                ? new ResponseEntity<>("success", HttpStatus.OK)
                : new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
    }

}
