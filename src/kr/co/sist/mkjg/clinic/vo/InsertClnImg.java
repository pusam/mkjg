package kr.co.sist.mkjg.clinic.vo;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class InsertClnImg {
	private String bln, path, reg_id, reg_ip;
	private List<String> images = new ArrayList<>();
}
