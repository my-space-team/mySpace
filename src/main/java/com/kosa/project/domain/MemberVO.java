package com.kosa.project.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
    private int idx;
    private String loginId;
    private String password;
    private String name;
    private String phone;
    private Date birth;
}
