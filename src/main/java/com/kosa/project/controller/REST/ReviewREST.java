package com.kosa.project.controller.REST;

import java.util.HashMap;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.kosa.project.service.ReviewService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@RestController
@RequestMapping("/REST/review")
@AllArgsConstructor
public class ReviewREST {
	
	private ReviewService reviewService;
	
	@PostMapping("/insert")	
    public ResponseEntity<String> reviewInsert(@RequestParam HashMap reviewForm) {
    	
        return reviewService.insertReview(reviewForm) == 1
                ? new ResponseEntity<>("success", HttpStatus.CREATED)
                : new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
    }
}
