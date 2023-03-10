package com.kosa.project.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import com.kosa.project.domain.CartProductVO;

public interface CartMapper {
	
	@Select("select * from cart_product where idx > 0")
	public List<CartProductVO> getList();

}
