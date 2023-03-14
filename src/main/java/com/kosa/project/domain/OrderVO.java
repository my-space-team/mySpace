package com.kosa.project.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class OrderVO {
    private int idx;
    private int price;
    private int deliveryPrice;
    private String payment;
    private Date state;
    private int memberIdx;
    private int cartIdx;
    private String deliveryName;
    private String addressName;
    private String address;
    private String deliveryRequest;
    private MemberVO member;
    private CartVO cart;
    private List<CartProductVO> cartProduct;

}
