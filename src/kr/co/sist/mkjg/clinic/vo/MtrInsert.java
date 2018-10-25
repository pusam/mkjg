package kr.co.sist.mkjg.clinic.vo;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class MtrInsert {
	private String bseq, mid, mip, reply, bln, path, mseq;
	private List<String> images = new ArrayList<>();
}
