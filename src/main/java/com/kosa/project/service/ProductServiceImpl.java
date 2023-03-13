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
	public List<ProductVO> getProductList(String category, Criteria cri) {
		Map<String, Object> map = new HashMap<String, Object>();
		int cateNumber = 0;
		try {
			cateNumber = ((category == null) ? 0 : Integer.parseInt(category));
		} catch (Exception e) {
			e.printStackTrace();
		}
        map.put("cateNumber", cateNumber);
		map.put("pageNum", cri.getPageNum());
		map.put("amount", cri.getAmount());
		return productMapper.getProductList(map);
	}

	@Override
	public int getTotalCnt(String category) {
		int cateNumber = 0;
		try {
			cateNumber = ((category == null) ? 0 : Integer.parseInt(category));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return productMapper.getTotalCnt(cateNumber);
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
