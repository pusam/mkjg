package kr.co.sist.mkjg.protector.domain;

import lombok.Data;

@Data
public class NoticeRead {
	private int reciever;
	private String ntitle, ntext, reg_date, not_seq;
}//class
