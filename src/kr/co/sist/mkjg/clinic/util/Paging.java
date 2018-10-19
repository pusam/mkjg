package kr.co.sist.mkjg.clinic.util;

public class Paging {
	
	private int pageScale = 10;
	private int pagenumber = 5;
	private int currentPage = 1;
	
    private static Paging p;
	
    public static Paging getInstance(){
        if( p == null ){
        p = new Paging();
        }//end if
        return p;
    }
	
	public Paging() {
		
	}//Paging
	
	/**
	 * 시작번호를 구하는 일
	 * @param currentPage
	 * @return 시작번호
	 */
	public int startNum(int currentPage) {
		this.currentPage = currentPage;
		int startNum = currentPage * pageScale - pageScale + 1;
		return startNum;
	}//end startNum
	
	/**
	 * 끝번호를 구하는 일
	 * @param startNum
	 * @return 끝번호
	 */
	public int endNum(int startNum) {
		int endNum = startNum + pageScale -1;
		return endNum;
	}
	
	/**
	 * 전체 페이지를 구하는 일
	 * @param totalCnt
	 * @return 전체 페이지
	 */
	public int totalPage(int totalCnt) {
		int totalPage = totalCnt / pageScale;
		
		if (totalCnt % pageScale != 0) {
			totalPage++;
		}//end if
		return totalPage;
	}
	
	/**
	 * 시작페이지를 구하는 일
	 * @param currentPage
	 * @return 시작페이지
	 */
	public int startPage(int currentPage) {
		int startPage = ((currentPage - 1) / pagenumber) * pagenumber + 1;
		return startPage;
	}
	
	/**
	 * 끝 페이지를 구하는 일
	 * @param startPage
	 * @return 끝 페이지
	 */
	public int endPage(int startPage, int totalPage) {
		int endPage = (((startPage - 1) + pagenumber) / pagenumber) * pagenumber;
		
		if (totalPage <= endPage){
			endPage = totalPage;
		}//end if
		
		return endPage; 
	}//end endPage
	
	public String indexList(int startPage, int endPage, int totalPage, int currentPage, String url) {
		int curpage = 0;
		StringBuilder strList=new StringBuilder();
		
		if ( currentPage > pagenumber) {
			curpage = startPage - 1; 
			strList.append("<li><a href='").append(url).append("?currentPage=").append(curpage).append("'>&lt;&lt;</a></li>");
		} 
		curpage = startPage;

		while (curpage <= endPage){

			if (curpage == currentPage) {
				strList.append("<li><a href='").append(url).append("?currentPage=").append(currentPage).append("'>").append(currentPage).append("</a></li>");
			} else {
				strList.append("<li><a href='").append(url).append("?currentPage=").append(curpage).append("'>").append(curpage).append("</a></li>");
			}//end else
			curpage++;
		}//end while
		
		if ( totalPage > endPage) {
			curpage = endPage + 1;
			strList.append("<li><a href='").append(url).append("?currentPage=").append(curpage).append("'>&gt;&gt;</a></li>");
		}
		
			return strList.toString();	
		
	}
	
}//class
