package com.kosa.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/order/*")
public class OrderController {

	@GetMapping("/pay")
	public String pay() {
		return "pay";
	}
	
	@GetMapping("/confirm")
	public String confirm() {
		return "confirm";
	}

}
