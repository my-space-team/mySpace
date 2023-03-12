package com.kosa.project.service;

import java.util.Map;

import org.springframework.stereotype.Service;

import com.kosa.project.domain.DeliveryVO;
import com.kosa.project.mapper.DeliveryMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class DeliveryServiceImpl implements DeliveryService{
	private DeliveryMapper deliveryMapper;


}
