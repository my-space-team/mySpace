package com.kosa.project.mapper;

import java.util.List;

import com.kosa.project.domain.ReviewVO;
import com.kosa.project.domain.ScoreVO;

public interface ReviewMapper {
	public int insertReview(ScoreVO vo);
	public int insertScore(ScoreVO vo);
	
	public List<ScoreVO> getMemberReviewList(int memberIdx);
	public ScoreVO get(int idx);
	
	public int updateReview(ScoreVO vo);
	public int updateScore(ScoreVO vo);
	
	public int deleteReview(int review_idx);
	public int deleteScore(int score_idx);
}
