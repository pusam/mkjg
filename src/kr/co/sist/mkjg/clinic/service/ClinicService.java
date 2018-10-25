package kr.co.sist.mkjg.clinic.service;

import java.sql.SQLException;
import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.mkjg.clinic.dao.ClinicDAO;
import kr.co.sist.mkjg.clinic.domain.MgrQnaAnswer;
import kr.co.sist.mkjg.clinic.domain.MgrQnaList;
import kr.co.sist.mkjg.clinic.domain.MtrList;
import kr.co.sist.mkjg.clinic.domain.NoticeTitle;
import kr.co.sist.mkjg.clinic.domain.RevList;
import kr.co.sist.mkjg.clinic.domain.TodayReg;
import kr.co.sist.mkjg.clinic.domain.UseHistoryList;
import kr.co.sist.mkjg.clinic.domain.UserQnaAnswerReadOnly;
import kr.co.sist.mkjg.clinic.domain.UserQnaList;
import kr.co.sist.mkjg.clinic.domain.UserQnaView;
import kr.co.sist.mkjg.clinic.domain.WeekQGCDayCnt;
import kr.co.sist.mkjg.clinic.domain.WeekRegDayCnt;
import kr.co.sist.mkjg.clinic.util.Paging;
import kr.co.sist.mkjg.clinic.vo.AprvlBseq;
import kr.co.sist.mkjg.clinic.vo.CIdCPass;
import kr.co.sist.mkjg.clinic.vo.CeoAddJoin;
import kr.co.sist.mkjg.clinic.vo.ClinicIdCheck;
import kr.co.sist.mkjg.clinic.vo.ClinicInsert;
import kr.co.sist.mkjg.clinic.vo.ClnRegData;
import kr.co.sist.mkjg.clinic.vo.IdSearch;
import kr.co.sist.mkjg.clinic.vo.InsertClnImages;
import kr.co.sist.mkjg.clinic.vo.InsertClnImg;
import kr.co.sist.mkjg.clinic.vo.MgrQna;
import kr.co.sist.mkjg.clinic.vo.MgrQnaBlnCurrentPage;
import kr.co.sist.mkjg.clinic.vo.MgrQnaData;
import kr.co.sist.mkjg.clinic.vo.MtrBlnCurrentPage;
import kr.co.sist.mkjg.clinic.vo.MtrImgInsert;
import kr.co.sist.mkjg.clinic.vo.MtrInsert;
import kr.co.sist.mkjg.clinic.vo.MtrMseq;
import kr.co.sist.mkjg.clinic.vo.MtrNum;
import kr.co.sist.mkjg.clinic.vo.PwSearch;
import kr.co.sist.mkjg.clinic.vo.RevBlnCurrentPage;
import kr.co.sist.mkjg.clinic.vo.RevPage;
import kr.co.sist.mkjg.clinic.vo.UseBlnCurrentPage;
import kr.co.sist.mkjg.clinic.vo.UseHistory;
import kr.co.sist.mkjg.clinic.vo.UserQna;
import kr.co.sist.mkjg.clinic.vo.UserQnaAnswer;
import kr.co.sist.mkjg.clinic.vo.UserQnaBlnCurrentPage;
import kr.co.sist.mkjg.protector.util.Encryption;

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
		
		String pw = caj.getCPass();
		pw = Encryption.changeSHA512(pw);
		caj.setCPass(pw);
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
		rp.setStatus(rbcp.getStatus());
		rp.setSearch(rbcp.getSearch());
		
		List<RevList> list = c_dao.selectRevList(rp);
		return list;
	}
	
	public String revPageIndexList(RevBlnCurrentPage rbcp) throws SQLException {
		int totalCnt = c_dao.selectRevTotalCnt(rbcp);
		int totalPage = p.totalPage(totalCnt);
		int startPage = p.startPage(rbcp.getCurrentPage());
		int endPage = p.endPage(startPage, totalPage);
		return p.indexList(startPage, endPage, totalPage, rbcp.getCurrentPage(), "reservation_list.do",rbcp.getStatus(), rbcp.getSearch());
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
		uh.setStatus(ubcp.getStatus());
		uh.setSearch(ubcp.getSearch());
		
		List<UseHistoryList> list = c_dao.selectUseHistoryList(uh);
		return list;
	}
	
	public String useHistoryIndexList(UseBlnCurrentPage ubcp) throws SQLException {
		int totalCnt = c_dao.selectUseHistoryCnt(ubcp);
		int totalPage = p.totalPage(totalCnt);
		int startPage = p.startPage(ubcp.getCurrentPage());
		int endPage = p.endPage(startPage, totalPage);
		return p.indexList(startPage, endPage, totalPage, ubcp.getCurrentPage(), "use_list.do", ubcp.getStatus(), ubcp.getSearch());
	}
	
	public List<MtrList> selectMtrList(MtrBlnCurrentPage mbcp) throws SQLException{
		int startNum = p.startNum(mbcp.getCurrentPage());
		int endNum = p.endNum(startNum);
		
		MtrNum mn = new MtrNum();
		mn.setBln(mbcp.getBln());
		mn.setStartNum(startNum);
		mn.setEndNum(endNum);
		mn.setSearch(mbcp.getSearch());
		mn.setStatus(mbcp.getStatus());
		
		List<MtrList> list = null;
		list = c_dao.selectMtrList(mn);
		return list;
	}
	
	public String mtrIndexList(MtrBlnCurrentPage mbcp)throws SQLException{
		int totalCnt = c_dao.selectMtrTotalCnt(mbcp);
		int totalPage = p.totalPage(totalCnt);
		int startPage = p.startPage(mbcp.getCurrentPage());
		int endPage = p.endPage(startPage, totalPage);
		return p.indexList(startPage, endPage, totalPage, mbcp.getCurrentPage(), "monitoring_list.do",mbcp.getStatus(), mbcp.getSearch());
	}
	
	public List<UserQnaList> selectUserQnaList(UserQnaBlnCurrentPage uqbcp) throws SQLException{
		int startNum = p.startNum(uqbcp.getCurrentPage());
		int endNum = p.endNum(startNum);
		
		UserQna uq = new UserQna();
		uq.setBln(uqbcp.getBln());
		uq.setStartNum(startNum);
		uq.setEndNum(endNum);
		uq.setStatus(uqbcp.getStatus());
		uq.setSearch(uqbcp.getSearch());
		
		List<UserQnaList> list = null;
		list = c_dao.selectUserQnaList(uq);
		return list;
	}
	
	public String userQnaIndexList(UserQnaBlnCurrentPage uqbcp)throws SQLException{
		int totalCnt = c_dao.selectUserQnaTotalCnt(uqbcp);
		int totalPage = p.totalPage(totalCnt);
		int startPage = p.startPage(uqbcp.getCurrentPage());
		int endPage = p.endPage(startPage, totalPage);
		return p.indexList(startPage, endPage, totalPage, uqbcp.getCurrentPage(), "user_qna_list.do",uqbcp.getStatus(), uqbcp.getSearch());
	}
	
	public List<MgrQnaList> selectMgrQnaList(MgrQnaBlnCurrentPage mqbcp) throws SQLException{
		int startNum = p.startNum(mqbcp.getCurrentPage());
		int endNum = p.endNum(startNum);
		
		MgrQna mq = new MgrQna();
		mq.setCId(mqbcp.getCId());
		mq.setStartNum(startNum);
		mq.setEndNum(endNum);
		mq.setStatus(mqbcp.getStatus());
		mq.setSearch(mqbcp.getSearch());
		
		List<MgrQnaList> list = null;
		list = c_dao.selectMgrQnaList(mq);
		return list;
	}
	
	public String mgrQnaIndexList(MgrQnaBlnCurrentPage mqbcp)throws SQLException{
		int totalCnt = c_dao.selectMgrTotalCnt(mqbcp);
		int totalPage = p.totalPage(totalCnt);
		int startPage = p.startPage(mqbcp.getCurrentPage());
		int endPage = p.endPage(startPage, totalPage);
		return p.indexList(startPage, endPage, totalPage, mqbcp.getCurrentPage(), "mgr_qna_list.do",mqbcp.getStatus(), mqbcp.getSearch());
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
	
	public int selectIdPassCheck(ClinicIdCheck cic)throws SQLException{
		int cnt =0;
		String pw = cic.getPass();
		pw = Encryption.changeSHA512(pw);
		cic.setPass(pw);
		if("ceo".equals(cic.getCheck())) {
			cnt = c_dao.selectCIdPassCheck(cic);
		}
		
		if("emp".equals(cic.getCheck())) {
			cnt = c_dao.selectEmpCIdPassCheck(cic);
		}
		
		return cnt;
	}
	
	public int insertClnImg(InsertClnImg ici)throws SQLException{
		int cnt = 0;
		InsertClnImages icis = new InsertClnImages();
		for(int i=1; i<ici.getImages().size(); i++) {
			if(ici.getImages().get(i)!=null) {
				icis.setBln(ici.getBln());
				icis.setPath(ici.getPath()+ici.getImages().get(i));
				icis.setReg_id(ici.getReg_id());
				icis.setReg_ip(ici.getReg_ip());
				cnt+=c_dao.insertClnImg(icis);
			}
		}
		return cnt;
	}
	
	public int insertClnQna(MgrQnaData mqd)throws SQLException{
		int cnt = 0;
		int check = c_dao.selectCidCheck(mqd.getCId());
		if(check==1) {
			mqd.setCeoCheck("C");
		}else {
			mqd.setCeoCheck("E");
		}
		cnt = c_dao.insertClnQna(mqd);
		return cnt;
	}
	
	public List<MgrQnaAnswer> selectMgrQnaAnswer(String qua_seq)throws SQLException{
		List<MgrQnaAnswer> list = null;
		
		list = c_dao.selectMgrQnaAnswer(qua_seq);
		
		return list;
	}
	
	public List<UserQnaView> selectUserQna(String qgc_seq) throws SQLException{
		List<UserQnaView> list = null; 
		list = c_dao.selectUserQna(qgc_seq);
		return list;
	}
	
	public List<UserQnaAnswerReadOnly> selectUserQnaReadOnly(String qgc_seq) throws SQLException{
		List<UserQnaAnswerReadOnly> list = null; 
		list = c_dao.selectUserQnaReadOnly(qgc_seq);
		return list;
	}
	
	public int insertUserQnaAnswer(UserQnaAnswer uqa) throws SQLException{
		int cnt = 0;
		cnt = c_dao.insertUserQnaAnswer(uqa);
		return cnt;
	}
	
	public String selectCIdCheck(IdSearch is)throws SQLException{
		String searchId = null;
		if("ceo".equals(is.getCheck())) {
			searchId = c_dao.selectCeoIdSearch(is);
		}else {
			searchId = c_dao.selectEmpIdSearch(is);
		}
		return searchId;
	}
	
	public String selectCPwCheck(PwSearch ps)throws SQLException{
		String searchPw = null;
		if("ceo".equals(ps.getCheck())) {
			searchPw = c_dao.selectCeoPwSearch(ps);
		}else {
			searchPw = c_dao.selectEmpPwSearch(ps);
		}
		return searchPw;
	}
	
	public String selectClinicAprvl(String bln) throws SQLException{
		String aprvl = null;
		aprvl = c_dao.selectClinicAprvl(bln);
		return aprvl;
	}
	
	public int updateCPass(CIdCPass cicp)throws SQLException{
		int cnt = 0;
		String pw = cicp.getCPass();
		pw = Encryption.changeSHA512(pw);
		cicp.setCPass(pw);
		if("ceo".equals(cicp.getCheck())) {
		cnt = c_dao.updateCeoPass(cicp);
		}else {
			cnt = c_dao.updateEmpPass(cicp);
		}
		return cnt;
	}
	
	public int insertMtr(MtrInsert mi)throws SQLException{
		int cnt = 0;
		
		cnt = c_dao.insertMtr(mi);
		
		return cnt;
	}
	
	public String mtrMseq(MtrMseq mm)throws SQLException{
		String mseq = null;
		
		mseq = c_dao.mtrMseq(mm);
		
		return mseq;
	}
	
	public int mtrImgInsert(MtrInsert mi)throws SQLException{
		int cnt = 0;
		MtrImgInsert mii = new MtrImgInsert();
		for(int i=1; i<mi.getImages().size(); i++) {
			if(mi.getImages().get(i)!=null || "null".equals(mi.getImages().get(i))) {
				mii.setMseq(mi.getMseq());
				mii.setPath(mi.getPath()+mi.getImages().get(i));
				cnt+=c_dao.mtrImgMseq(mii);
			}
		}
		return cnt;
	}
	
	
	
}

