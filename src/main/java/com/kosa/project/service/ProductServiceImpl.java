package com.kosa.project.service;

import org.springframework.stereotype.Service;

import com.kosa.project.domain.ProductVO;
import com.kosa.project.mapper.ProductMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class ProductServiceImpl implements ProductService {
	
	private ProductMapper mapper;

	@Override
	public ProductVO getProduct(int idx) {
		return mapper.getProduct(idx);
	}
	
	

}
