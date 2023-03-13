package com.kosa.project.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.kosa.project.domain.Criteria;
import com.kosa.project.domain.ProductVO;
import com.kosa.project.domain.ReviewVO;
import com.kosa.project.domain.ScoreVO;
import com.kosa.project.mapper.ProductMapper;


import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class ProductServiceImpl implements ProductService {
	private ProductMapper productMapper;

	@Override
	public List<ProductVO> getProductList(String category, Criteria cri, String search) {
		Map<String, Object> map = new HashMap<String, Object>();
        map.put("cateNumber", category);
		map.put("pageNum", cri.getPageNum());
		map.put("amount", cri.getAmount());
		map.put("search", search);
		return productMapper.getProductList(map);
	}

	@Override
	public int getTotalCnt(String category, String search) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cateNumber", category);
		map.put("search", search);
		return productMapper.getTotalCnt(map);
	}
	
	@Override
	public ProductVO getProduct(int idx) {
		return productMapper.getProduct(idx);
	}

	@Override
	public List<ScoreVO> getReviewList(int product_idx) {
		// TODO Auto-generated method stub
		return productMapper.getReviewList(product_idx);
	}

	@Override
	public int getTotalReviewList(int product_idx) {
		// TODO Auto-generated method stub
		return productMapper.getTotalReviewList(product_idx);
	}





	

	
	

}
