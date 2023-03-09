package com.kosa.project.service;

import com.kosa.project.domain.MemberVO;

public interface MemberService {
	public Integer insert(MemberVO vo);
	public MemberVO find(Integer idx);
	public boolean remove(Integer idx);
    public boolean modify(MemberVO vo);
}
