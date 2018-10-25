package kr.co.sist.mkjg.clinic.domain;

import lombok.Data;

@Data
public class UserQnaAnswerReadOnly {
	private String qtitle, qtext, pid, qdate, qtype, reply, rdate, rid;
}
