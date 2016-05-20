package com.pknu.comment.dto;

import java.sql.Timestamp;

public class CommentDto {

	private int commentNum;
	private String id;
	private String commentContent;
	private Timestamp commentDate;
	private int weiver_no;
	private int commentCount;
	
	public int getWeiver_no() {
		return weiver_no;
	}
	public void setWeiver_no(int weiver_no) {
		this.weiver_no = weiver_no;
	}
	
	public int getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}
	public int getCommentNum() {
		return commentNum;
	}
	public void setCommentNum(int commentNum) {
		this.commentNum = commentNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public Timestamp getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(Timestamp commentDate) {
		this.commentDate = commentDate;
	}
	
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((commentContent == null) ? 0 : commentContent.hashCode());
		result = prime * result + commentCount;
		result = prime * result + ((commentDate == null) ? 0 : commentDate.hashCode());
		result = prime * result + commentNum;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + weiver_no;
		return result;
	}
	
	
	
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CommentDto other = (CommentDto) obj;
		if (commentContent == null) {
			if (other.commentContent != null)
				return false;
		} else if (!commentContent.equals(other.commentContent))
			return false;
		if (commentCount != other.commentCount)
			return false;
		if (commentDate == null) {
			if (other.commentDate != null)
				return false;
		} else if (!commentDate.equals(other.commentDate))
			return false;
		if (commentNum != other.commentNum)
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (weiver_no != other.weiver_no)
			return false;
		return true;
	}
	
	@Override
	public String toString() {
		return "CommentDto [commentNum=" + commentNum + ", id=" + id + ", commentContent=" + commentContent
				+ ", commentDate=" + commentDate + ", weiver_no=" + weiver_no + ", commentCount=" + commentCount + "]";
	}



	
	
	
}
