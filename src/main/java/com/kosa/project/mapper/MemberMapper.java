package com.kosa.project.mapper;

import com.kosa.project.domain.MemberVO;


public interface MemberMapper {
    public Integer insert(MemberVO vo);
    public MemberVO find(Integer idx);
    public int delete(Integer idx);
    public int update(MemberVO vo);
}
