package kr.co.sist.mkjg.protector.vo;

import lombok.Data;

@Data
public class BlackVO {
	String business, wid;
	
	public BlackVO() {
		super();
	}
	
	public BlackVO(String business, String wid) {
		super();
		this.business = business;
		this.wid = wid;
	}
}
