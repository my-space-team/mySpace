package com.kosa.project.service;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.project.domain.OrderVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class OrderServiceTests {

    @Autowired
    private OrderService orderService;

    @Autowired
    private MemberService memberService;

    @Autowired
    private CartService cartService;

    @Test
    public void insertTest() {
        Map<String, Object> orderMap = new HashMap<String, Object>();
        orderMap.put("memberIdx", memberService.findMemberByLoginId("member").getIdx());
        orderMap.put("cartIdx", cartService.findCartByMemberIdx((int) orderMap.get("memberIdx")));
        orderMap.put("payment", "신용카드");
        orderMap.put("totalPrice", 10000);
        orderMap.put("dilName", "주문은 성공적");
        orderMap.put("dilPlace", "하하하");
        orderMap.put("dilAddress", "하하하");
        orderMap.put("dilSelect", "하하하");
        orderMap.put("dilPrice", 10000);

        orderService.insert(orderMap);

    }
}
