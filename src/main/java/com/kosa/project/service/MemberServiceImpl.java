package com.kosa.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosa.project.domain.MemberVO;
import com.kosa.project.mapper.CategoryMapper;
import com.kosa.project.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper memberMapper;

	@Override
	public Integer insert(MemberVO vo) {
		Integer result = memberMapper.insert(vo);
		return result == null ? null : result;
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

}
