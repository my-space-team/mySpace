package com.kosa.project.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.project.domain.CartVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CartMapperTests {

	@Autowired
	private CartMapper mapper;

	@Test
	public void testGetList() {
		mapper.getList(1).forEach(cartProduct -> log.info(cartProduct));
	}

	@Test
	public void findCartByMemberIdx() {
		int cart = mapper.findCartByMemberIdx(8);

		log.info("----------> " + cart);

	}
}
