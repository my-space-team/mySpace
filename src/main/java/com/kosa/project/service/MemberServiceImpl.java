package com.kosa.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kosa.project.domain.AuthVO;
import com.kosa.project.domain.CartVO;
import com.kosa.project.domain.MemberVO;
import com.kosa.project.mapper.AuthMapper;
import com.kosa.project.mapper.CartMapper;
import com.kosa.project.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@RequiredArgsConstructor
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper memberMapper;

	@Autowired
	private AuthMapper authMapper;

	@Autowired
	private CartMapper cartMapper;

	BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

	@Transactional
	@Override
	public MemberVO insert(MemberVO vo) {
		vo.setPassword(encoder.encode(vo.getPassword()));
		memberMapper.insert(vo);
		AuthVO auth = new AuthVO(vo.getLoginId(), "MEMBER");
		authMapper.insert(auth);
		MemberVO dbMember = memberMapper.find(vo.getIdx());

		CartVO cart = new CartVO();
		cart.setMember(dbMember);
		cartMapper.createCart(cart);

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

	@Transactional
	@Override
	public int modify(MemberVO vo) {
		vo.setPassword(encoder.encode(vo.getPassword()));
		log.info(vo.getPassword());
		return memberMapper.update(vo);
	}

	@Override
	public MemberVO findMemberByLoginId(String loginId) {
		return memberMapper.findMemberByLoginId(loginId);
	}

}
