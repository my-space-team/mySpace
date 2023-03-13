package com.kosa.project.service;

import java.util.List;
import java.util.Map;

import com.kosa.project.domain.Criteria;
import com.kosa.project.domain.ProductVO;
import com.kosa.project.domain.ScoreVO;

public interface ProductService {
    public List<ProductVO> getProductList(String category, Criteria cri, String search);
    public int getTotalCnt(String category, String search);
    public ProductVO getProduct(int idx);    
    public List<ScoreVO> getReviewList(int product_idx);
    public int getTotalReviewList(int product_idx);
}