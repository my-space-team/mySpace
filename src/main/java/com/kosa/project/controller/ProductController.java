package com.kosa.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kosa.project.service.ProductService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class ProductController {
	
	private ProductService service;
	
	
	@GetMapping("/product/detail")
	public ModelAndView godetail(int idx) {
		ModelAndView mv=new ModelAndView();
		mv.addObject("product",  service.getProduct(idx));
		mv.setViewName("product/detail");
		
		return mv;
	}
	
}