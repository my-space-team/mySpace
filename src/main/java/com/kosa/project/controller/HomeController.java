package com.kosa.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosa.project.domain.Criteria;
import com.kosa.project.domain.PageDTO;
import com.kosa.project.service.CategoryService;
import com.kosa.project.service.ProductService;
import com.sun.jdi.IntegerType;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class HomeController {

	private CategoryService categoryService;
	private ProductService productService;
	
	@GetMapping("/")
	public String home(@RequestParam(value="category", required = false)String category, 
						@RequestParam(value = "pageNum", defaultValue="1")int pageNum, 
						@RequestParam(value = "amount", defaultValue="16")int amount, Model model) {
		Criteria cri = new Criteria(pageNum, amount);
		System.out.println(cri);
		model.addAttribute("category", category);
		model.addAttribute("categoryList", categoryService.getCategory());
		model.addAttribute("productList", productService.getProductList(category, cri));
		model.addAttribute("pageMaker", new PageDTO(cri, productService.getTotalCnt(category)));
		return "home";
	}
}
