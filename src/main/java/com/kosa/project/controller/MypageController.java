package com.kosa.project.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosa.project.domain.ScoreVO;
import com.kosa.project.service.ReviewService;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/mypage")
@AllArgsConstructor
public class MypageController {

    private ReviewService reviewService;

    @GetMapping("/shopping_page")
    public String shoppingPage() {
        return "shopping_page";
    }

    @GetMapping("/order_list")
    public String orderList() {
        return "mypage/order_list";
    }

    @GetMapping("/review")
    public String review(Model model) {
        model.addAttribute("List", reviewService.getMemberReviewList(1));
        return "mypage/review";
    }

    @GetMapping("/review/insert")
    public String reviewInsert() {
        return "mypage/review_insert";
    }

    @PostMapping("/review/isert")
    public ResponseEntity<String> reviewInsert(ScoreVO vo) {
        ;
        return reviewService.insertReview(vo) == 1
                ? new ResponseEntity<>("success", HttpStatus.OK)
                : new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
    }

}
