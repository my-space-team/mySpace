package com.kosa.project.service;

import org.springframework.stereotype.Service;

import com.kosa.project.domain.MemberVO;
import com.kosa.project.mapper.MemberMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService{

	private MemberMapper memberMapper;
	
	@Override
	public Integer insert(MemberVO vo) {
		Integer result = memberMapper.insert(vo);
		return result == null ? null : result;
	}

	@Override
	public MemberVO find(Long idx) {
		return memberMapper.find(idx);
	}

	@Override
	public boolean remove(Long idx) {
		return memberMapper.delete(idx)==1;
	}

	@Override
	public boolean modify(MemberVO vo) {
		return memberMapper.update(vo)==1;
	}

}
