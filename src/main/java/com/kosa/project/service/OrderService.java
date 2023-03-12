package com.kosa.project.service;

import java.util.List;
import java.util.Map;

import com.kosa.project.domain.MemberVO;
import com.kosa.project.domain.OrderVO;
import com.kosa.project.domain.CartProductVO;

public interface OrderService {
	public void insert(Map orderVo);
	public OrderVO read(int idx);
}
