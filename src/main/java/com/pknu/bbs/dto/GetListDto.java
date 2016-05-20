package com.pknu.bbs.dto;

public class GetListDto {
	private int startRow;
	private int endRow;
	private String tableName;
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getEndRow() {
		return endRow;
	}
	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	@Override
	public String toString() {
		return "GetPageDto [startRow=" + startRow + ", endRow=" + endRow + ", tableName=" + tableName + "]";
	}
	
	

}
