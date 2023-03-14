package com.kosa.project.mapper;

import java.util.List;

import com.kosa.project.domain.CartProductVO;
import com.kosa.project.domain.ProductVO;

public interface CartProductMapper {
	
	//@Select("select * from cart_product where idx > 0")
	public List<CartProductVO> getList(int idx);
	
	public void addProduct(CartProductVO cartProduct); //상품 담기
	
	public int delete(int idx);
	
	public int update(CartProductVO cartProduct); 
	
	//public int update(int idx, int amount);
	
	
	
//	public void updateProductAmount(CartProductVO cartProduct); //중복 상품 수량 증가 
//	
	public ProductVO getProduct(int idx); //상품 정보 가져오는 메서드
//
	public CartProductVO read(int idx);

	

}
