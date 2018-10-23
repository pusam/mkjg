package kr.co.sist.mkjg.clinic.vo;

import lombok.Data;

@Data
public class MgrQna {
	private String cId, status, search;
	private int startNum, endNum; 
}
