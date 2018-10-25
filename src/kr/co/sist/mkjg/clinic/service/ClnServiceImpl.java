package kr.co.sist.mkjg.clinic.service;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import kr.co.sist.mkjg.clinic.dao.ClnDAO;
import kr.co.sist.mkjg.clinic.domain.EmpListDomain;
import kr.co.sist.mkjg.clinic.domain.HogListDomain;
import kr.co.sist.mkjg.clinic.domain.NoticeListDomain;
import kr.co.sist.mkjg.clinic.vo.ClinicIdCheck;
import kr.co.sist.mkjg.clinic.vo.EmpMember;
import kr.co.sist.mkjg.clinic.vo.EmpModi;
import kr.co.sist.mkjg.clinic.vo.HogAddView;
import kr.co.sist.mkjg.clinic.vo.NoticeView;
import kr.co.sist.mkjg.clinic.vo.clnImgVO;
import kr.co.sist.mkjg.clinic.vo.clnInfoView;
import kr.co.sist.mkjg.clinic.vo.clnModify;
import kr.co.sist.mkjg.clinic.vo.clnModifyNight;
import kr.co.sist.mkjg.clinic.vo.hogInfo;
import kr.co.sist.mkjg.clinic.vo.hogInsert;
import kr.co.sist.mkjg.clinic.vo.treatmentView;
import kr.co.sist.mkjg.clinic.vo.insertTreatment;

@Service
public class ClnServiceImpl implements ClnService{
	
	@Inject
	ClnDAO clnDAO;
	
	@Override
	public List<EmpListDomain> listAll(int start, int end, String bln, String keyword) throws Exception{
		return clnDAO.listAll(start, end, bln, keyword);
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
	public int totalEmpCount(String bln, String keyword) throws Exception {
		return clnDAO.empCount(bln,keyword);
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
	public List<HogListDomain> hogListAll(int start, int end, String bln, String keyword) throws Exception {
		return clnDAO.hogListAll(start, end, bln, keyword);
	}//hogListAll

	@Override
	public int totalHogCount(String bln, String keyword) throws Exception {
		return clnDAO.hogCount(bln, keyword);
	}//totalHogCount


	@Override
	public hogInfo hogView(String cl_seq, String bln) throws Exception {
		return clnDAO.hogView(cl_seq, bln);
	}//hogView
	
	@Override
	public HogAddView hogAddView(String bseq, String bln) throws Exception {
		return clnDAO.hogAddView(bseq, bln);
	}//hogView


	@Override
	public List<NoticeListDomain> noticeListAll(int start, int end, String bln, String keyword) throws Exception {
		return clnDAO.noticeListAll(start, end, bln, keyword);
	}//noticeListAll

	@Override
	public int totalNoticeCount(String bln, String keyword) throws Exception {
		return clnDAO.noticeCount(bln, keyword);
	}//totalNoticeCount
	
	@Override
	public String insertHog(hogInsert hoin) throws Exception {
		return clnDAO.insertHog(hoin);
	}


	@Override
	public NoticeView noticeView(String not_seq) throws Exception {
		return clnDAO.noticeView(not_seq);
	}//noticeView
	


	@Override
	public clnInfoView clnView(String bln) throws Exception {
		return clnDAO.clnView(bln);
	}//clnView
	
	@Override
	public List<clnImgVO> clnImg(String bln) throws Exception {
		return clnDAO.clnImg(bln);
	}//clnView

	@Override
	public String clnUpdate(clnModify clnM) throws Exception {
		return clnDAO.clnUpdate(clnM);
	}//clnUpdate
	
	@Override
	public String clnNUpdate( clnModifyNight clnMN) throws Exception {
		return clnDAO.clnNUpdate(clnMN);
	}//clnNUpdate

	@Override
	public treatmentView treatmentView(String bseq, String bln) throws Exception {
		return clnDAO.treatmentView(bseq, bln);
	}//treatmentView

	@Override
	public String insertTreatment(insertTreatment itm) throws Exception {
		return clnDAO.insertTreatment(itm);
	}//insertTreatment
	
	@Override
	public String updateTreatment(insertTreatment itm) throws Exception {
		return clnDAO.updateTreatment(itm);
	}//updateTreatment

	


}
