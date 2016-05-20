package com.pknu.main.service;

import java.util.ArrayList;

import org.springframework.web.servlet.ModelAndView;

import com.pknu.main.dto.CategoryDto;

public interface MainService {

	ModelAndView searchAll(String target, ArrayList<CategoryDto> getCategories);

	ArrayList<CategoryDto> getCategory();

}
