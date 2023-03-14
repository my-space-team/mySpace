package com.kosa.project.mapper;

import java.util.List;
import java.util.Map;

import com.kosa.project.domain.CartProductVO;
import com.kosa.project.domain.OrderVO;

public interface OrderMapper {
	public List<CartProductVO> getcartList(int cart);

	public void insert(Map<String, Object> orderVo);

	public OrderVO read(int orderIdx);

	public List<OrderVO> orderProductList();

	public List<OrderVO> getOrderList(int member);

	public OrderVO findOrderByIdx(int orderIdx);

	public List<OrderVO> findOrderByMemberIdx(int memberIdx);

}
