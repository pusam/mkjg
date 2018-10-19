package kr.co.sist.mkjg.clinic.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.sist.mkjg.clinic.domain.EmpListDomain;
import kr.co.sist.mkjg.clinic.domain.HogListDomain;
import kr.co.sist.mkjg.clinic.domain.NoticeListDomain;
import kr.co.sist.mkjg.clinic.vo.EmpMember;
import kr.co.sist.mkjg.clinic.vo.EmpModi;
import kr.co.sist.mkjg.clinic.vo.NoticeView;
import kr.co.sist.mkjg.clinic.vo.clnInfoView;
import kr.co.sist.mkjg.clinic.vo.clnModify;
import kr.co.sist.mkjg.clinic.vo.clnModifyNight;
import kr.co.sist.mkjg.clinic.vo.hogInfo;

@Repository
public class ClnDAOImpl implements ClnDAO{
	
	@Autowired
	private SqlSessionTemplate sst;
	
	@Override
	public List<EmpListDomain> listAll(int start, int end, String bln) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("bln", bln);
		
		List<EmpListDomain> list = sst.selectList("EmpListAll", map);
		return list;
	}//listAll

	
	@Override
	public EmpMember empView(String eid) throws Exception {
		EmpMember emd = (EmpMember)sst.selectOne("ViewEmp", eid);
		return emd;
	}//empView

	@Override
	public String empUpdate(EmpModi em) throws Exception {
		return String.valueOf(sst.update("UpdateEmp", em));
	}//empUpdate

	@Override
	public int empCount(String bln) throws Exception {
		return sst.selectOne("totalEmpCount", bln);
	}//empCount


	@Override
	public int idCheck(String eid) throws Exception {
		return sst.selectOne("idCheck",eid);
	}//idCheck


	@Override
	public String insertEmp(EmpMember em) throws Exception {
		return String.valueOf(sst.insert("insertEmp", em));
	}//insertEmp


	@Override
	public List<HogListDomain> hogListAll(int start, int end, String bln) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("bln", bln);
		
		List<HogListDomain> list = sst.selectList("hogListAll", map);
		return list;
	}//hogListAll


	@Override
	public int hogCount(String bln) throws Exception {
		return sst.selectOne("totalHogCount", bln);
	}//hogCount


	@Override
	public hogInfo hogView(String cl_seq, String bln) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cl_seq", cl_seq);
		map.put("bln", bln);
		hogInfo hogInfo = sst.selectOne("hogView", map);
		return hogInfo;
	}//hogView


	@Override
	public List<NoticeListDomain> noticeListAll(int start, int end, String bln) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("bln", bln);
		
		List<NoticeListDomain> list = sst.selectList("noticeListAll", map);
		return list;
	}//noticeListAll


	@Override
	public int noticeCount(String bln) throws Exception {
		return sst.selectOne("totalNoticeCount", bln);
	}//noticeCount


	@Override
	public NoticeView noticeView(String not_seq) throws Exception {
		return sst.selectOne("noticeView", not_seq);
	}//noticeView
	
	public clnInfoView clnView(String bln) throws Exception {
		clnInfoView clnView = (clnInfoView)sst.selectOne("clnView", bln);
		return clnView;
	}//empView


	@Override
	public String clnUpdate(clnModify clnM) throws Exception {
		return String.valueOf(sst.update("UpdateCln", clnM));
	}
	
	@Override
	public String clnNUpdate(clnModifyNight clnMN) throws Exception {
		return String.valueOf(sst.update("UpdateClnN", clnMN));
	}

	




	
	

}
