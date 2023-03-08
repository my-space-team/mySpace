package com.kosa.project.domain;

import lombok.Data;

@Data
public class CartProductVO {
	private int idx;
	private int productIdx;
	private int amount;
}
