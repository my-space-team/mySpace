package com.kosa.project.mapper;

import java.util.List;

import com.kosa.project.domain.MemberVO;

public interface MemberMapper {
    public int insert(MemberVO vo);

    public MemberVO find(int idx);

    public MemberVO findMemberByLoginId(String loginId);

    public int delete(int idx);

    public int update(MemberVO vo);

    public List<MemberVO> getList();
}
