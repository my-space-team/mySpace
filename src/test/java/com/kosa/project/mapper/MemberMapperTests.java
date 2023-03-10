package com.kosa.project.mapper;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.project.domain.MemberVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberMapperTests {

    @Autowired
    private MemberMapper mapper;

//    @Test
//    public void insertAndFind() {
//        MemberVO member = new MemberVO();
//        member.setName("김영오");
//        member.setBirth(new Date());
//        member.setEmail("leej1102");
//        member.setLoginId("leej24224dd24230");
//        member.setPassword("ddddfdfd");
//        member.setPhone("12321421");
//        mapper.insert(member);
//
//        log.info("--------------------->" + member.getIdx());
//        mapper.find(member.getIdx());
//
//        log.info("<----------------------------->");
//        log.info(member);
//
//    }

//    @Test
//    public void delete() {
//    	log.info("Delete : "+mapper.delete(9));
//    }
    
//    @Test
//    public void update() {
//    	MemberVO member = new MemberVO();	
//    	member.setIdx(7);
//    	member.setName("김영오");
//        member.setBirth(new Date());
//        member.setEmail("leej1102");
//        member.setLoginId("leej24224dd24230");
//        member.setPassword("ddddfdfd");
//        member.setPhone("12321421");
//        
//        int count = mapper.update(member);
//        log.info("update count : "+count);
//    }
}
