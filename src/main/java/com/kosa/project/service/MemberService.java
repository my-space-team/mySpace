package com.kosa.project.service;

import com.kosa.project.domain.MemberVO;

public interface MemberService {

	public MemberVO insert(MemberVO vo);

	public MemberVO find(int idx);

	public MemberVO findMemberByLoginId(String loginId);

	public int remove(int idx);

	public int modify(MemberVO vo);
}
