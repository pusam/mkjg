package kr.co.sist.mkjg.clinic.vo;

public class EmpModi {

	private String eid, pw, tel, email, post, addr, addr_detail;

	public EmpModi() {
		super();
	}

	public EmpModi(String eid, String pw, String tel, String email, String post, String addr, String addr_detail) {
		super();
		this.eid = eid;
		this.pw = pw;
		this.tel = tel;
		this.email = email;
		this.post = post;
		this.addr = addr;
		this.addr_detail = addr_detail;
	}

	public String getEid() {
		return eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getAddr_detail() {
		return addr_detail;
	}

	public void setAddr_detail(String addr_detail) {
		this.addr_detail = addr_detail;
	}

	@Override
	public String toString() {
		return "EmpModi [eid=" + eid + ", pw=" + pw + ", tel=" + tel + ", email=" + email + ", post=" + post + ", addr="
				+ addr + ", addr_detail=" + addr_detail + "]";
	}

}
