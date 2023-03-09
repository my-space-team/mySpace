package com.kosa.project.service;

import java.util.List;

import com.kosa.project.domain.ProductVO;

public interface ProductService {
	public List<ProductVO> getProductList(int category); 
	public ProductVO getProduct(int idx);

}
