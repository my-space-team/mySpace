package com.kosa.project.domain;

import lombok.Data;

@Data
public class ReviewVO {
	private int idx;
	private String content;
	private MemberVO member;
	private ProductVO product;
	private OrderVO order;
}
