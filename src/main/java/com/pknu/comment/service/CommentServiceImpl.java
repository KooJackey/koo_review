package com.pknu.comment.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pknu.comment.dao.CommentDao;
import com.pknu.comment.dto.CommentDto;

@Service
public class CommentServiceImpl implements CommentService{
	
	//CommentDao�� DI�ް�~
	@Autowired
	CommentDao commentDao;
	
	
	@Override
	public List<CommentDto> commentWrite(CommentDto comment) {
		commentDao.commentWrite(comment);
		return commentRead(comment.getWeiver_no(), 10);
	}
	

	@Override
	public List<CommentDto> commentRead(int weiver_no, int commentRow) {
		HashMap<String, Integer> hm = new HashMap<>();
		hm.put("weiver_no", weiver_no);
		hm.put("commentRow", commentRow);
		return commentDao.commentRead(hm);
	}

}
