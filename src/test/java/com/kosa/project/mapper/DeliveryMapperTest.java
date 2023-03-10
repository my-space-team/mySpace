package com.kosa.project.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.project.domain.DeliveryVO;
import com.kosa.project.domain.MemberVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class DeliveryMapperTest {
	
	@Autowired
	private DeliveryMapper mapper;
	
	@Autowired
	private MemberMapper memberMapper;
	
	
//	@Test
//	public void insertTest() {
//		DeliveryVO delivery = new DeliveryVO();
//		delivery.setMember(memberMapper.find(10));
//		delivery.setAddressName("송파구");
//		delivery.setDeliveryName("youngoh");
//		delivery.setAddress("송파 it벤처타워");
//		delivery.setDeliveryPhone("010-0000");
//		delivery.setDeliveryRequest("경비실");
//		
//		mapper.insert(delivery);
//		
//		log.info(delivery);
//	}
	
//	@Test
//	public void readTest() {
//		DeliveryVO delivery = mapper.read(3);
//		log.info(delivery);
//	}
	
//	@Test
//	public void deleteTest() {
//		System.out.println("실행");
//		log.info("count : "+mapper.delete(6));
//	}
	
	@Test
	public void updateTest() {
		DeliveryVO delivery = new DeliveryVO();
		delivery.setIdx(9);
		delivery.setMember(memberMapper.find(10));
		delivery.setAddressName("강남구");
		delivery.setDeliveryName("ohohohohohohoh");
		delivery.setAddress("종로 메타넷");
		delivery.setDeliveryPhone("010/1223");
		delivery.setDeliveryRequest("문 앞");
		
		int count = mapper.update(delivery);
		log.info("Update count : "+count);
	}
}
