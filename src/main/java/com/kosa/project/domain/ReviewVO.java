package com.kosa.project.domain;

import lombok.Data;

@Data
public class ReviewVO {
	private int idx;
	private int member_idx;
	private int product_idx;
	private int order_idx;
	private String content;
}
