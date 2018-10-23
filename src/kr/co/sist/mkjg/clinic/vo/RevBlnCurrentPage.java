package kr.co.sist.mkjg.clinic.vo;

import lombok.Data;

@Data
public class RevBlnCurrentPage {
	private String bln, status, search;
	private int currentPage;
}
