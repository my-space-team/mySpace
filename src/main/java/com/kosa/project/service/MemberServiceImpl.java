package com.kosa.project.service;

import org.springframework.stereotype.Service;

import com.kosa.project.domain.MemberVO;
import com.kosa.project.mapper.MemberMapper;

import lombok.AllArgsConstructor;

<<<<<<< HEAD
@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {

	private MemberMapper memberMapper;

=======
<<<<<<< HEAD
@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService{

	private MemberMapper memberMapper;
	
>>>>>>> ebd2280ffb3af47765d5bb68c245762726f0522a
	@Override
	public Integer insert(MemberVO vo) {
		Integer result = memberMapper.insert(vo);
		return result == null ? null : result;
	}

	@Override
<<<<<<< HEAD
	public MemberVO find(int idx) {
=======
	public MemberVO find(Integer idx) {
>>>>>>> ebd2280ffb3af47765d5bb68c245762726f0522a
		return memberMapper.find(idx);
	}

	@Override
<<<<<<< HEAD
	public int remove(int idx) {
		return memberMapper.delete(idx);
	}

	@Override
	public int modify(MemberVO vo) {
		return memberMapper.update(vo);
	}

}
=======
	public boolean remove(Integer idx) {
		return memberMapper.delete(idx)==1;
	}

	@Override
	public boolean modify(MemberVO vo) {
		return memberMapper.update(vo)==1;
	}

}
=======
// @Service
// @AllArgsConstructor
// public class MemberServiceImpl implements MemberService {

// private MemberMapper memberMapper;

// @Override
// public Integer insert(MemberVO vo) {
// Integer result = memberMapper.insert(vo);
// return result == null ? null : result;
// }

// @Override
// public MemberVO find() {
// return memberMapper.find(idx);
// }

// @Override
// public int remove(Long idx) {
// return memberMapper.delete(idx);
// }

// @Override
// public int modify(MemberVO vo) {
// return memberMapper.update(vo);
// }

// }
>>>>>>> main
>>>>>>> ebd2280ffb3af47765d5bb68c245762726f0522a
