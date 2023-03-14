package com.kosa.project.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.kosa.project.domain.CartProductVO;
import com.kosa.project.domain.CategoryVO;
import com.kosa.project.domain.MemberVO;
import com.kosa.project.domain.OrderVO;
import com.kosa.project.domain.ProductVO;
import com.kosa.project.service.CartProductService;
import com.kosa.project.service.MemberService;
import com.kosa.project.service.OrderService;
import com.kosa.project.service.ProductService;

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

    @GetMapping("/pay")
    public String getcartList(HttpServletRequest request, Model model,
            @ModelAttribute("member") MemberVO member,
            @ModelAttribute("cartProduct") CartProductVO cartProduct,
            @ModelAttribute("product") ProductVO product) {

        String referer = request.getHeader("referer");
        int cartIdx = cartProduct.getIdx();
        int memberIdx = member.getIdx();
        int productIdx = product.getIdx();

        if (referer.contains("product")) {
            Integer.parseInt(request.getParameter("idx"));
            model.addAttribute("member", memberService.find(memberIdx));
            model.addAttribute("productList", productService.getProduct(productIdx));
        } else {
            Integer.parseInt(request.getParameter("idx"));
            model.addAttribute("cartProductlist", cartProductService.getList(cartIdx));
        }
        return "order/pay";

    }

    @GetMapping("/add")
    public String addDeliveryInfo(HttpServletRequest request, Model model) {
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

        OrderVO order = orderService.read();
        model.addAttribute("order2", order);

        List<CategoryVO> vo = new ArrayList<CategoryVO>();

        orderService.orderProductList().forEach(item -> {
            vo.add(item.getCartProduct().getProduct().getCategory());
            System.out.println(item.getCartProduct().getProduct().getCategory().getName());
        });
        System.out.println(vo.toString());
        model.addAttribute("orderProductList", vo);

        return "order/confirm";
    }

    @GetMapping("/confirm")
    public String confirm() {
        return "order/confirm";
    }

}