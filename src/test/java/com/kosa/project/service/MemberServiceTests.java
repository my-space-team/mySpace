package com.kosa.project.service;

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
public class MemberServiceTests {

    @Autowired
    private MemberService service;

    @Test
    public void insert() {
        MemberVO member = new MemberVO();
        member.setName("tester");
        member.setBirth(new Date());
        member.setEmail("evisahah@gmail.com");
        member.setLoginId("tester1");
        member.setPassword("1234");
        member.setPhone("010-xxxx-xxxx");

        log.info(service.insert(member));
    }

//    @Test
//    public void find() {
//        log.info(service.find(61));
//    }
//
//    @Test
//    public void findMemberByLoginId() {
//        MemberVO vo = service.findMemberByLoginId("leej1120");
//        vo.getAuthList().forEach(auth -> log.info(auth));
//    }
//
//    @Test
//    public void remove() {
//        service.remove(26);
//    }
//
//    @Test
//    public void modify() {
//        MemberVO member = service.find(27);
//        member.setName("modify-service-test");
//        member.setBirth(new Date());
//        member.setEmail("thisisemail.com");
//        member.setLoginId("modify-service-test");
//        member.setPassword("1234");
//        member.setPhone("010-xxxx-xxxx");
//
//        service.modify(member);
//    }
}
