package kr.co.sist.mkjg.protector.vo;

import lombok.Data;

@Data
public class ListVO {
	private String fieldName,keyword;
	private int startNum, endNum;
	
	public ListVO(String fieldName, String keyword, int startNum, int endNum) {
		super();
		this.fieldName = fieldName;
		this.keyword = keyword;
		this.startNum = startNum;
		this.endNum = endNum;
	}
}
