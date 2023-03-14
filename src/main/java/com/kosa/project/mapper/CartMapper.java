package com.kosa.project.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import com.kosa.project.domain.CartProductVO;
import com.kosa.project.domain.CartVO;
import com.kosa.project.domain.MemberVO;

public interface CartMapper {
	
	
	public List<CartVO> getList(int idx);
	
	public void createCart(CartVO cart);
	
	public int delete(int idx);
	
	public int update(CartVO cart);

}
