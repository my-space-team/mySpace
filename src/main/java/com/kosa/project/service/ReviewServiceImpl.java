package com.kosa.project.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kosa.project.domain.ReviewVO;
import com.kosa.project.domain.ScoreVO;
import com.kosa.project.mapper.ReviewMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ReviewServiceImpl implements ReviewService {

	private ReviewMapper reviewMapper;
	
	@Override
	public int insertReview(ScoreVO vo) {		
		
		return reviewMapper.insertReview(vo)==1 && reviewMapper.insertScore(vo)==1 
				? 1 : 0 ;
	}

	@Override
	public List<ScoreVO> getMemberReviewList(int memberIdx) {
		
		return reviewMapper.getMemberReviewList(memberIdx);
	}

	@Override
	public ScoreVO get(int idx) {
		ScoreVO vo = reviewMapper.get(idx);
		return vo;
	}

	@Override
	public int update(ScoreVO vo) {
		
		return reviewMapper.updateReview(vo)==1 && reviewMapper.updateScore(vo)==1 
				? 1 : 0 ;
	}

	@Override
	public int delete(int idx, int scoreidx) {
		
		return reviewMapper.deleteReview(idx)==1 && reviewMapper.deleteScore(idx)==1 
				? 1 : 0 ;
	}

}
