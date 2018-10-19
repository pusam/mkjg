package kr.co.sist.mkjg.clinic.service;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import kr.co.sist.mkjg.clinic.dao.ClnDAO;
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

@Service
public class ClnServiceImpl implements ClnService{
	
	@Inject
	ClnDAO clnDAO;
	
	@Override
	public List<EmpListDomain> listAll(int start, int end, String bln) throws Exception{
		return clnDAO.listAll(start, end, bln);
	}//listAll

	
	@Override
	public EmpMember empView(String eid) throws Exception{
		return clnDAO.empView(eid);
	}//empView


	@Override
	public String empUpdate(EmpModi em) throws Exception {
		return clnDAO.empUpdate(em);
	}//empUpdate

	@Override
	public int totalEmpCount(String bln) throws Exception {
		return clnDAO.empCount(bln);
	}//totalEmpCount


	@Override
	public int idCheck(String eid) throws Exception {
		return clnDAO.idCheck(eid);
	}//idCheck


	@Override
	public String insertEmp(EmpMember iep) throws Exception {
		return clnDAO.insertEmp(iep);
	}//insertEmp


	@Override
	public List<HogListDomain> hogListAll(int start, int end, String bln) throws Exception {
		return clnDAO.hogListAll(start, end, bln);
	}//hogListAll

	@Override
	public int totalHogCount(String bln) throws Exception {
		return clnDAO.hogCount(bln);
	}//totalHogCount


	@Override
	public hogInfo hogView(String cl_seq, String bln) throws Exception {
		return clnDAO.hogView(cl_seq, bln);
	}//hogView


	@Override
	public List<NoticeListDomain> noticeListAll(int start, int end, String bln) throws Exception {
		return clnDAO.noticeListAll(start, end, bln);
	}//noticeListAll


	@Override
	public int totalNoticeCount(String bln) throws Exception {
		return clnDAO.noticeCount(bln);
	}//totalNoticeCount


	@Override
	public NoticeView noticeView(String not_seq) throws Exception {
		return clnDAO.noticeView(not_seq);
	}//noticeView


	@Override
	public clnInfoView clnView(String bln) throws Exception {
		return clnDAO.clnView(bln);
	}


	@Override
	public String clnUpdate(clnModify clnM) throws Exception {
		return clnDAO.clnUpdate(clnM);
	}
	
	@Override
	public String clnNUpdate( clnModifyNight clnMN) throws Exception {
		return clnDAO.clnNUpdate(clnMN);
	}

/*
	@Override
	public EmpMember treatmentView(String bseq) throws Exception {
		return null;
	}
	*/



	


}
