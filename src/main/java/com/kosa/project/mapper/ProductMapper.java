package com.kosa.project.mapper;

import java.util.List;
import java.util.Map;

import com.kosa.project.domain.ProductVO;
import com.kosa.project.domain.ReviewVO;
import com.kosa.project.domain.ScoreVO;

public interface ProductMapper {
    public List<ProductVO> getProductList(int category); 
    public List<ProductVO> getProductList(Map<String, Object> map); 
    public int getTotalCnt(int cateNumber);
    public ProductVO getProduct(int idx);
    public List<ScoreVO> getReviewList(int product_idx);
    public int getTotalReviewList(int product_idx);
}