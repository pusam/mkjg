package kr.co.sist.mkjg.protector.domain;

import lombok.Data;

@Data
public class NightClnList {
	private String bln, cln_name, director, tel, email, open_time, close_time, 
	sido, sigungu, emd, addr_detail, night_yn, intro, cut_yn, hstl_yn;
	private int subject;
}
