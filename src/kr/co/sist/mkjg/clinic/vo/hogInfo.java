package kr.co.sist.mkjg.clinic.vo;

import lombok.Data;

public class hogInfo {

	private String pid, pname, pet_name, tel, wdate, cl_text, msg, cl_seq;

	public hogInfo() {
		super();
	}

	public hogInfo(String pid, String pname, String pet_name, String tel, String wdate, String cl_text, String msg,
			String cl_seq) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.pet_name = pet_name;
		this.tel = tel;
		this.wdate = wdate;
		this.cl_text = cl_text;
		this.msg = msg;
		this.cl_seq = cl_seq;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPet_name() {
		return pet_name;
	}

	public void setPet_name(String pet_name) {
		this.pet_name = pet_name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	public String getCl_text() {
		return cl_text;
	}

	public void setCl_text(String cl_text) {
		this.cl_text = cl_text;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getCl_seq() {
		return cl_seq;
	}

	public void setCl_seq(String cl_seq) {
		this.cl_seq = cl_seq;
	}

}
