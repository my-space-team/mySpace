package com.kosa.project.service;

import com.kosa.project.domain.MemberVO;

public interface MemberService {
	public Integer insert(MemberVO vo);

	public MemberVO find(int idx);

	public int remove(int idx);

	public int modify(MemberVO vo);
}
