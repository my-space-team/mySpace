package com.kosa.project.mapper;

import java.util.List;
import java.util.Map;

import com.kosa.project.domain.CartProductVO;
import com.kosa.project.domain.OrderVO;
public interface OrderMapper {
	public List<CartProductVO> getcartList(int cart);
	
	public void insert (Map orderVo);
	
	public OrderVO read();
	
	public List<OrderVO> orderProductList();
}
