package com.kosa.project.service;

import java.util.List;

import com.kosa.project.domain.ReviewVO;

public interface ReviewService {
	public int insertReview(ReviewVO vo);
	public List<ReviewVO> getMemberReviewList(int memberIdx);
	public ReviewVO get(int idx);
	public int update(ReviewVO vo);
	public int delete(int idx, int score_idx);
}
