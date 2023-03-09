package com.kosa.project.mapper;

import com.kosa.project.domain.MemberVO;


public interface MemberMapper {
    public Integer insert(MemberVO vo);
    public MemberVO find(Long idx);
    public int delete(Long idx);
    public int update(MemberVO vo);
}
