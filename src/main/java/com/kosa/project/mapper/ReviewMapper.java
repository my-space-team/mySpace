package com.kosa.project.mapper;

import java.util.List;

import com.kosa.project.domain.ReviewVO;

public interface ReviewMapper {
	public int insertReview(ReviewVO vo);
	public int insertScore(ReviewVO vo);
	
	public List<ReviewVO> getMemberReviewList(int memberIdx);
	public ReviewVO get(int idx);
	
	public int updateReview(ReviewVO vo);
	public int updateScore(ReviewVO vo);
	
	public int deleteReview(int idx);
	public int deleteScore(int score_idx);
}
