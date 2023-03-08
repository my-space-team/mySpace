package com.kosa.project.domain;

import lombok.Data;

@Data
public class CartProductVO {
	private int idx;
	private int product_idx;
	private int amount;
}
