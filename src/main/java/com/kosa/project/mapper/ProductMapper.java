package com.kosa.project.mapper;

import java.util.List;

import com.kosa.project.domain.ProductVO;
import com.kosa.project.domain.ReviewVO;
import com.kosa.project.domain.ScoreVO;

public interface ProductMapper {
	public List<ProductVO> getProductList(int category); 
	public ProductVO getProduct(int idx);
	public List<ScoreVO> getReviewList(int product_idx);
	public int getTotalReviewList(int product_idx);
}
