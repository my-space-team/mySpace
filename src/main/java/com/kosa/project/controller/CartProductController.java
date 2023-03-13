package com.kosa.project.controller;

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
import com.kosa.project.domain.ProductVO;
import com.kosa.project.service.CartProductService;
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

//	@GetMapping("/list")
//	public void list(Model model) {
//		
//		log.info("list");
//		model.addAttribute("list", service.getList());
//		
//	}
	
	@GetMapping("/list")
	public String list(@RequestParam("idx") int idx, Model model) {
	    log.info("list");
	    model.addAttribute("list", service.getList(idx));
	    return "list"; 
	}
	
//	@PostMapping("/add")
//	public void addProduct(@RequestBody CartProductVO cartProduct) {
//		service.addProduct(cartProduct);
//		
//		
//	}
	
	@PostMapping("/add")
	public String addProduct(@RequestParam("product.idx") int productIdx, Model model) {
//		ProductVO findProduct = productService.getProduct(idx);
//		cartProduct.setProduct(findProduct);
		ProductVO pvo = new ProductVO();
		pvo.setIdx(productIdx);
		CartProductVO cvo = new CartProductVO();
		cvo.setProduct(pvo);
		
		service.addProduct(cvo);
		
	    return "redirect:/product/detail?idx=" + productIdx;
	}
	
	
//	@GetMapping("/get")
//	public void get(@RequestParam("idx") int idx, Model model) {
//		
//		log.info("/get");
//		model.addAttribute("cartProduct", service.get(idx));
//	}
	
	
	
	@PostMapping("/update")
	public String update(CartProductVO cartProduct) {
	    service.update(cartProduct);
	    return "redirect:/cart/list?idx=" + 1;
	}
	
	@PostMapping("/delete")
	public String delete(@RequestParam("idx") int idx
			//,RedirectAttributes rttr
			) {
		service.delete(idx);
//		if (service.delete(idx)) {
//			rttr.addFlashAttribute("result", "success");
//		}
		return "redirect:/cart/list?idx=" +1 ;
	}


}