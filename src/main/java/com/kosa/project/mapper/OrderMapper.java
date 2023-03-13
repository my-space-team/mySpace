package com.kosa.project.mapper;

import java.util.List;

import com.kosa.project.domain.CartProductVO;
public interface OrderMapper {
	public List<CartProductVO> getcartList(int member);
}
