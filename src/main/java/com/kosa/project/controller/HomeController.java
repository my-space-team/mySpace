package com.kosa.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.kosa.project.service.CategoryService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class HomeController {

	private CategoryService categoryService;
	
	@GetMapping("/")
	public String home(Model model) {
		model.addAttribute("categoryList", categoryService.getCategory());
		return "home";
	}

}
