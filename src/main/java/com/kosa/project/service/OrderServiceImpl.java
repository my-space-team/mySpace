package com.kosa.project.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.kosa.project.domain.CartProductVO;
import com.kosa.project.domain.OrderVO;
import com.kosa.project.mapper.MemberMapper;
import com.kosa.project.mapper.OrderMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class OrderServiceImpl implements OrderService {
	
	private OrderMapper ordermapper;
	private MemberMapper memberMapper;

	@Override
	public List<OrderVO> orderProductList() {
		return ordermapper.orderProductList();
	}

	@Override
	public OrderVO read() {
		return ordermapper.read();
	}
	
	@Override
	public List<CartProductVO> getcartList(int member) {
		log.info("getList............");

		return ordermapper.getcartList(member);
	}
	
	@Override
	public void insert(Map orderVo) {
		ordermapper.insert(orderVo);
		
	}
	

}
