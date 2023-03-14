package com.kosa.project.controller;

import java.net.http.HttpRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kosa.project.domain.CartProductVO;
import com.kosa.project.domain.CartVO;
import com.kosa.project.domain.DeliveryVO;
import com.kosa.project.domain.MemberVO;
import com.kosa.project.domain.OrderVO;
import com.kosa.project.service.CartProductService;
import com.kosa.project.service.DeliveryService;
import com.kosa.project.service.MemberService;
import com.kosa.project.service.OrderService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/order/*")
@Log4j
public class OrderController {
    
    @Autowired
    private OrderService orderService;
    
    @Autowired
    private MemberService memberService;
    
    @Autowired
    private CartProductService cartProductService;

    @GetMapping("/pay")
    public String getcartList(Model model, @ModelAttribute("member") MemberVO member, 
            @ModelAttribute("cartProduct") CartProductVO cartProduct,
            DeliveryVO delivery, RedirectAttributes rttr) {
        int memberIdx = member.getIdx();
        model.addAttribute("member", memberService.find(memberIdx));
        model.addAttribute("cartProductlist", cartProductService.getList(memberIdx));
        rttr.addFlashAttribute("result", delivery.getIdx());
        return "order/pay";
    }
    
	
	 @GetMapping("/add") 
	 public String addDeliveryInfo(HttpServletRequest request,Model model) { 
		Map<String, Object> orderVo = new HashMap<String, Object>();
		orderVo.put("memberIdx", 1);
		orderVo.put("cartIdx", Integer.parseInt(request.getParameter("cartIdx")));
		orderVo.put("payment", request.getParameter("payment"));
		orderVo.put("totalPrice", request.getParameter("totalPrice"));
		orderVo.put("dilName", request.getParameter("dil-name"));
		orderVo.put("dilPlace", request.getParameter("dil-place"));
		orderVo.put("dilAddress", request.getParameter("dil-address"));
		orderVo.put("dilSelect", request.getParameter("dil-select"));
		orderVo.put("dilPrice", request.getParameter("delivery-price"));
		orderService.insert(orderVo);
		System.out.println(orderVo);
		
		/*�ֹ�����*/
	    OrderVO order = orderService.read(); 
	    model.addAttribute("order2", order);
	    
	    /*�ֹ���ǰ����Ʈ*/
	   List<OrderVO> order1= orderService.orderProductList();
	    model.addAttribute("orderProductList", order1);
	    System.out.println(order1);
		
		return "order/confirm";
	}
	 
//	 @GetMapping("/confirm")
//	 public String get(@RequestParam("idx") int idx, Model model) {
//		 model.addAttribute("order2", orderService.read(idx));
//		 System.out.println(orderService.read(idx));
//		 return "order/confirm";
//	 }
    
    @GetMapping("/confirm")
    public String confirm() {
        return "order/confirm";
    }
    
    
}