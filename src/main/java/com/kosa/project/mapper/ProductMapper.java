package com.kosa.project.mapper;

import java.util.List;

import com.kosa.project.domain.ProductVO;

public interface ProductMapper {
	public List<ProductVO> getProductList(int category); 
	public ProductVO getProduct(int idx);

}
