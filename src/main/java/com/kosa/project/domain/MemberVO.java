package com.kosa.project.domain;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class MemberVO {
    private int idx;

    private String loginId;

    private String password;

    private String name;

    private String email;

    private String phone;

    private List<AuthVO> authList;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birth;
}
