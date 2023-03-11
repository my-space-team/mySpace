package com.kosa.project.mapper;

import java.util.List;

import com.kosa.project.domain.CartProductVO;

public interface CartProductMapper {
	
	//@Select("select * from cart_product where idx > 0")
	public List<CartProductVO> getList();
	
	public void addProduct(CartProductVO cartProduct); 
	
	public int delete(int idx);
	
	public int update(CartProductVO cartProduct); //수량 변경
	
	public CartProductVO read(int idx);


}
