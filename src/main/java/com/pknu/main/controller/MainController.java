package com.pknu.main.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import com.pknu.main.dto.CategoryDto;
import com.pknu.main.service.MainService;

@Controller
public class MainController {
	@Autowired
	private MainService mainService;
	
	ModelAndView mav = new ModelAndView();
	
	@RequestMapping("/")
	public ModelAndView main() {
		
		ArrayList<CategoryDto> getCategories = new ArrayList<>(); 
		getCategories = mainService.getCategory();
		mav.addObject("category", getCategories);
		for(CategoryDto i: getCategories){
			System.out.println(i.getCategory_realName());
		}
		mav.setViewName("main");
		return mav;
	}
	
	@RequestMapping("/main.main")
	public ModelAndView loginMain() {
		ArrayList<CategoryDto> getCategoryes = new ArrayList<>(); 
		getCategoryes = mainService.getCategory();
		mav.addObject("category", getCategoryes);
		mav.setViewName("main");
		return mav;
	}
	@RequestMapping(value="/search.main")
	public ModelAndView search(String target) {
//		System.out.println("POST POST POST POST POST ");
		ArrayList<CategoryDto> getCategories = new ArrayList<>(); 
		getCategories = mainService.getCategory();
		return mainService.searchAll(target, getCategories);
	}
	
//	@RequestMapping(value="/search.main", method = RequestMethod.GET)
//	public ModelAndView afterSearch() {
//		System.out.println("GET GET GET GET");
//		mav.setViewName("search");
//		return mav;
//	}
}
