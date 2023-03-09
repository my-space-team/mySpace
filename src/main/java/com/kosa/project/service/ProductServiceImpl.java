package com.kosa.project.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kosa.project.domain.ProductVO;
import com.kosa.project.mapper.ProductMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class ProductServiceImpl implements ProductService {
	private ProductMapper productMapper;
	
	@Override
	public List<ProductVO> getProductList(int category) {
		return productMapper.getProductList(category);
	}

	@Override
	public ProductVO getProduct(int idx) {
<<<<<<< HEAD
		return mapper.getProduct(idx);
=======
		// TODO Auto-generated method stub
		return productMapper.getProduct(idx);
>>>>>>> origin/ohohoh
	}
	
	

}