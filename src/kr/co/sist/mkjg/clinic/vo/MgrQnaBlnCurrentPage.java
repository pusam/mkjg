package kr.co.sist.mkjg.clinic.vo;

import lombok.Data;

@Data
public class MgrQnaBlnCurrentPage {
	private String cId, status, search;
	private int currentPage;
}
