package com.kosa.project.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.project.domain.CartProductVO;
import com.kosa.project.domain.MemberVO;
import com.kosa.project.domain.OrderVO;

import lombok.extern.log4j.Log4j;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class OrderMapperTests {
	
	@Autowired
	private OrderMapper mapper;
	private MemberMapper membermapper;
	
	@Test
	public void test() {

		/*CartProductVO order = (CartProductVO) mapper.getcartList(1); 
		log.info(order);*/
		//MemberVO member = membermapper.read();
		
	//mapper.orderProductList().forEach(order -> log.info(order));
		
	}
	
}
