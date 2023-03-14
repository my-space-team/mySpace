package com.kosa.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.kosa.project.service.ProductService;
import com.kosa.project.service.ReviewService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@Autowired
	private ReviewService rservice;
	
	


	
	@GetMapping("/product/detail")
	public ModelAndView godetail(int idx) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("product", productService.getProduct(idx));
		mv.addObject("reviewlist", productService.getReviewList(idx));
		mv.addObject("reviewTotal", productService.getTotalReviewList(idx));
		mv.setViewName("product/detail");


		return mv;
	}

}