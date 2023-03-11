package com.kosa.project.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.project.domain.CartProductVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CartProductServiceTests {
	
	@Autowired
	private CartProductService service;
	
//	@Test
//	public void testExist() {
//		log.info(service);
//		assertNotNull(service);
//	}
//
	@Test
	public void testGetList() {
		
		service.getList().forEach(cartProduct -> log.info(cartProduct));
	}
	
//	@Test
//	public void testDelete() {
//		
//		log.info("REMOVE RESULT: " + service.delete(2));
//	}
	
//	@Test
//	public void testUpdate() {
//		
//		CartProductVO cartProduct = service.get(1);
//		
//		if (cartProduct == null) {
//			return;
//			
//		}
//		
//		cartProduct.setAmount(17);
//		log.info("MODIFY RESULT : " + service.update(cartProduct));
//		
//	}
	

}
