package com.pknu.bbs.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.pknu.bbs.dto.BBSDto;
import com.pknu.main.dto.CategoryDto;

public interface BBSService {
	// 게시판
	public ModelAndView list(String tableName, int pageNum, String whatPage, ArrayList<CategoryDto> getCategories, String target);
	
	// 글 읽기
	public ModelAndView readCar(String weiver_no, String weiver, int pageNum, ArrayList<CategoryDto> getCategories, int fileStatus);
	// 글 쓰기
	public String insertArticle(BBSDto article, HttpSession session);
	// 글 삭제
	public String deleteArticle(String weiver_no, int pageNum);
	//글 수정1
	public ModelAndView updateForm(String weiver_no, int pageNum, int weiver_file);
	//글 수정2
	public String updateArticle(BBSDto article);
	//카테고리
	public String getCategoryNum(String whatPage);

	public ArrayList<CategoryDto> getCategory();
}
