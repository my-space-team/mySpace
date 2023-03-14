package com.kosa.project.service;

import java.util.List;
import java.util.Map;

import com.kosa.project.domain.OrderVO;
import com.kosa.project.domain.CartProductVO;

public interface OrderService {
	public List<OrderVO> orderProductList();

	public OrderVO read();

	List<CartProductVO> getcartList(int member);

	public void insert(Map orderVo);

}
