package kr.co.sist.mkjg.clinic.vo;

import lombok.Data;

@Data
public class UserQnaBlnCurrentPage {
	private String bln, status, search;
	private int currentPage;
	
}
