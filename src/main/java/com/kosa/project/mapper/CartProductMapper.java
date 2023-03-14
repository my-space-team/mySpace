package com.kosa.project.mapper;

import java.util.HashMap;
import java.util.List;

import com.kosa.project.domain.CartProductVO;
import com.kosa.project.domain.ProductVO;

public interface CartProductMapper {

	public List<CartProductVO> getList(int idx);

	public void addProduct(HashMap map); // 상품 담기

	public int delete(int idx);

	public int update(CartProductVO cartProduct);

	public ProductVO getProduct(int idx); // 상품 정보 가져오는 메서드

	public CartProductVO read(int idx);

}
