package kr.co.sist.mkjg.clinic.domain;

import lombok.Data;

public class WeekRegDayCnt {
	private String day;
	private int cnt;
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
}
