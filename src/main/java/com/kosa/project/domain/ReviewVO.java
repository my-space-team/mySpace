package com.kosa.project.domain;

import lombok.Data;

@Data
public class ReviewVO {
	private int idx;
	private int memberIdx;
	private int productIdx;
	private int orderIdx;
	private String content;
}
