package com.kosa.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosa.project.domain.OrderVO;
import com.kosa.project.mapper.OrderMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class OrderMapperServiceImpl implements OrderMapperService {

	@Autowired
	private OrderMapper mapper;

	@Override
	public List<OrderVO> getOrderList(int member) {

		System.out.println(member);
		System.out.println(mapper.getOrderList(member));
		return mapper.getOrderList(member);

	}

}
