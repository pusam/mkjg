package kr.co.sist.mkjg.clinic.domain;

import lombok.Data;

@Data
public class RegPageCnt {
	private int startNum, endNum, totalPage, totalCnt;
}
