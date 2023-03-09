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
	public List<ProductVO> getProductList() {
		return productMapper.getProductList();
	}

	@Override
	public ProductVO getProduct(int idx) {
		// TODO Auto-generated method stub
		return productMapper.getProduct(idx);
	}

}
