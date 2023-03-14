package com.kosa.project.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.kosa.project.domain.ReviewVO;
import com.kosa.project.domain.ScoreVO;
import com.kosa.project.mapper.ReviewMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class ReviewServiceImpl implements ReviewService {

	private ReviewMapper reviewMapper;
	
	@Override
	public int insertReview(HashMap reviewForm) {
		return reviewMapper.insertReview(reviewForm)==1 && reviewMapper.insertScore(reviewForm)==1 
				? 1 : 0 ;
	}

	@Override
	public List<ScoreVO> getMemberReviewList(int memberIdx) {
		
		return reviewMapper.getMemberReviewList(memberIdx);
	}

	@Override
	public ScoreVO get(int reviewIdx) {
		
		return reviewMapper.get(reviewIdx);
	}

	@Override
	public int update(HashMap reviewForm) {
		
		return reviewMapper.updateReview(reviewForm)==1 && reviewMapper.updateScore(reviewForm)==1 
				? 1 : 0 ;
	}

	@Override
	public int delete(int idx, int scoreidx) {
		
		return reviewMapper.deleteScore(idx)==1 && reviewMapper.deleteReview(idx)==1 
				? 1 : 0 ;
	}

}
