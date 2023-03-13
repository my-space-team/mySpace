package com.kosa.project.mapper;

import java.util.List;

import com.kosa.project.domain.DeliveryVO;

public interface DeliveryMapper {
	
	public void insert(DeliveryVO delivery);
	
	public DeliveryVO read(int idx);
	
	public int delete(int idx);
	
	public int update(DeliveryVO vo);

	public List<DeliveryVO> getList();
}
