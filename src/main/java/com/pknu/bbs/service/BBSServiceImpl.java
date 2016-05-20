package com.pknu.bbs.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.annotation.Resource;
import javax.inject.Inject;
import javax.inject.Named;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import com.pknu.bbs.dao.BBSDao;
import com.pknu.bbs.dto.BBSDto;
import com.pknu.bbs.dto.FileDto;
import com.pknu.bbs.dto.GetListDto;
import com.pknu.bbs.util.FileSaveHelper;
import com.pknu.bbs.util.Page;
import com.pknu.main.dto.CategoryDto;


@Service
public class BBSServiceImpl implements BBSService{
	@Inject
	BBSDao bbsDao;
	@Inject
	FileSaveHelper fileSaveHelper;
	@Resource
	Page page;
	@Resource(name = "saveDir")
	String saveDir;
	
	ModelAndView mav;
	List<BBSDto> articleList;
	
	@Override
	public String getCategoryNum(String whatPage) {
		return bbsDao.getTableName(whatPage);
	}
	
	// 게시판
	@Override
	public ModelAndView list(String tableName, int pageNum, String whatPage, ArrayList<CategoryDto> getCategories, String target){
		
		System.out.println(tableName);
		int pageSize=10;
		int pageBlock=10;
		mav = new ModelAndView();
		GetListDto getListDto = new GetListDto();
		
		int totalCount = bbsDao.getArticleCount();
		page.paging(pageNum, totalCount, pageSize, pageBlock);
				
		getListDto.setStartRow(page.getStartRow());
		getListDto.setEndRow(page.getEndRow());
		getListDto.setTableName(tableName);

//		if(target.equals(null)){
			articleList=bbsDao.getArticles(getListDto);
//		}else{
//			articleList=bbsDao.getTarget(getListDto);
//		}
		mav.addObject("totalCount",totalCount);
		mav.addObject("articleList",articleList);
		mav.addObject("pageNum", pageNum);
		mav.addObject("pageCode", page.getSb().toString());
		mav.addObject("category", getCategories);
		mav.setViewName(whatPage);
		return mav;
	}

	// 글 읽기
	@Override
	public ModelAndView readCar(String weiver_no, String weiver, int pageNum, ArrayList<CategoryDto> getCategories, int fileStatus) {
		mav = new ModelAndView();
		BBSDto article=null;
		List<FileDto> fileList = null;
		
		
		
		System.out.println("weiver ->>>"+weiver);
		
		HashMap<String, String> hm = new HashMap<>();
		hm.put("weiver_no", weiver_no);
		hm.put("weiverName", weiver);
		System.out.println(hm.get("weiverName"));
		if(fileStatus==1){
			fileList = bbsDao.getFiles(weiver_no);
			mav.addObject("fileList", fileList);
		}
		bbsDao.hitUp(hm);	// 조회수 1 증가
		article=bbsDao.readCar(weiver_no);	// 읽을 글 select
		System.out.println("$$$$$$$$$$$$$$$$$$$ 글 select 완료 : "+article.getWeiver_content());
		
		mav.addObject("article", article);
		mav.addObject("pageNum", pageNum);
		mav.addObject("category", getCategories);
		mav.setViewName("readCar");
		
		return mav;
	}
	//글쓰기
	@Override
	public String insertArticle(BBSDto article, HttpSession session) {
		
		article.setWeiver_id((String)session.getAttribute("id"));
		bbsDao.insertArticle(article);
		
		return "redirect:/car.bbs?pageNum=1";
	}
	
	private void commonsFileUpload(List<MultipartFile> mfile, int articleNum) {
		FileDto fileDto= null;

		for(MultipartFile uploadFile : mfile){
			if(!uploadFile.isEmpty()){
				String storedFname = fileSaveHelper.save(uploadFile);

				fileDto = new FileDto();
				fileDto.setOrginFname(uploadFile.getOriginalFilename());
				fileDto.setStoredFname(storedFname);
				fileDto.setFileLength(uploadFile.getSize());
				fileDto.setArticleNum(articleNum);

				bbsDao.insertFile(fileDto);
			}
		}
	}
	
	//글삭제
	@Override
	public String deleteArticle(String weiver_no, int pageNum) {
		//deleteFile(articleNum);
		bbsDao.deleteArticle(weiver_no);

		return "redirect:/car.bbs?pageNum="+pageNum;
	}

	@Override
	public ModelAndView updateForm(String weiver_no, int pageNum, int weiver_file) {
		mav = new ModelAndView();
		//List<FileDto> fileList = null;
		BBSDto article = null;

		article = bbsDao.getUpdateArticle(weiver_no);

		if(weiver_file==1){
			//fileList = bbsDao.getFiles(articleNum);
			//mav.addObject("fileList", fileList);
		}

		mav.addObject("article", article);
		mav.addObject("pageNum", pageNum);
		mav.addObject("weiver_no", weiver_no);
		mav.addObject("weiver_file", weiver_file);

		mav.setViewName("updateForm");

		return mav;	
	}

	@Override
	public String updateArticle(BBSDto article) {
		
		bbsDao.updateArticle(article);
		
		return "redirect:/car.bbs?pageNum=1";
	}

	
	@Override
	public ArrayList<CategoryDto> getCategory() {
		return bbsDao.getCategory();
	}


	
}
