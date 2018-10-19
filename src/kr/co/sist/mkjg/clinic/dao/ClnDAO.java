package kr.co.sist.mkjg.clinic.dao;


import java.util.List;


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

public interface ClnDAO {
	
	public List<EmpListDomain> listAll(int start, int end, String bln) throws Exception;
	public int empCount(String bln) throws Exception;
	public EmpMember empView(String eid) throws Exception;
	public String empUpdate(EmpModi em) throws Exception;
	public int idCheck(String eid) throws Exception;
	public String insertEmp(EmpMember em) throws Exception;
	
	public List<HogListDomain> hogListAll(int start, int end, String bln) throws Exception;
	public int hogCount(String bln) throws Exception;
	public hogInfo hogView(String cl_seq, String bln) throws Exception;
	
	public List<NoticeListDomain> noticeListAll(int start, int end, String bln) throws Exception;
	public int noticeCount(String bln) throws Exception;
	public NoticeView noticeView(String not_seq) throws Exception;
	
	public clnInfoView clnView(String bln) throws Exception;
	public String clnUpdate(clnModify clnM) throws Exception;
	public String clnNUpdate(clnModifyNight clnMN) throws Exception;
	

}
