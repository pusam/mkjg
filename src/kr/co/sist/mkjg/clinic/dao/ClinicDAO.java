package kr.co.sist.mkjg.clinic.dao;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

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
import kr.co.sist.mkjg.clinic.vo.AprvlBseq;
import kr.co.sist.mkjg.clinic.vo.CIdCPass;
import kr.co.sist.mkjg.clinic.vo.CeoAddJoin;
import kr.co.sist.mkjg.clinic.vo.ClinicIdCheck;
import kr.co.sist.mkjg.clinic.vo.ClnRegData;
import kr.co.sist.mkjg.clinic.vo.IdSearch;
import kr.co.sist.mkjg.clinic.vo.InsertClnImages;
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

@Component
public class ClinicDAO {
	
	@Autowired
	private SqlSessionTemplate sst;
	
	public List<NoticeTitle> selectNoticeTitle() throws SQLException{
		List<NoticeTitle> list = null;
		
		list = sst.selectList("selectNoticeTitle");
		return list;
	}//selectNoticeTitle
	
	public List<TodayReg> selectTodayReg(String bln) throws SQLException{
		List<TodayReg> list = null;
		list = sst.selectList("selectTodayReg", bln);
		return list;
	}//selectNoticeTitle
	
	public String selectCeoBln(String cId) throws SQLException{
		String bln = sst.selectOne("selectCeoBln", cId);
		
		return bln;
	}
	
	public String selectEmpBln(String cId) throws SQLException{
		String bln = sst.selectOne("selectEmpBln", cId);
		
		return bln;
	}
	
	public String selectCeoName(String cId) throws SQLException{
		String name = sst.selectOne("selectCeoName", cId);
		return name;
	}
	
	public String selectEmpName(String cId) throws SQLException{
		String name = sst.selectOne("selectEmpName", cId);
		
		return name;
	}
	
	public List<WeekRegDayCnt> selectWeekRegDayCnt(String bln) throws SQLException{
		List<WeekRegDayCnt> list = null;
		
		list = sst.selectList("selectWeekRegDayCnt", bln);
		
		return list;
	}
	
	public int selectCidCheck(String joinCId) throws SQLException{
		int cIdCnt = 0;
		
		cIdCnt = sst.selectOne("selectCIdCheck", joinCId);
		
		return cIdCnt;
	}
	
	public int insertCeo(CeoAddJoin caj) throws SQLException{
		int cnt = 0;
		cnt = sst.insert("insertCeo", caj);
		return cnt;
	}
	
	public List<RevList> selectRevList(RevPage rp)throws SQLException{
		List<RevList> list = null;
		list = sst.selectList("selectRevList", rp);
		return list;
	}
	
	public int selectRevTotalCnt(RevBlnCurrentPage rbcp) throws SQLException{
		int regTotalCnt = 0;
		
		regTotalCnt = sst.selectOne("selectRegCnt", rbcp);
		
		return regTotalCnt;
	}
	
	public List<WeekQGCDayCnt> selectWeekQGCCnt(String bln) throws SQLException{
		List<WeekQGCDayCnt> list = null;
		
		list = sst.selectList("selectWeekQgcCnt", bln);
		return list;
	}
	
	public int updateBookAprvl(AprvlBseq ab) throws SQLException{
		int cnt = 0;
		cnt = sst.update("updateBookAprvl", ab);
		return cnt;
	}
	
	public int selectUseHistoryCnt(UseBlnCurrentPage ubcp) throws SQLException{
		int cnt = 0;
		
		cnt = sst.selectOne("selectUseHistoryCnt", ubcp);
		
		return cnt;
	}
	
	public List<UseHistoryList> selectUseHistoryList(UseHistory uh) throws SQLException{
		List<UseHistoryList> list = null;
		
		list = sst.selectList("selectUseHistory",uh);
		
		return list;
	}
	
	public int selectMtrTotalCnt(MtrBlnCurrentPage mbcp) throws SQLException{
		int cnt = 0;
		
		cnt = sst.selectOne("selectMtrTotalCnt", mbcp);
		
		return cnt;
	}
	
	public List<MtrList> selectMtrList(MtrNum mn)throws SQLException{
		List<MtrList> list = null;
		list = sst.selectList("selectMtrList", mn);
		return list;
	}
	
	public int selectUserQnaTotalCnt(UserQnaBlnCurrentPage uqbcp) throws SQLException{
		int cnt = 0;
		
		cnt = sst.selectOne("selectUserQnaTotalCnt", uqbcp);
		
		return cnt;
	}
	
	public List<UserQnaList> selectUserQnaList(UserQna uq)throws SQLException{
		List<UserQnaList> list = null;
		
		list = sst.selectList("selectUserQnaList", uq);
		
		return list;
	}
	
	public int selectMgrTotalCnt(MgrQnaBlnCurrentPage mqbcp) throws SQLException{
		int cnt = 0;
		
		cnt = sst.selectOne("selectMgrQnaTotalCnt", mqbcp);
		
		return cnt;
	}
	
	public List<MgrQnaList> selectMgrQnaList(MgrQna mq)throws SQLException{
		List<MgrQnaList> list = null;
		
		list = sst.selectList("selectMgrQnaList", mq);
		
		return list;
	}
	
	public int insertClinic(ClnRegData crd)throws SQLException{
		int cnt = 0;
		cnt = sst.insert("insertClinic", crd);
		return cnt;
	}
	
	public int insertNightClinic(ClnRegData crd)throws SQLException{
		int cnt =0;
		cnt = sst.insert("insertNightClinic", crd);
		return cnt;
	}
	
	public int selectCIdPassCheck(ClinicIdCheck cic)throws SQLException{
		int cnt =0;
		cnt = sst.selectOne("idPwCheck",cic);
		return cnt;
	}
	
	public int selectEmpCIdPassCheck(ClinicIdCheck cic)throws SQLException{
		int cnt = 0;
		cnt = sst.selectOne("empIdPwCheck", cic);
		return cnt;
	}

	public int insertClnImg(InsertClnImages icis)throws SQLException{
		int cnt = 0;
		cnt = sst.insert("insertClnImg",icis);
		return cnt;
	}
	
	public int insertClnQna(MgrQnaData mqd)throws SQLException{
		int cnt = 0;
		cnt = sst.insert("insertClnQna",mqd);
		return cnt;
	}
	
	public List<MgrQnaAnswer> selectMgrQnaAnswer(String qua_seq)throws SQLException{
		List<MgrQnaAnswer> list = null;
		list = sst.selectList("selectMgrQnaAnswer",qua_seq);
		return list;
	}
	
	public List<UserQnaView> selectUserQna(String qgc_seq)throws SQLException{
		List<UserQnaView> list = null;
		list = sst.selectList("selectUserQna", qgc_seq); 
		return list;
	}
	
	public List<UserQnaAnswerReadOnly> selectUserQnaReadOnly(String qgc_seq)throws SQLException{
		List<UserQnaAnswerReadOnly> list = null;
		list = sst.selectList("selectUserQnaReadOnly", qgc_seq); 
		return list;
	}
	
	public int insertUserQnaAnswer(UserQnaAnswer uqa) throws SQLException{
		int cnt=0;
		cnt = sst.insert("insertUserQnaAnswer", uqa);
		return cnt;
	}
	
	public String selectCeoIdSearch(IdSearch is) throws SQLException{
		String searchId = null; 
		searchId = sst.selectOne("ceoIdSearch",is);
		return searchId;
	}
	
	public String selectEmpIdSearch(IdSearch is) throws SQLException{
		String searchId = null; 
		searchId = sst.selectOne("empIdSearch",is);
		return searchId;
	}
	
	public String selectCeoPwSearch(PwSearch ps)throws SQLException{
		String searchPw = null;
		searchPw = sst.selectOne("ceoPwSearch", ps);
		return searchPw;
	}
	
	public String selectEmpPwSearch(PwSearch ps) throws SQLException{
		String searchPw = null;
		searchPw = sst.selectOne("empPwSearch", ps);
		return searchPw;
	}
	
	public String selectClinicAprvl(String bln) throws SQLException{
		String aprvl = null;
		aprvl = sst.selectOne("clinicAprvl", bln);
		return aprvl;
	}
	
	public int updateCeoPass(CIdCPass cicp) throws SQLException{
		int cnt = 0;
		cnt = sst.update("ceoPassUpdate",cicp);
		return cnt;
	}
	
	public int updateEmpPass(CIdCPass cicp) throws SQLException{
		int cnt = 0;
		cnt = sst.update("empPassUpdate",cicp);
		return cnt;
	}
	
	public int insertMtr(MtrInsert mi)throws SQLException{
		int cnt=0;
		cnt = sst.insert("mtrInsert",mi);
		return cnt;
	}
	
	public String mtrMseq(MtrMseq mm)throws SQLException{
		String mseq = null;
		mseq = sst.selectOne("mseq", mm);
		return mseq;
	}
	
	public int mtrImgMseq(MtrImgInsert mii)throws SQLException{
		int cnt = 0;
		cnt = sst.insert("mtrImgInsert", mii);
		return cnt;
	}
	
	
	
}
