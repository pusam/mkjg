package kr.co.sist.mkjg.clinic.service;

import java.sql.SQLException;
import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.mkjg.clinic.dao.ClinicDAO;
import kr.co.sist.mkjg.clinic.domain.MgrQnaList;
import kr.co.sist.mkjg.clinic.domain.MtrList;
import kr.co.sist.mkjg.clinic.domain.NoticeTitle;
import kr.co.sist.mkjg.clinic.domain.RevList;
import kr.co.sist.mkjg.clinic.domain.TodayReg;
import kr.co.sist.mkjg.clinic.domain.UseHistoryList;
import kr.co.sist.mkjg.clinic.domain.UserQnaList;
import kr.co.sist.mkjg.clinic.domain.WeekQGCDayCnt;
import kr.co.sist.mkjg.clinic.domain.WeekRegDayCnt;
import kr.co.sist.mkjg.clinic.util.Paging;
import kr.co.sist.mkjg.clinic.vo.AprvlBseq;
import kr.co.sist.mkjg.clinic.vo.CeoAddJoin;
import kr.co.sist.mkjg.clinic.vo.ClinicIdCheck;
import kr.co.sist.mkjg.clinic.vo.ClinicInsert;
import kr.co.sist.mkjg.clinic.vo.ClnRegData;
import kr.co.sist.mkjg.clinic.vo.IdPw;
import kr.co.sist.mkjg.clinic.vo.MgrQna;
import kr.co.sist.mkjg.clinic.vo.MgrQnaBlnCurrentPage;
import kr.co.sist.mkjg.clinic.vo.MtrBlnCurrentPage;
import kr.co.sist.mkjg.clinic.vo.MtrNum;
import kr.co.sist.mkjg.clinic.vo.RevBlnCurrentPage;
import kr.co.sist.mkjg.clinic.vo.RevPage;
import kr.co.sist.mkjg.clinic.vo.UseBlnCurrentPage;
import kr.co.sist.mkjg.clinic.vo.UseHistory;
import kr.co.sist.mkjg.clinic.vo.UserQna;
import kr.co.sist.mkjg.clinic.vo.UserQnaBlnCurrentPage;

@Component
public class ClinicService {
	
	@Autowired
	private ClinicDAO c_dao;
	
	//페이징 싱글톤으로 만들어서 깔고
	private Paging p = Paging.getInstance();
	
	public List<NoticeTitle> selectNoticeTitle() throws SQLException{
		List<NoticeTitle> list = null;
		
		list = c_dao.selectNoticeTitle();
		
		return list;
	}//selectNoticeTitle
	
	public List<TodayReg> selectTodayReg(String bln) throws SQLException{
		List<TodayReg> list = null;
		
		list = c_dao.selectTodayReg(bln);
		
		return list;
	}//selectNoticeTitle
	
	public String selectBln(ClinicIdCheck cic) throws SQLException{
		String bln = null;
		if("ceo".equals(cic.getCheck())) {
			bln = c_dao.selectCeoBln(cic.getCId());
		}//end if
		
		if("emp".equals(cic.getCheck())) {
			bln = c_dao.selectEmpBln(cic.getCId());
		}//end if
		
		return bln;
	}//selectBln
	
	public String selectName(ClinicIdCheck cic) throws SQLException{
		String bln = null;
		if("ceo".equals(cic.getCheck())) {
			bln = c_dao.selectCeoName(cic.getCId());
		}//end if
		
		if("emp".equals(cic.getCheck())) {
			bln = c_dao.selectEmpName(cic.getCId());
		}//end if
		
		return bln;
	}//selectBln
	
	public JSONObject selectWeekRegDayCnt(String bln) throws SQLException{
		List<WeekRegDayCnt> list = null;
		
		list = c_dao.selectWeekRegDayCnt(bln);
		
		JSONObject json = new JSONObject();
		
		int temp=0;
		for(int i =1; i<=7; i++) {
			json.put(i, 0);
		}
		for(WeekRegDayCnt wrdc : list) {
			switch(wrdc.getDay()) {
			case "월" :temp=1; 
			break;
			case "화" :temp=2; 
			break;
			case "수" :temp=3; 
			break;
			case "목" :temp=4; 
			break;
			case "금" :temp=5; 
			break;
			case "토" :temp=6; 
			break;
			case "일" :temp=7; 
			break;
			}
			
			
			
			json.put( temp, wrdc.getCnt());
		}
		return json;
	}//selectWeekRegDayCnt
	
	public int selectCIdCheck(String joinCId) throws SQLException{
		int cIdCheck = 0;
		if(c_dao.selectCidCheck(joinCId)==1) {
			cIdCheck=1;
		}//end if
		
		return cIdCheck;
	}//selectCIdCheck
	
	public int insertCeo(CeoAddJoin caj)throws SQLException{
		int cnt = 0;
		
		cnt = c_dao.insertCeo(caj);
		
		return cnt; 
	}
	
	public List<RevList> selectRevList(RevBlnCurrentPage rbcp) throws SQLException{
		int startNum = p.startNum(rbcp.getCurrentPage());
		int endNum = p.endNum(startNum);

		RevPage rp = new RevPage();
		rp.setBln(rbcp.getBln());
		rp.setStartNum(startNum);
		rp.setEndNum(endNum);
		
		List<RevList> list = c_dao.selectRevList(rp);
		return list;
	}
	
	public String revPageIndexList(RevBlnCurrentPage rbcp) throws SQLException {
		int totalCnt = c_dao.selectRevTotalCnt(rbcp.getBln());
		int totalPage = p.totalPage(totalCnt);
		int startPage = p.startPage(rbcp.getCurrentPage());
		int endPage = p.endPage(startPage, totalPage);
		return p.indexList(startPage, endPage, totalPage, rbcp.getCurrentPage(), "reservation_list.do");
	}
	
	public JSONObject selectWeekQGCCnt(String bln) throws SQLException{
		List<WeekQGCDayCnt> list = c_dao.selectWeekQGCCnt(bln);
		
		JSONObject json = new JSONObject();
		
		for(int i=1; i<8; i++) {
		json.put(i, 0);
		}
		
		for(WeekQGCDayCnt wqdc : list) {
			json.put(wqdc.getDay(), wqdc.getCnt());
		}
		
		return json;
	}
	
	public int updateRevAprvl(AprvlBseq ab) throws SQLException{
		String flag=ab.getAprvl().equals("N")?"Y":"N";
		
		ab.setAprvl(flag);
		
		int cnt = c_dao.updateBookAprvl(ab);
		
		return cnt;
	}
	
	public List<UseHistoryList> selectUseHistoryList(UseBlnCurrentPage ubcp) throws SQLException{
		int startNum = p.startNum(ubcp.getCurrentPage());
		int endNum = p.endNum(startNum);

		UseHistory uh = new UseHistory();
		uh.setBln(ubcp.getBln());
		uh.setStartNum(startNum);
		uh.setEndNum(endNum);
		
		List<UseHistoryList> list = c_dao.selectUseHistoryList(uh);
		return list;
	}
	
	public String useHistoryIndexList(UseBlnCurrentPage ubcp) throws SQLException {
		int totalCnt = c_dao.selectUseHistoryCnt(ubcp.getBln());
		int totalPage = p.totalPage(totalCnt);
		int startPage = p.startPage(ubcp.getCurrentPage());
		int endPage = p.endPage(startPage, totalPage);
		return p.indexList(startPage, endPage, totalPage, ubcp.getCurrentPage(), "use_list.do");
	}
	
	public List<MtrList> selectMtrList(MtrBlnCurrentPage mbcp) throws SQLException{
		int startNum = p.startNum(mbcp.getCurrentPage());
		int endNum = p.endNum(startNum);
		
		MtrNum mn = new MtrNum();
		mn.setBln(mbcp.getBln());
		mn.setStartNum(startNum);
		mn.setEndNum(endNum);
		
		List<MtrList> list = null;
		list = c_dao.selectMtrList(mn);
		return list;
	}
	
	public String mtrIndexList(MtrBlnCurrentPage mbcp)throws SQLException{
		int totalCnt = c_dao.selectMtrTotalCnt(mbcp.getBln());
		int totalPage = p.totalPage(totalCnt);
		int startPage = p.startPage(mbcp.getCurrentPage());
		int endPage = p.endPage(startPage, totalPage);
		return p.indexList(startPage, endPage, totalPage, mbcp.getCurrentPage(), "monitoring_list.do");
	}
	
	public List<UserQnaList> selectUserQnaList(UserQnaBlnCurrentPage uqbcp) throws SQLException{
		int startNum = p.startNum(uqbcp.getCurrentPage());
		int endNum = p.endNum(startNum);
		
		UserQna uq = new UserQna();
		uq.setBln(uqbcp.getBln());
		uq.setStartNum(startNum);
		uq.setEndNum(endNum);
		
		List<UserQnaList> list = null;
		list = c_dao.selectUserQnaList(uq);
		return list;
	}
	
	public String userQnaIndexList(UserQnaBlnCurrentPage uqbcp)throws SQLException{
		int totalCnt = c_dao.selectUserQnaTotalCnt(uqbcp.getBln());
		int totalPage = p.totalPage(totalCnt);
		int startPage = p.startPage(uqbcp.getCurrentPage());
		int endPage = p.endPage(startPage, totalPage);
		return p.indexList(startPage, endPage, totalPage, uqbcp.getCurrentPage(), "user_qna_list.do");
	}
	
	public List<MgrQnaList> selectMgrQnaList(MgrQnaBlnCurrentPage mqbcp) throws SQLException{
		int startNum = p.startNum(mqbcp.getCurrentPage());
		int endNum = p.endNum(startNum);
		
		MgrQna mq = new MgrQna();
		mq.setCId(mqbcp.getCId());
		mq.setStartNum(startNum);
		mq.setEndNum(endNum);
		
		List<MgrQnaList> list = null;
		list = c_dao.selectMgrQnaList(mq);
		return list;
	}
	
	public String mgrQnaIndexList(MgrQnaBlnCurrentPage mqbcp)throws SQLException{
		int totalCnt = c_dao.selectMgrTotalCnt(mqbcp.getCId());
		int totalPage = p.totalPage(totalCnt);
		int startPage = p.startPage(mqbcp.getCurrentPage());
		int endPage = p.endPage(startPage, totalPage);
		return p.indexList(startPage, endPage, totalPage, mqbcp.getCurrentPage(), "mgr_qna_list.do");
	}
	
	public int insertClinic(ClnRegData crd)throws SQLException{
		
		ClinicInsert ci = new ClinicInsert();
		
		int cnt = 0;
		
		if(crd.getLoc_x()==null) {
			crd.setLoc_x("0");
		}
		
		if(crd.getLoc_y()==null) {
			crd.setLoc_y("0");
		}
		
		if("1".equals(crd.getMedicine())) {
			crd.setSubject("1");
		}
		
		if("2".equals(crd.getSurgery())) {
			crd.setSubject("2");
		}
		
		if("1".equals(crd.getMedicine()) && "2".equals(crd.getMedicine())){
			crd.setSubject("3");
		}
		
		if("on".equals(crd.getNight())) {
			crd.setNight("Y");
		}else {
			crd.setNight("N");
		}
		
		if("1".equals(crd.getBeauty())) {
			crd.setBeauty("Y");
		}else {
			crd.setBeauty("N");
		}
		
		if("1".equals(crd.getHosCare())) {
			crd.setHosCare("Y");
		}else {
			crd.setHosCare("N");
		}
		cnt = c_dao.insertClinic(crd);
		
		return cnt;
	}
	
	public int insertNightClinic(ClnRegData crd)throws SQLException{
		int cnt =0;
		
		if("Y".equals(crd.getNight())) {
			
			switch(crd.getWeek()) {
			case "월요일" : crd.setWeek("1");
			break;
			case "화요일" : crd.setWeek("2");
			break;
			case "수요일" : crd.setWeek("3");
			break;
			case "목요일" : crd.setWeek("4");
			break;
			case "금요일" : crd.setWeek("5");
			break;
			case "토요일" : crd.setWeek("6");
			break;
			case "일요일" : crd.setWeek("7");
			break;
			}
			
			cnt = c_dao.insertNightClinic(crd);
		}
		return cnt;
	}
	
	public int selectIdPassCheck(IdPw ip)throws SQLException{
		int cnt =0;
		
		cnt = c_dao.selectCIdPassCheck(ip);
		
		return cnt;
	}
	
}
