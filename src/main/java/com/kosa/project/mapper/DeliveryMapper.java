package com.kosa.project.mapper;

import java.util.List;

import com.kosa.project.domain.DeliveryVO;

public interface DeliveryMapper {
	
	public int insert(DeliveryVO vo);
	
	public DeliveryVO read(int idx);
	
	public int delete(int idx);
	
	public int update(DeliveryVO vo);

	public List<DeliveryVO> getList();
}
