package kr.co.sist.mkjg.protector.domain;

import java.util.Date;

import lombok.Data;

@Data
public class AskClinic {
	private String qTitle, rStatus;
	private Date qDate; 
}
