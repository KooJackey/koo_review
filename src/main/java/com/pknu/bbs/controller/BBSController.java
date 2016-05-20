package com.pknu.bbs.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.pknu.bbs.dto.BBSDto;
import com.pknu.bbs.service.BBSService;
import com.pknu.main.dto.CategoryDto;

@Controller
public class BBSController {
	@Autowired
	private BBSService bbsService;
	
	ArrayList<CategoryDto> getCategories = new ArrayList<>(); 
	
	@RequestMapping(value="/{whatPage}.bbs")
	public ModelAndView listView(@RequestParam("pageNum") int pageNum, @PathVariable String whatPage, String target) {
		
		getCategories = bbsService.getCategory();
		
		return bbsService.list(bbsService.getCategoryNum(whatPage), pageNum, whatPage, getCategories, target);//list로 tableName이랑 pageNum전달
	}

	// 글 읽기
	@RequestMapping(value="/read_car.bbs")
	public ModelAndView read_car(HttpServletRequest request, String weiver_no, int pageNum, int fileStatus){
		//System.out.println("controller 에서의 weiver no : "+weiver_no);
		String weiver="WEIVER_CAR";
		getCategories = bbsService.getCategory();
		return bbsService.readCar(weiver_no, weiver, pageNum, getCategories, fileStatus);
	}
	//글쓰기(writeForm)
	@Transactional
	@RequestMapping("/writeForm.bbs")
	public String writeForm(HttpSession session, HttpServletResponse res){
		return "writeForm";
	}
	//글쓰기(write)
	@RequestMapping(value="/write.bbs", method = RequestMethod.POST)
	public String write(@ModelAttribute("weiver_content") String content,
			@ModelAttribute("weiver_title") String title, HttpSession session){
		BBSDto article = new BBSDto();
		//System.out.println(weiver_content);
		
		System.out.println((String)session.getAttribute("id")+" 님께서 새글을 쓰셨습니다.");
		
		article.setWeiver_id((String)session.getAttribute("id"));
		article.setWeiver_title(title);
		article.setWeiver_content(content);
		return bbsService.insertArticle(article, session);
	}
	//글 삭제
	@RequestMapping("/delete.bbs")
	public String deleteArticle(String weiver_no, int pageNum){
		return bbsService.deleteArticle(weiver_no, pageNum);
	}
	//글 수정
	@RequestMapping("/updateForm.bbs")
	public ModelAndView getUpdateArticle(String weiver_no, int pageNum, int weiver_file){
		return bbsService.updateForm(weiver_no, pageNum, weiver_file);
	}
	
	@RequestMapping("/update.bbs")
	public String updateArticle(BBSDto article, @ModelAttribute("pageNum") String pageNum){
		System.out.println(article);
		return bbsService.updateArticle(article);		
	}
	
	
}
