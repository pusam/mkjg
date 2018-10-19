package kr.co.sist.mkjg.protector.vo;

import lombok.Data;

@Data
public class IdVO {
	private String pid;

	@Override
	public String toString() {
		return "IdVO [pid=" + pid + "]";
	}
}
