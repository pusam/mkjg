package kr.co.sist.mkjg.clinic.domain;

import lombok.Data;

@Data
public class UserQnaView {
	private String qtitle, qtext, pid, qdate, qtype, qgc_seq;
}
