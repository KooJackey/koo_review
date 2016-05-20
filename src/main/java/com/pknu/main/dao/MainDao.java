package com.pknu.main.dao;


import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.pknu.bbs.dto.BBSDto;
import com.pknu.main.dto.CategoryDto;

@Repository
public interface MainDao {

	public List<BBSDto> searchTitle(String target);

	public ArrayList<CategoryDto> getCategory();


}
