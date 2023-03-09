package com.kosa.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosa.project.service.CategoryService;
import com.kosa.project.service.ProductService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class HomeController {

	private CategoryService categoryService;
	private ProductService productService;
	
	@GetMapping("/")
	public String home(Model model) {
		model.addAttribute("categoryList", categoryService.getCategory());
		model.addAttribute("productList", productService.getProductList(0));
		return "home";
	}
}
