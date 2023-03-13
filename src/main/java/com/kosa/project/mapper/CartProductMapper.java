package com.kosa.project.mapper;

import java.util.List;

import com.kosa.project.domain.CartProductVO;

public interface CartProductMapper {
	
	//@Select("select * from cart_product where idx > 0")
	public List<CartProductVO> getList(int idx);
	
	public void addProduct(CartProductVO cartProduct); 
	
	public int delete(int idx);
	
	public int update(CartProductVO cartProduct); //수량 변경
	
	//public int update(int idx, int amount);
	
	public CartProductVO read(int idx);
	
	public CartProductVO getCartProduct(CartProductVO cartProduct); //추가하려는 상품이 장바구니에 있는 상품인지 검사하기 위해서 

	public void updateProduct(CartProductVO cartProduct);

}
