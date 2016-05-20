package com.pknu.member.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.pknu.main.dto.CategoryDto;
import com.pknu.member.dao.MemberDao;
import com.pknu.member.dto.MemberDto;
import com.pknu.member.util.LoginStatus;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDao memberDao;
	MemberDto memberDto;
	ModelAndView mav;
	
	@Override
	public int loginCheck(String id, String password) {
		int result = 0;
		String DBPassword = memberDao.selectPassword(id);
		
		if(DBPassword == null){
			result = LoginStatus.invalid_id;
		}
		else if(DBPassword.equals(password)){
			result = LoginStatus.ok;
		}
		else{
			result = LoginStatus.invalid_password;
		}
		return result;
	}

	
	
	@Override
	public void insertMember(MemberDto member) {
		memberDao.insertMember(member);
		
	}

	@Override
	public void joinCheckId(String inputId, HttpServletResponse resp) {
		HashMap<String, String> hm = new HashMap<>();
		
		String DBId = memberDao.selectId(inputId);
		
		if(DBId != null || inputId==""){
			hm.put("idUseStatus", "2");
			
		}else{
			hm.put("idUseStatus", "1");
		}
		
		JSONObject jb = new JSONObject(hm);
		
		PrintWriter pw;
		try {
			pw = resp.getWriter();
			pw.println(jb.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
	}

	// 프로필도 보고 수정도 하러가기
	@Override	
	public ModelAndView userProfile(String id,ArrayList<CategoryDto> getCategories) {
		mav=new ModelAndView();
		
		
		
		
		memberDto = memberDao.userProfile(id);
		mav.addObject("userInfo", memberDto);
		mav.addObject("category", getCategories);
		mav.setViewName("userProfile");
		return mav;
	}

	
	// 프로필 수정
	@Override
	public void profileUpdate(MemberDto userInfo) {
		memberDao.profileUpdate(userInfo);
	}
	
	@Override
	public ArrayList<CategoryDto> getCategory() {
		return memberDao.getCategory();
	}


}
