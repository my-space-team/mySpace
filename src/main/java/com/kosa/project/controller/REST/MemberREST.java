package com.kosa.project.controller.REST;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kosa.project.domain.MemberVO;
import com.kosa.project.service.MemberService;

import lombok.extern.log4j.Log4j;

@Log4j
@RestController
@RequestMapping("/REST/member")
public class MemberREST {

    @Autowired
    MemberService memberService;

    /**
     * 사용자 정보를 등록하는 엔드포인트
     * 
     * @param MemberVO member
     * @return
     */
    @PostMapping("/add")
    public ResponseEntity<MemberVO> add(MemberVO member) {
        try {
            MemberVO dbMember = memberService.insert(member);
            log.info("----------> /REST/member method:add = " + dbMember);
            if (dbMember != null) {
                return new ResponseEntity<MemberVO>(dbMember, HttpStatus.OK);
            }

        } catch (Exception e) {
            log.error(e.getMessage());
        }
        return new ResponseEntity<MemberVO>(HttpStatus.NO_CONTENT);
    }

    /**
     * 사용자 정보를 수정하는 엔드포인트
     * 
     * @param MemberVO member
     * @return
     */
    @PostMapping("/update")
    public ResponseEntity<MemberVO> update(MemberVO member) {
        try {
            int dbMemberIdx = memberService.modify(member);
            if (memberService.find(dbMemberIdx) != null) {
                return new ResponseEntity<MemberVO>(memberService.find(dbMemberIdx), HttpStatus.OK);
            }
        } catch (Exception e) {
            log.error(e.getMessage());
        }
        return new ResponseEntity<MemberVO>(HttpStatus.NO_CONTENT);
    }

    /**
     * 사용자 정보를 삭제하는 엔드포인트
     * 
     * @param int idx
     * @return
     */
    @GetMapping("/delete/{idx}")
    public ResponseEntity<MemberVO> delete(@PathVariable int idx) {
        try {
            int result = memberService.remove(idx);
            if (result == 1) {
                return new ResponseEntity<>(memberService.find(idx), HttpStatus.OK);
            }
        } catch (Exception e) {
            log.error(e.getMessage());
        }
        return new ResponseEntity<MemberVO>(HttpStatus.NO_CONTENT);
    }
}
