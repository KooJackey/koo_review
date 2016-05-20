package com.pknu.bbs.dto;

public class BBSDto {
	private int weiver_no;
	private String weiver_id;	
	private String weiver_title;	
	private String weiver_content;	
	private String weiver_writedate;	
	private String weiver_good;	
	private String weiver_bad;	
	private String weiver_hit;	
	private String weiver_file;
	
	public int getWeiver_no() {
		return weiver_no;
	}
	public void setWeiver_no(int weiver_no) {
		this.weiver_no = weiver_no;
	}
	public String getWeiver_id() {
		return weiver_id;
	}
	public void setWeiver_id(String weiver_id) {
		this.weiver_id = weiver_id;
	}
	public String getWeiver_title() {
		return weiver_title;
	}
	public void setWeiver_title(String weiver_title) {
		this.weiver_title = weiver_title;
	}
	public String getWeiver_content() {
		return weiver_content;
	}
	public void setWeiver_content(String weiver_content) {
		this.weiver_content = weiver_content;
	}
	public String getWeiver_writedate() {
		return weiver_writedate;
	}
	public void setWeiver_writedate(String weiver_writedate) {
		this.weiver_writedate = weiver_writedate;
	}
	public String getWeiver_good() {
		return weiver_good;
	}
	public void setWeiver_good(String weiver_good) {
		this.weiver_good = weiver_good;
	}
	public String getWeiver_bad() {
		return weiver_bad;
	}
	public void setWeiver_bad(String weiver_bad) {
		this.weiver_bad = weiver_bad;
	}
	public String getWeiver_hit() {
		return weiver_hit;
	}
	public void setWeiver_hit(String weiver_hit) {
		this.weiver_hit = weiver_hit;
	}
	public String getWeiver_file() {
		return weiver_file;
	}
	public void setWeiver_file(String weiver_file) {
		this.weiver_file = weiver_file;
	}
	@Override
	public String toString() {
		return "BBSDto [weiver_no=" + weiver_no + ", weiver_id=" + weiver_id + ", weiver_title=" + weiver_title
				+ ", weiver_content=" + weiver_content + ", weiver_writedate=" + weiver_writedate + ", weiver_good="
				+ weiver_good + ", weiver_bad=" + weiver_bad + ", weiver_hit=" + weiver_hit + ", weiver_file="
				+ weiver_file + "]";
	}	
	
	
}
