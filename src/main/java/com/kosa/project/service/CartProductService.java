package com.kosa.project.service;



import java.util.List;

import com.kosa.project.domain.CartProductVO;


public interface CartProductService {
	public void addProduct(CartProductVO cartProduct); //지금 안 할거임
	
	public boolean update(CartProductVO cartProduct);
	
	public boolean delete(int idx);
	
	public List<CartProductVO> getList();
	
	public CartProductVO get(int idx);
}
