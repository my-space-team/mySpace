package com.kosa.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosa.project.domain.CartProductVO;
import com.kosa.project.domain.MemberVO;
import com.kosa.project.domain.OrderVO;
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
	private MemberMapper memberMapper;
	
	@Override
	public List<CartProductVO> getcartList(int member) {
		
		log.info("getList............");
		
		return ordermapper.getcartList(member);
	}
	public MemberVO find(int idx) {
		return memberMapper.find(idx);
	}
	
}
