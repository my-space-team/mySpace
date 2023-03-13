package com.kosa.project.domain;

import java.util.List;

import lombok.Data;

@Data
public class CartVO {
	private int idx;
	private MemberVO member;
	private List<CartProductVO> cartProduct;
	private List<CartProductVO> cartProductList;
}
