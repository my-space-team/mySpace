package com.kosa.project.mapper;

import com.kosa.project.domain.AuthVO;

public interface AuthMapper {

    public AuthVO find(String auth);

    public void insert(AuthVO auth);
}
