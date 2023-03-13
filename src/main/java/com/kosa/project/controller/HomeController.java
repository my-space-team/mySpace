package com.kosa.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosa.project.domain.Criteria;
import com.kosa.project.domain.PageDTO;
import com.kosa.project.service.CategoryService;
import com.kosa.project.service.ProductService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class HomeController {

	private CategoryService categoryService;
	private ProductService productService;
	
	@GetMapping("/")
	public String home(@RequestParam(value="category", defaultValue = "0")String category, 
						@RequestParam(value = "pageNum", defaultValue = "1")int pageNum, 
						@RequestParam(value = "amount", defaultValue = "16")int amount,
						@RequestParam(value = "searchKeyword", defaultValue = "") String searchKeyword, Model model) {
		Criteria cri = new Criteria(pageNum, amount);
		String search = "%" + searchKeyword + "%";
		model.addAttribute("searchKeyword", searchKeyword);
		model.addAttribute("category", category);
		model.addAttribute("categoryList", categoryService.getCategory());
		model.addAttribute("productList", productService.getProductList(category, cri, search));
		model.addAttribute("pageMaker", new PageDTO(cri, productService.getTotalCnt(category, search)));
	
		return "home";
	}
}
