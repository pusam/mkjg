package kr.co.sist.mkjg.protector.vo;

public class SelCntVO {
	private String fieldName,keyword,pid;
	private int startNum, endNum,currentPage;
	
	public SelCntVO() {
		super();
	}

	public SelCntVO(String pid) {
		super();
		this.pid = pid;
	}

	public SelCntVO(int currentPage) {
		super();
		this.currentPage = currentPage;
	}

	public SelCntVO(String fieldName, String keyword, int startNum, int endNum) {
		super();
		this.fieldName = fieldName;
		this.keyword = keyword;
		this.startNum = startNum;
		this.endNum = endNum;
	}

	public String getFieldName() {
		return fieldName;
	}

	public void setFieldName(String fieldName) {
		this.fieldName = fieldName;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public int getStartNum() {
		return startNum;
	}

	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}

	public int getEndNum() {
		return endNum;
	}

	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}
	
	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	@Override
	public String toString() {
		return "SelCntVO [fieldName=" + fieldName + ", keyword=" + keyword + ", pid=" + pid 
				+ ", startNum=" + startNum + ", endNum=" + endNum + "]";
	}
}
