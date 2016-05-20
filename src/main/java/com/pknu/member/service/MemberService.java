package com.pknu.member.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import com.pknu.main.dto.CategoryDto;
import com.pknu.member.dto.MemberDto;

public interface MemberService {

	int loginCheck(String id, String password);
	void insertMember(MemberDto member);
	void joinCheckId(String inputId, HttpServletResponse resp);
	ModelAndView userProfile(String id, ArrayList<CategoryDto> getCategories);
	void profileUpdate(MemberDto userInfo);
	ArrayList<CategoryDto> getCategory();

}
