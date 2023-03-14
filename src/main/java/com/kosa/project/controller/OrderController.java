package com.kosa.project.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.kosa.project.domain.CartProductVO;
import com.kosa.project.domain.MemberVO;
import com.kosa.project.domain.OrderVO;
import com.kosa.project.domain.ProductVO;
import com.kosa.project.service.CartProductService;
import com.kosa.project.service.CartService;
import com.kosa.project.service.MemberService;
import com.kosa.project.service.OrderService;
import com.kosa.project.service.ProductService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/order/*")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private MemberService memberService;

    @Autowired
    private CartProductService cartProductService;

    @Autowired
    private ProductService productService;

    @Autowired
    private CartService cartService;

    @GetMapping("/pay")
    public String getcartList(Principal principal, HttpServletRequest request, Model model,
            @ModelAttribute("member") MemberVO member,
            @ModelAttribute("cartProduct") CartProductVO cartProduct,
            @ModelAttribute("product") ProductVO product) {

        if (principal == null)
            return "memberLogin";

        MemberVO loginMember = memberService.findMemberByLoginId(principal.getName());

        String referer = request.getHeader("referer");
        int cartIdx = cartProduct.getIdx();
        int productIdx = product.getIdx();

        if (referer.contains("product")) {
            Integer.parseInt(request.getParameter("idx"));
            model.addAttribute("member", loginMember);
            model.addAttribute("productList", productService.getProduct(productIdx));
        } else {
            Integer.parseInt(request.getParameter("idx"));
            model.addAttribute("member", loginMember);
            model.addAttribute("cartProductlist", cartProductService.getList(cartIdx));
        }
        return "order/pay";

    }

    @Transactional
    @GetMapping("/add")
    public String addDeliveryInfo(Principal principal, HttpServletRequest request, Model model) {
        if (principal == null)
            return "memberLogin";

        Map<String, Object> orderVo = new HashMap<String, Object>();
        orderVo.put("memberIdx", memberService.findMemberByLoginId(principal.getName()).getIdx());
        orderVo.put("cartIdx", cartService.findCartByMemberIdx((int) orderVo.get("memberIdx")));
        orderVo.put("payment", request.getParameter("payment"));
        orderVo.put("totalPrice", request.getParameter("totalPrice"));
        orderVo.put("dilName", request.getParameter("dil-name"));
        orderVo.put("dilPlace", request.getParameter("dil-place"));
        orderVo.put("dilAddress", request.getParameter("dil-address"));
        orderVo.put("dilSelect", request.getParameter("dil-select"));
        orderVo.put("dilPrice", request.getParameter("delivery-price"));
        orderService.insert(orderVo);
        orderVo.get("idx");
        log.info("----------> " + orderVo.get("idx"));

        OrderVO order = orderService.findOrderByIdx((int) orderVo.get("idx"));
        log.info(order);
        model.addAttribute("order", order);

        List<ProductVO> productList = new ArrayList<>();

        order.getCartProduct().forEach(product -> productList.add(productService.getProduct(product.getIdx())));

        model.addAttribute("productList", productList);
        model.addAttribute("member", principal.getName());

        return "order/confirm";
    }
}