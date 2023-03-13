package com.kosa.project.domain;

import lombok.Data;

@Data
public class ProductVO {
	private int idx;
	private CategoryVO category;
	private BrandVO brand;
	private String name;
	private int price;
	
	//³ªÁß¿¡
	private String contents;
	private String imageURL;
	private String imageUpload;
}
