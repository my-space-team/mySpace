package com.kosa.project.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kosa.project.domain.ReviewVO;
import com.kosa.project.mapper.ReviewMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class ReviewServiceImpl implements ReviewService {

	private ReviewMapper reviewMapper;
	
	@Override
	public int insertReview(ReviewVO vo) {		
		
		return reviewMapper.insertReview(vo)==1 && reviewMapper.insertScore(vo)==1 
				? 1 : 0 ;
	}

	@Override
	public List<ReviewVO> getMemberReviewList(int memberIdx) {
		
		return reviewMapper.getMemberReviewList(memberIdx);
	}

	@Override
	public ReviewVO get(int idx) {
		
		return reviewMapper.get(idx);
	}

	@Override
	public int update(ReviewVO vo) {
		
		return reviewMapper.updateReview(vo)==1 && reviewMapper.updateScore(vo)==1 
				? 1 : 0 ;
	}

	@Override
	public int delete(int idx, int score_idx) {
		
		return reviewMapper.deleteReview(idx)==1 && reviewMapper.deleteScore(score_idx)==1 
				? 1 : 0 ;
	}

}
