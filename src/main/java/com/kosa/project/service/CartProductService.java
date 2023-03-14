package com.kosa.project.service;



import java.util.HashMap;
import java.util.List;

import com.kosa.project.domain.CartProductVO;


public interface CartProductService {
	public void addProduct(HashMap map); 
	
	public boolean update(CartProductVO cartProduct);
	
	public boolean delete(int idx);
	
	public List<CartProductVO> getList(int idx);

	
	public CartProductVO get(int idx);

	//public void update(int idx, int amount);
}
