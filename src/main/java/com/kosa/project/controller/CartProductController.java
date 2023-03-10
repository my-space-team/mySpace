package com.kosa.project.controller;

import java.security.Principal;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kosa.project.domain.CartProductVO;
import com.kosa.project.domain.MemberVO;
import com.kosa.project.domain.ProductVO;
import com.kosa.project.service.CartProductService;
import com.kosa.project.service.CartService;
import com.kosa.project.service.MemberService;
import com.kosa.project.service.ProductService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/cart/*")
@AllArgsConstructor
public class CartProductController {

	@Autowired
	private CartProductService service;

	@Autowired
	private ProductService productService;

	@Autowired
	private MemberService memberService;

	@Autowired
	private CartService cartService;

	@GetMapping("/list")
	public String list(Principal principal, Model model) {
		if (principal == null) {
			return "redirect:/memberLogin";
		}
		MemberVO findMember = memberService.findMemberByLoginId(principal.getName());
		log.info("list");
		model.addAttribute("list", service.getList(cartService.findCartByMemberIdx(findMember.getIdx())));
		return "list";
	}

	@PostMapping("/add")
	public String addProduct(Principal principal, @RequestParam("product.idx") int productIdx, Model model) {
		if (principal == null) {
			return "redirect:/memberLogin";
		}
		MemberVO findMember = memberService.findMemberByLoginId(principal.getName());
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("product_idx", productIdx);
		map.put("cart_idx", cartService.findCartByMemberIdx(findMember.getIdx()));
		System.out.println(map);
		service.addProduct(map);

		return "redirect:/product/detail?idx=" + productIdx;
	}

	@PostMapping("/update")
	public String update(Principal principal, CartProductVO cartProduct) {
		if (principal == null) {
			return "redirect:/memberLogin";
		}
		service.update(cartProduct);
		MemberVO findMember = memberService.findMemberByLoginId(principal.getName());
		return "redirect:/cart/list?idx=" + findMember.getIdx();
	}

	@PostMapping("/delete")
	public String delete(Principal principal, @RequestParam("idx") int idx) {
		service.delete(idx);
		MemberVO findMember = memberService.findMemberByLoginId(principal.getName());
		return "redirect:/cart/list?idx=" + findMember.getIdx();
	}
}