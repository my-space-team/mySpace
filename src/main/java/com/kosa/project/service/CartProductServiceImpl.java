package com.kosa.project.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
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

//	@Override
//	public void addProduct(CartProductVO cartProduct) {
//		mapper.addProduct(cartProduct);
//
//	}
	
	@Override
	public void addProduct(CartProductVO cartProduct) {
	    CartProductVO existingProduct = mapper.getCartProduct(cartProduct);
	    if (existingProduct == null) {
	        // 장바구니에 새로운 상품을 추가합니다.
	        mapper.addProduct(cartProduct);
	    } else {
	        // 이미 장바구니에 담겨있는 상품의 수량을 증가시킵니다.
	        existingProduct.setAmount(existingProduct.getAmount() + 1);
	        mapper.updateProduct(existingProduct);
	    }
	}

	@Override
	public boolean update(CartProductVO cartProduct) {
		log.info("update...." + cartProduct);
		
		return mapper.update(cartProduct) == 1;
	}

	@Override
	public boolean delete(int idx) {

		log.info("delete....." + idx);
		
		return mapper.delete(idx) == 1;
	}

	@Override
	public List<CartProductVO> getList(int idx) {
	
		log.info("getList............");
		
		return mapper.getList(idx);
	}

	@Override
	public CartProductVO get(int idx) {
		
		log.info("get........." + idx);
		return mapper.read(idx);
	}

	

//	@Override
//	public void update(@Param("idx") int idx, @Param("amount") int amount) {
//		mapper.update(idx, amount);
//		
//	}
	
	

}
