package com.pknu.main.dto;

public class CategoryDto {
	private String category_no;	
	private String category_name;
	private String tableName;
	private String category_realName;
	
	
	
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public String getCategory_realName() {
		return category_realName;
	}
	public void setCategory_realName(String category_realName) {
		this.category_realName = category_realName;
	}
	public String getCategory_no() {
		return category_no;
	}
	public void setCategory_no(String category_no) {
		this.category_no = category_no;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	@Override
	public String toString() {
		return "CategoryDto [category_no=" + category_no + ", category_name=" + category_name + "]";
	}
}
