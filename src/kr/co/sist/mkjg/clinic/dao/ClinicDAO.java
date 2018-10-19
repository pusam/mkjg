package kr.co.sist.mkjg.clinic.dao;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.mkjg.clinic.domain.MgrQnaList;
import kr.co.sist.mkjg.clinic.domain.MtrList;
import kr.co.sist.mkjg.clinic.domain.NoticeTitle;
import kr.co.sist.mkjg.clinic.domain.RevList;
import kr.co.sist.mkjg.clinic.domain.TodayReg;
import kr.co.sist.mkjg.clinic.domain.UseHistoryList;
import kr.co.sist.mkjg.clinic.domain.UserQnaList;
import kr.co.sist.mkjg.clinic.domain.WeekQGCDayCnt;
import kr.co.sist.mkjg.clinic.domain.WeekRegDayCnt;
import kr.co.sist.mkjg.clinic.vo.AprvlBseq;
import kr.co.sist.mkjg.clinic.vo.CeoAddJoin;
import kr.co.sist.mkjg.clinic.vo.ClnRegData;
import kr.co.sist.mkjg.clinic.vo.IdPw;
import kr.co.sist.mkjg.clinic.vo.MgrQna;
import kr.co.sist.mkjg.clinic.vo.MtrNum;
import kr.co.sist.mkjg.clinic.vo.RevPage;
import kr.co.sist.mkjg.clinic.vo.UseHistory;
import kr.co.sist.mkjg.clinic.vo.UserQna;

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
	
	public int selectRevTotalCnt(String bln) throws SQLException{
		int regTotalCnt = 0;
		
		regTotalCnt = sst.selectOne("selectRegCnt", bln);
		
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
	
	public int selectUseHistoryCnt(String bln) throws SQLException{
		int cnt = 0;
		
		cnt = sst.selectOne("selectUseHistoryCnt", bln);
		
		return cnt;
	}
	
	public List<UseHistoryList> selectUseHistoryList(UseHistory uh) throws SQLException{
		List<UseHistoryList> list = null;
		
		list = sst.selectList("selectUseHistory",uh);
		
		return list;
	}
	
	public int selectMtrTotalCnt(String bln) throws SQLException{
		int cnt = 0;
		
		cnt = sst.selectOne("selectMtrTotalCnt", bln);
		
		return cnt;
	}
	
	public List<MtrList> selectMtrList(MtrNum mn)throws SQLException{
		List<MtrList> list = null;
		
		list = sst.selectList("selectMtrList", mn);
		
		return list;
	}
	
	public int selectUserQnaTotalCnt(String bln) throws SQLException{
		int cnt = 0;
		
		cnt = sst.selectOne("selectUserQnaTotalCnt", bln);
		
		return cnt;
	}
	
	public List<UserQnaList> selectUserQnaList(UserQna uq)throws SQLException{
		List<UserQnaList> list = null;
		
		list = sst.selectList("selectUserQnaList", uq);
		
		return list;
	}
	
	public int selectMgrTotalCnt(String cId) throws SQLException{
		int cnt = 0;
		
		cnt = sst.selectOne("selectMgrQnaTotalCnt", cId);
		
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
	
	public int selectCIdPassCheck(IdPw ip)throws SQLException{
		int cnt =0;
		cnt = sst.selectOne("idPwCheck",ip);
		return cnt;
	}

	
}
