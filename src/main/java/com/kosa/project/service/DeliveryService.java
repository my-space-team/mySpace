package com.kosa.project.service;

import java.util.List;

import com.kosa.project.domain.DeliveryVO;

public interface DeliveryService {
	public int insert(DeliveryVO vo);
	
	public DeliveryVO read(int idx);
	
	public int delete(int idx);
	
	public int update(DeliveryVO vo);

	public List<DeliveryVO> getList();
}
