package com.kosa.project.service;

import com.kosa.project.domain.MemberVO;

public interface MemberService {
	public Integer insert(MemberVO vo);
<<<<<<< HEAD
	public MemberVO find(Integer idx);
	public boolean remove(Integer idx);
    public boolean modify(MemberVO vo);
=======

	public MemberVO find(Long idx);

	public int remove(Long idx);

	public int modify(MemberVO vo);
>>>>>>> main
}
