package com.kosa.project.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class AuthVO {

    private String userId;
    private String auth;

    public AuthVO(String userId, String auth) {
        this.userId = userId;
        this.auth = auth;
    }

}
