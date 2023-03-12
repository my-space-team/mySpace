package com.kosa.project.service;

import java.util.List;
import com.kosa.project.domain.MemberVO;
import com.kosa.project.domain.CartProductVO;

public interface OrderService {
	public List<CartProductVO> getcartList(int member);
	public MemberVO find(int idx);
}
