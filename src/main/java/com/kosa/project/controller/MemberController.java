package com.kosa.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kosa.project.domain.MemberVO;
import com.kosa.project.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	@Autowired
	private MemberService service;
	
	@GetMapping("/register")
	public String insertMember() {
		return "member/register";
	}

	@PostMapping("/register")
	public String insertMember(MemberVO vo, RedirectAttributes rttr) {
		System.out.println(vo);
		service.insert(vo);
		return "redirect:/";
	}	
}
