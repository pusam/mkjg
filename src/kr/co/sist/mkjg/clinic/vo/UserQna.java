package kr.co.sist.mkjg.clinic.vo;

import lombok.Data;

@Data
public class UserQna {
	private String bln, status, search;
	private int startNum, endNum; 
}
