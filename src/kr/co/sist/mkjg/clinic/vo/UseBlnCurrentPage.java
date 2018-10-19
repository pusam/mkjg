package kr.co.sist.mkjg.clinic.vo;

import lombok.Data;

public class UseBlnCurrentPage {
	private String bln;
	private int currentPage;
	
	public String getBln() {
		return bln;
	}
	public void setBln(String bln) {
		this.bln = bln;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	
}
