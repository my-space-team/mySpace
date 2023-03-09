package com.kosa.project.mapper;

import com.kosa.project.domain.MemberVO;

public interface MemberMapper {
    public Integer insert(MemberVO vo);

    public MemberVO find(int idx);

    public int delete(int idx);

    public int update(MemberVO vo);
}
