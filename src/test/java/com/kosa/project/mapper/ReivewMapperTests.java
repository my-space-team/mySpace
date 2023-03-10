package com.kosa.project.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.project.domain.ReviewVO;
import com.kosa.project.domain.ScoreVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReivewMapperTests {
	@Autowired
	private ReviewMapper reviewMapper;
	
//	@Test
//	public void testInsert() {
//		ReviewVO vo = new ReviewVO();
//    	vo.setContent("수정");
//    	vo.setIdx(1);
//    	ScoreVO svo = new ScoreVO();
//    	svo.setIdx(2);
//    	svo.setDelivery(5);
//    	vo.setScore(svo);
//    	log.info(reviewMapper.updateScore(vo));
//    	log.info(reviewMapper.updateReview(vo));
//    	
//	}
	
	@Test
	public void testDelete() {
//		log.info(reviewMapper.deleteReview(1));
//    	log.info(reviewMapper.deleteScore(2));
	}
}
