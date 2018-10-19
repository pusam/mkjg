package kr.co.sist.mkjg.clinic.domain;

import lombok.Data;

@Data
public class UseHistoryPageNumDomain {
	private int startNum, endNum, totalPage, startPage, endPage; 
}
