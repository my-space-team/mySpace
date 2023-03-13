package com.kosa.project.service;

import java.util.List;

import com.kosa.project.domain.OrderVO;

public interface OrderMapperService {
	public List<OrderVO> getOrderList(int member);
}
