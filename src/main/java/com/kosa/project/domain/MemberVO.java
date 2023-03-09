package com.kosa.project.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class MemberVO {
<<<<<<< HEAD
    private Integer idx;
=======
    private int idx;

>>>>>>> main
    private String loginId;

    private String password;

    private String name;

    private String email;

    private String phone;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birth;
}
