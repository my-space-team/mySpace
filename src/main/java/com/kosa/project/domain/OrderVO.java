package com.kosa.project.domain;

import java.util.Date;

import lombok.Data;

@Data
public class OrderVO {
    private int idx;
    private int memberIdx;
    private int cartIdx;
    private int deliveryIdx;
    private String payment;
    private int price;
    private int deliveryPrice;
    private Date state;
}
