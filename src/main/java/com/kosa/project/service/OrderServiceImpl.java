package com.kosa.project.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kosa.project.domain.CartProductVO;
import com.kosa.project.domain.CartVO;
import com.kosa.project.domain.OrderVO;
import com.kosa.project.mapper.CartMapper;
import com.kosa.project.mapper.MemberMapper;
import com.kosa.project.mapper.OrderMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapper ordermapper;

	@Autowired
	private CartMapper cartMapper;

	@Autowired
	private MemberMapper memberMapper;

	@Override
	public List<CartProductVO> getcartList(int member) {
		log.info("getList............");

		return ordermapper.getcartList(member);
	}

	@Transactional
	@Override
	public void insert(Map orderVo) {
		ordermapper.insert(orderVo);

		CartVO cart = new CartVO();
		int memberIdx = (int) orderVo.get("memberIdx");
		cart.setMember(memberMapper.find(memberIdx));
		cartMapper.createCart(cart);

	}

	@Override
	public OrderVO read(int orderIdx) {
		return ordermapper.read(orderIdx);
	}

	@Override
	public List<OrderVO> orderProductList() {
		return ordermapper.orderProductList();
	}

	@Override
	public OrderVO findOrderByIdx(int orderIdx) {
		return ordermapper.findOrderByIdx(orderIdx);
	}

}
