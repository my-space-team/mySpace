package com.kosa.project.mapper;

import java.util.Date;
import java.util.List;

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

    @Test
    public void insert() {
        MemberVO member = new MemberVO();
        member.setName("김재우");
        member.setBirth(new Date());
        member.setEmail("evisahah@gmail.com");
        member.setLoginId("evisahha");
        member.setPassword("1234");
        member.setPhone("010-9122-6389");
        mapper.insert(member);
        log.info(member);
    }

    @Test
    public void delete() {
        mapper.delete(mapper.find(1).getIdx());

        List<MemberVO> members = mapper.getList();
        members.forEach(member -> log.info(member));

    }

    @Test
    public void update() {
        MemberVO findMember = mapper.find(10);
        log.info(findMember);
        findMember.setName("이재우");
        mapper.update(findMember);

        log.info(mapper.find(10));
    }

    @Test
    public void getList() {
        List<MemberVO> members = mapper.getList();
        members.forEach(member -> log.info(member));
    }
}
