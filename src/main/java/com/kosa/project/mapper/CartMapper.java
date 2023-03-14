package com.kosa.project.mapper;

import java.util.List;

import com.kosa.project.domain.CartVO;

public interface CartMapper {

	public List<CartVO> getList(int idx);

	public void createCart(CartVO cart);

	public int delete(int idx);

	public int update(CartVO cart);

}
