package kr.co.sist.mkjg.protector.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.mkjg.protector.dao.CustomCenterDAO;
import kr.co.sist.mkjg.protector.domain.AskList;
import kr.co.sist.mkjg.protector.domain.ReportList;
import kr.co.sist.mkjg.protector.util.Paging;
import kr.co.sist.mkjg.protector.vo.SelCntVO;

@Component
public class CustomCenterService {
	@Autowired(required=false)  
	private CustomCenterDAO cc_dao;
	
	private int pageScale = 10;
	private int pagenumber = 5;
	private int currentPage = 1;
	
	//����¡ �̱������� ���� ���
	private Paging p = Paging.getInstance();
	
	public List<AskList> searchListAsk(SelCntVO scvo) throws SQLException{
		List<AskList> list=null;
		list=cc_dao.selectAsk(scvo);
		return list;
	}
	
	public List<ReportList> searchListReport(SelCntVO scvo) throws SQLException{
		List<ReportList> list=null;
		list=cc_dao.selectReport(scvo);
		return list;
	}
	
	
	/**
	 * �˻� ���Ե� ��ü �Խù��� �� 
	 * @param scvo
	 * @return
	 * @throws SQLException
	 */
	public int searchListCnt(SelCntVO scvo) throws SQLException{
		int cnt=0;
		cnt=cc_dao.rowCnt(scvo);
		return cnt;
	}
	
	/**
	 * ���۹�ȣ�� ���ϴ� ��
	 * @param currentPage
	 * @return ���۹�ȣ
	 */
	public int startNum(int currentPage) {
		this.currentPage = currentPage;
		int startNum = currentPage * pageScale - pageScale + 1;
		return startNum;
	}//end startNum
	
	/**
	 * ����ȣ�� ���ϴ� ��
	 * @param startNum
	 * @return ����ȣ
	 */
	public int endNum(int startNum) {
		int endNum = startNum + pageScale -1;
		return endNum;
	}
	
	/**
	 * ��ü �������� ���ϴ� ��
	 * @param totalCnt
	 * @return ��ü ������
	 */
	public int totalPage(int totalCnt) {
		int totalPage = totalCnt / pageScale;
		
		if (totalCnt % pageScale != 0) {
			totalPage++;
		}//end if
		return totalPage;
	}
	
	/**
	 * ������������ ���ϴ� ��
	 * @param currentPage
	 * @return ����������
	 */
	public int startPage(int currentPage) {
		int startPage = ((currentPage - 1) / pagenumber) * pagenumber + 1;
		return startPage;
	}
	
	/**
	 * �� �������� ���ϴ� ��
	 * @param startPage
	 * @return �� ������
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
	
}
