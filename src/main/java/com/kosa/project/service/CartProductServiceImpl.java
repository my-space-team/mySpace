package com.kosa.project.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kosa.project.domain.CartProductVO;
import com.kosa.project.mapper.CartProductMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class CartProductServiceImpl implements CartProductService {
	
	private CartProductMapper mapper;

	@Override
	public void addProduct(CartProductVO cartProduct) {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean update(CartProductVO cartProduct) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int idx) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<CartProductVO> getList() {
		// TODO Auto-generated method stub
		return null;
	}

}
