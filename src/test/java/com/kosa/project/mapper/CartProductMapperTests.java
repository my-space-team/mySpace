package com.kosa.project.mapper;

import java.util.HashMap;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.project.domain.CartProductVO;
import com.kosa.project.service.CartService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CartProductMapperTests {

	@Autowired
	private CartProductMapper mapper;

//	
//	@Test
//	public void testGetList() {
//		mapper.getList(1).forEach(cartProduct -> log.info(cartProduct));
//	}
//	
//	@Test
//	public void testAddProduct() {
//		
//		HashMap<String, Object> map = new HashMap<String, Object>();
//		map.put("product.idx", 1);
//		map.put("cart.idx", findMember.getIdx());
//		
//		
//		cartProduct.setIdx(5);
//		cartProduct.getCart().setIdx(1);
//		cartProduct.getProduct().setIdx(3);
//		cartProduct.setAmount(1);
//		
//
//		
//		mapper.addProduct(cartProduct);
//		log.info(cartProduct);
//		
	}
	
//	@Test
//	public void testDelete() {
//		log.info(mapper.delete(4));
//	}

	
//	@Test
//	public void testUpdate() {
//		CartProductVO cartProduct = new CartProductVO();
//		
//		cartProduct.setIdx(5);
//		cartProduct.setAmount(10);
//		
//		int count = mapper.update(cartProduct);
//		log.info(count);
//	}
}
