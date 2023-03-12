package com.kosa.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosa.project.domain.AuthVO;
import com.kosa.project.domain.MemberVO;
import com.kosa.project.mapper.AuthMapper;
import com.kosa.project.mapper.MemberMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper memberMapper;

	@Autowired
	private AuthMapper authMapper;

	@Override
	public MemberVO insert(MemberVO vo) {
		memberMapper.insert(vo);
		AuthVO auth = new AuthVO(vo.getLoginId(), "MEMBER");
		authMapper.insert(auth);
		MemberVO dbMember = memberMapper.find(vo.getIdx());
		log.info("------>service----->insert" + dbMember);
		return dbMember;
	}

	@Override
	public MemberVO find(int idx) {
		return memberMapper.find(idx);
	}

	@Override
	public int remove(int idx) {
		return memberMapper.delete(idx);
	}

	@Override
	public int modify(MemberVO vo) {
		return memberMapper.update(vo);
	}

	@Override
	public MemberVO findMemberByLoginId(String loginId) {
		return memberMapper.findMemberByLoginId(loginId);
	}

}
