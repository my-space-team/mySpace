package com.kosa.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosa.project.domain.CartProductVO;
import com.kosa.project.mapper.CartProductMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class CartProductServiceImpl implements CartProductService {
	
	@Autowired
	private CartProductMapper mapper;

	@Override
	public void addProduct(CartProductVO cartProduct) {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean update(CartProductVO cartProduct) {
		log.info("modify...." + cartProduct);
		
		return mapper.update(cartProduct) == 1;
	}

	@Override
	public boolean delete(int idx) {

		log.info("remove....." + idx);
		
		return mapper.delete(idx) == 1;
	}

	@Override
	public List<CartProductVO> getList() {
	
		log.info("getList............");
		
		return mapper.getList();
	}

	@Override
	public CartProductVO get(int idx) {
		
		log.info("get........." + idx);
		return mapper.read(idx);
	}
	
	

}
