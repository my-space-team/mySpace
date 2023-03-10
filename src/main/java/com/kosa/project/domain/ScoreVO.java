package com.kosa.project.domain;

import lombok.Data;

@Data
public class ScoreVO {
	private int idx;
	private ReviewVO review;
	private int durability;
	private int design;
	private int delivery;

}
