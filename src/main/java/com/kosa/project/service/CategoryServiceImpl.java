package com.kosa.project.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kosa.project.domain.CategoryVO;
import com.kosa.project.mapper.CategoryMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class CategoryServiceImpl implements CategoryService {

	private CategoryMapper categoryMapper;

	@Override
	public List<CategoryVO> getCategory() {
		return categoryMapper.getCategory();
	}

}
