package com.kosa.project.domain;

import lombok.Data;

@Data
public class DeliveryVO {
    private int idx;
    private int memberIdx;
    private String addressName;
    private String deliveryName;
    private String address;
    private String deliveryPhone;
    private String deliveryRequest;
}
