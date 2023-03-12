package com.kosa.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.kosa.project.domain.DeliveryVO;
import com.kosa.project.mapper.DeliveryMapper;

public class DeliveryServiceImpl implements DeliveryService{

	@Autowired
	private DeliveryMapper mapper;
	
	@Override
	public int insert(DeliveryVO vo) {
		return mapper.insert(vo);
	}

	@Override
	public DeliveryVO read(int idx) {
		return mapper.read(idx);
	}

	@Override
	public int delete(int idx) {
		return mapper.delete(idx);
	}

	@Override
	public int update(DeliveryVO vo) {
		return mapper.update(vo);
	}

	@Override
	public List<DeliveryVO> getList() {
		return mapper.getList();
	}

}
