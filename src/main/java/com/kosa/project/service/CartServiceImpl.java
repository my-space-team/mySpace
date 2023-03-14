package com.kosa.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosa.project.domain.CartVO;
import com.kosa.project.mapper.CartMapper;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartMapper mapper;

	@Override
	public List<CartVO> getList(int idx) {
		return mapper.getList(idx);
	}

	@Override
	public void createCart(CartVO cart) {
		mapper.createCart(cart);

	}

	@Override
	public int delete(int idx) {
		mapper.delete(idx);
		return 0;
	}

	@Override
	public int update(CartVO cart) {
		mapper.update(cart);
		return 0;
	}

	@Override
	public int findCartByMemberIdx(int memberIdx) {
		return mapper.findCartByMemberIdx(memberIdx);
	}

}
