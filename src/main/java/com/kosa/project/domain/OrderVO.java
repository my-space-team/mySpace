package com.kosa.project.domain;

import java.util.Date;

import lombok.Data;

@Data
public class OrderVO {
    private int idx;
    private int price;
    private int deliveryPrice;
    private String payment;
    private Date state;
    private MemberVO member;
    private CartVO cart;
    private DeliveryVO delivery;
    private CartProductVO cartProduct;
}
