package com.kosa.project.mapper;

import com.kosa.project.domain.MemberVO;

public interface MemberMapper {
    public Integer insert(MemberVO vo);
<<<<<<< HEAD
    public MemberVO find(Integer idx);
    public int delete(Integer idx);
=======

    public MemberVO find(int idx);

    public int delete(int idx);

>>>>>>> main
    public int update(MemberVO vo);
}
