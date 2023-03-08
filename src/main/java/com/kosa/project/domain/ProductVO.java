package com.kosa.project.domain;

import lombok.Data;

@Data
public class ProductVO {
	private int idx;
	private int categoryIdx;
	private int brandIdx;
	private String name;
	private int price;

}
