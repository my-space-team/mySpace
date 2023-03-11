package com.kosa.project.service;

import java.util.List;

import com.kosa.project.domain.ReviewVO;
import com.kosa.project.domain.ScoreVO;

public interface ReviewService {
	public int insertReview(ScoreVO vo);
	public List<ScoreVO> getMemberReviewList(int memberIdx);
	public ScoreVO get(int idx);
	public int update(ScoreVO vo);
	public int delete(int idx, int score_idx);
}
