package kr.co.sist.mkjg.protector.vo;

import lombok.Data;

@Data
public class ClnInfo {
	private String bln, cln_name, director, tel, email, open_time, close_time, intro,
	sido, sigungu, emd, addr_detail, night_yn, cut_yn, hstl_yn;
	private int subject;
}
