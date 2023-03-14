package com.kosa.project.service;



import java.util.List;

import com.kosa.project.domain.CartProductVO;
import com.kosa.project.domain.CartVO;


public interface CartService {
	
	
public List<CartVO> getList(int idx);
	
	public void createCart(CartVO cart);
	
	public int delete(int idx);
	
	public int update(CartVO cart);
}
