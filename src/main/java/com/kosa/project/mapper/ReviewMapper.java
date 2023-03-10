package com.kosa.project.mapper;

import java.util.HashMap;
import java.util.List;

import com.kosa.project.domain.ReviewVO;
import com.kosa.project.domain.ScoreVO;

public interface ReviewMapper {
	public int insertReview(HashMap reviewForm);
	public int insertScore(HashMap reviewForm);
	
	public List<ScoreVO> getMemberReviewList(int memberIdx);
	public ScoreVO get(int reviewIdx);
	public ScoreVO reviewDuplicate(HashMap reviewForm);
	public int updateReview(HashMap reviewForm);
	public int updateScore(HashMap reviewForm);
	
	public int deleteReview(int review_idx);
	public int deleteScore(int score_idx);
}
