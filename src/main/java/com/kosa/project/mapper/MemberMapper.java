package com.kosa.project.mapper;

import java.util.List;

import com.kosa.project.domain.MemberVO;

public interface MemberMapper {
    public Integer insert(MemberVO vo);

    public MemberVO find(int idx);

    public List<MemberVO> getList();

    public int delete(int idx);

    public int update(MemberVO vo);
}
