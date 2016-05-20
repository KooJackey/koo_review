package com.pknu.member.dao;


import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.pknu.main.dto.CategoryDto;
import com.pknu.member.dto.MemberDto;

@Repository
public interface MemberDao {

	String selectPassword(String id);
	
	
	void insertMember(MemberDto member);
	
	
	String selectId(String inputId);
	MemberDto userProfile(String id);
	void profileUpdate(MemberDto userInfo);
	
	public ArrayList<CategoryDto> getCategory();

}
