package kr.co.sist.mkjg.clinic.vo;

public class EmpMember {

	private String eid, pw, ename, birthday, tel, email, post, addr, addr_detail, bln;

	public EmpMember() {
		super();
	}

	public EmpMember(String eid, String pw, String ename, String birthday, String tel, String email, String post,
			String addr, String addr_detail, String bln) {
		super();
		this.eid = eid;
		this.pw = pw;
		this.ename = ename;
		this.birthday = birthday;
		this.tel = tel;
		this.email = email;
		this.post = post;
		this.addr = addr;
		this.addr_detail = addr_detail;
		this.bln = bln;
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

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
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

	public String getBln() {
		return bln;
	}

	public void setBln(String bln) {
		this.bln = bln;
	}

	@Override
	public String toString() {
		return "insertEmp [eid=" + eid + ", pw=" + pw + ", ename=" + ename + ", birthday=" + birthday + ", tel=" + tel
				+ ", email=" + email + ", post=" + post + ", addr=" + addr + ", addr_detail=" + addr_detail + ", bln="
				+ bln + "]";
	}

}
