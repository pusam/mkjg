package kr.co.sist.mkjg.clinic.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.io.File;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.sist.mkjg.clinic.domain.MgrQnaList;
import kr.co.sist.mkjg.clinic.domain.MtrList;
import kr.co.sist.mkjg.clinic.domain.NoticeTitle;
import kr.co.sist.mkjg.clinic.domain.RevList;
import kr.co.sist.mkjg.clinic.domain.TodayReg;
import kr.co.sist.mkjg.clinic.domain.UseHistoryList;
import kr.co.sist.mkjg.clinic.domain.UserQnaList;
import kr.co.sist.mkjg.clinic.service.ClinicService;
import kr.co.sist.mkjg.clinic.util.SessionCheck;
import kr.co.sist.mkjg.clinic.vo.AprvlBseq;
import kr.co.sist.mkjg.clinic.vo.CeoAddJoin;
import kr.co.sist.mkjg.clinic.vo.ClinicIdCheck;
import kr.co.sist.mkjg.clinic.vo.ClnRegData;
import kr.co.sist.mkjg.clinic.vo.IdPw;
import kr.co.sist.mkjg.clinic.vo.MgrQnaBlnCurrentPage;
import kr.co.sist.mkjg.clinic.vo.MtrBlnCurrentPage;
import kr.co.sist.mkjg.clinic.vo.RevBlnCurrentPage;
import kr.co.sist.mkjg.clinic.vo.UseBlnCurrentPage;
import kr.co.sist.mkjg.clinic.vo.UserQnaBlnCurrentPage;

@Controller
@SessionAttributes({"cId","bln"})
public class ClinicController {
	
	@Autowired
	private ClinicService cs;
	private String url = "";
	private SessionCheck sc = new SessionCheck();
	
	@RequestMapping(value="companyReg.do", method=POST)
	public String action( HttpServletRequest request, Model model, HttpSession session) throws Exception {
		String bln = (String)session.getAttribute("bln");
		File f = new File("C:/dev/workspace/mkjg/WebContent/upload/"+bln+"/");
		if(!f.exists()) {
			f.mkdirs();
		}
		//1.파일업로드 객체 생성
		String repository="C:/dev/workspace/mkjg/WebContent/upload/"+bln;
		int maxSize=1024*1024*10;
		 
		MultipartRequest mr=new MultipartRequest(request,repository,maxSize,"UTF-8",new DefaultFileRenamePolicy());
		
		ClnRegData crd = new ClnRegData();
	
		DecimalFormat df = new DecimalFormat("00");
		String openHH = df.format(Integer.parseInt(mr.getParameter("openHH")));
		String endHH = df.format(Integer.parseInt(mr.getParameter("endHH")));
		String openNightHH = df.format(Integer.parseInt(mr.getParameter("openNightHH")));
		String openNightMM = df.format(Integer.parseInt(mr.getParameter("openNightMM")));
		String endNightHH = df.format(Integer.parseInt(mr.getParameter("endNightHH")));
		String endNightMM = df.format(Integer.parseInt(mr.getParameter("endNightMM")));
	crd.setCKind(mr.getParameter("cKind"));
	crd.setCId((String)session.getAttribute("cId"));
	crd.setHName(mr.getParameter("hName"));
	crd.setCBln(mr.getParameter("cBln"));
	crd.setCName(mr.getParameter("cName"));
	crd.setCPhone(mr.getParameter("cPhone"));
	crd.setCMail(mr.getParameter("cMail1")+"@"+mr.getParameter("cMail2"));
	crd.setOpenTime(openHH+":"+mr.getParameter("openMM"));
	crd.setEndTime(endHH+":"+mr.getParameter("endMM"));
	crd.setCPost(mr.getParameter("sample4_postcode"));
	crd.setCAddr1(mr.getParameter("sample4_jibunAddress"));
	crd.setCAddr2(mr.getParameter("detailAddr"));
	crd.setMedicine(mr.getParameter("medicine"));
	crd.setSurgery(mr.getParameter("surgery"));
	crd.setBeauty(mr.getParameter("beauty"));
	crd.setHosCare(mr.getParameter("hosCare"));
	crd.setIntro(mr.getParameter("intro"));
	crd.setLoc_x(mr.getParameter("LOC_X"));
	crd.setLoc_y(mr.getParameter("LOC_Y"));
	crd.setNight(mr.getParameter("night"));
	crd.setWeek(mr.getParameter("week"));
	crd.setOpenNightTime(openNightHH+":"+openNightMM);
	crd.setEndNightTime(endNightHH+":"+endNightMM);
	crd.setImg1(mr.getParameter("uploadFile1"));	
	crd.setImg2(mr.getParameter("uploadFile2"));	
	crd.setImg3(mr.getParameter("uploadFile3"));	
	crd.setImg4(mr.getParameter("uploadFile4"));	
	
	if(cs.insertClinic(crd)==1) {
		cs.insertNightClinic(crd);
		url = "clinic/cln_company_manage/cln_reg/cln_reg_OK";
	}else {
		url = "clinic/cln_company_manage/cln_reg/cln_reg";
	}//end if
	    return url;
	}
	
	@RequestMapping(value="monitoring_list.do", method=GET)
	public String monitoringList(HttpSession session, Model model, @RequestParam(defaultValue="1")int currentPage)throws SQLException {
		String bln = (String)session.getAttribute("bln");
		MtrBlnCurrentPage mbcp = new MtrBlnCurrentPage();
		mbcp.setBln(bln);
		mbcp.setCurrentPage(currentPage);
		
		List<MtrList> mtrList =  cs.selectMtrList(mbcp);
		model.addAttribute("mtr_list", mtrList);
		
		String indexList = cs.mtrIndexList(mbcp);
		model.addAttribute("mtr_index_list", indexList);
		
		url = "clinic/cln_use_management/monitoring/monitoring_list";
		return url; 
	}
	
	@RequestMapping(value="reservation_list.do", method=GET)
	public String reservationList(HttpSession session, Model model,  @RequestParam(defaultValue="1")int currentPage) throws SQLException{
		String bln = (String)session.getAttribute("bln");
		
		RevBlnCurrentPage rbcp = new RevBlnCurrentPage();
		rbcp.setBln(bln);
		rbcp.setCurrentPage(currentPage);
		
		List<RevList> revList = cs.selectRevList(rbcp);
		model.addAttribute("rev_list", revList);
		
		String indexList = cs.revPageIndexList(rbcp);
		model.addAttribute("rev_index_list", indexList);
		
		url = "clinic/cln_use_management/reservation/reservation_list";
		
		return url; 
	}
	
	@RequestMapping(value="use_list.do", method=GET)
	public String useList(HttpSession session, Model model, @RequestParam(defaultValue="1")int currentPage ) throws SQLException {
		String bln = (String)session.getAttribute("bln");
		
		UseBlnCurrentPage ubcp =  new UseBlnCurrentPage();
		ubcp.setBln(bln);
		ubcp.setCurrentPage(currentPage);
		
		List<UseHistoryList> useHistoryList = cs.selectUseHistoryList(ubcp);
		model.addAttribute("use_history_list", useHistoryList);
		
		String indexList = cs.useHistoryIndexList(ubcp);
		model.addAttribute("use_history_index", indexList);
		
		url = "clinic/cln_use_management/use/use_list";
		return url; 
	}
	
	@RequestMapping(value="user_qna_list.do", method=GET)
	public String userQna(HttpSession session, Model model, @RequestParam(defaultValue="1")int currentPage) throws SQLException{
		String bln = (String)session.getAttribute("bln");
		
		UserQnaBlnCurrentPage uqbcp =  new UserQnaBlnCurrentPage();
		uqbcp.setBln(bln);
		uqbcp.setCurrentPage(currentPage);
		
		List<UserQnaList> userQnalist = cs.selectUserQnaList(uqbcp);
		model.addAttribute("user_qna_list",userQnalist);
		
		String indexList = cs.userQnaIndexList(uqbcp);
		model.addAttribute("user_qna_index",indexList);
		
		url = "clinic/cln_qna/user/user_qna_list";
		return url; 
	}
	
	@RequestMapping(value="mgr_qna_list.do", method=GET)
	public String mgrQna(HttpSession session, Model model, @RequestParam(defaultValue="1")int currentPage) throws SQLException{
		String cId = (String)session.getAttribute("cId");
		
		MgrQnaBlnCurrentPage mqbcp = new MgrQnaBlnCurrentPage();
		mqbcp.setCId(cId);
		mqbcp.setCurrentPage(currentPage);
		
		List<MgrQnaList> mgrQnaList = cs.selectMgrQnaList(mqbcp);
		model.addAttribute("mgr_qna_list", mgrQnaList);
		
		String indexList = cs.mgrQnaIndexList(mqbcp);
		model.addAttribute("mgr_qna_index",indexList);
		
		url = "clinic/cln_qna/mgr/mgr_qna_list";
		return url; 
	}
	
	@RequestMapping(value="cln_reg.do", method= {POST ,GET})
	public String clnReg(ClnRegData crd/*, @RequestParam("uploadFile") MultipartFile[] file, HttpServletRequest request, Model model, HttpSession session*/)throws Exception {
		
/*		String bln = (String)session.getAttribute("bln");

		File folder = new File("C:/dev/workspace/mkjg/WebContent/upload/"+bln);
		if(!folder.exists()) {
			folder.mkdirs();
		}//end if
		
		for(int i=0; i<file.length; i++) {
			File f = new File("C:/dev/workspace/mkjg/WebContent/upload/"+bln+"/"+file[i].getOriginalFilename());
			file[i].transferTo(f);
		}*/
		
		url = "clinic/cln_company_manage/cln_reg/cln_reg";
		return url; 
	}
	
	@RequestMapping(value="logout.do", method=GET)
	public String clnLogout(SessionStatus ss) {
		ss.setComplete();
		url = "clinic/cln_login/login";
		return url; 
	}

	//인덱스두를 받으면 리턴이 동적으로 되야되고
	//세션이없으면 다 로그인으로 빠짐
	@RequestMapping(value="index_cln.do", method= {POST,GET})
	//public String index(HttpSession session, Model model, String id, String pass, String check, ClinicIdCheck cic) throws SQLException{
	public String index(HttpSession session, Model model, ClinicIdCheck cic, IdPw ip) throws SQLException{
		if(cic.getCId()==null || cic.getPass() == null) {
			url="clinic/cln_login/login";
		}else { // null이 아니면 로직체크해서 메인 페이지로 이동시킴, aprvl이 N, Y인 로직도 추가해야함
			model.addAttribute("cId", cic.getCId()); // 사업자 아이디 세션 할당
			String bln = cs.selectBln(cic);
			model.addAttribute("bln", bln); // 사업자 등록번호 세션 할당
			//아이디 또는 패스워드가 null이면 다시 로그인 화면으로 이동시킴
			
			String name = cs.selectName(cic);
			model.addAttribute("cName", name); // 사업자 이름 세션 할당
					
			List<NoticeTitle> noticeTitlelist = cs.selectNoticeTitle();
			model.addAttribute("notice_title_list", noticeTitlelist);
			
			List<TodayReg> todayReglist = cs.selectTodayReg(bln);
			model.addAttribute("today_reg_list", todayReglist);
			
			JSONObject weekRegDayCnt = cs.selectWeekRegDayCnt(bln);
			model.addAttribute("week_reg_day_cnt", weekRegDayCnt);
			
			JSONObject weekQGCDayCnt = cs.selectWeekQGCCnt(bln);
			model.addAttribute("week_QGC_Day_Cnt", weekQGCDayCnt);
			url = "clinic/cln_main/cln_main_approval_OK";
		}//end else
		return url; 
	}//login
	
	@ResponseBody
	@RequestMapping(value="cIdCheck.do", method=POST)
	public String cIdCheck(String joinCId) throws SQLException{
		
		int cIdCheck = cs.selectCIdCheck(joinCId);
		return java.lang.String.valueOf(cIdCheck);
	}
	
	@RequestMapping(value="join.do", method=GET)
	public String join() {
		url = "clinic/cln_login/cln_join";
		return url;
	}
	@ResponseBody
	@RequestMapping(value="joinCheck.do", method=POST)
	public String joinCheck(CeoAddJoin caj, HttpServletRequest hsr) throws SQLException {
//		caj.setCIp(hsr.getRemoteAddr());
//		System.out.println(hsr.getRemoteAddr());
		return java.lang.String.valueOf(cs.insertCeo(caj));
	}
	
	@RequestMapping(value="cln_join_OK.do", method=GET)
	public String joinOK()throws SQLException{
		url = "clinic/cln_login/cln_join_OK";
		return url;
	}
	
	@RequestMapping(value="revAprvl.do",method=POST)
	@ResponseBody
	public String revAprvl(AprvlBseq ab)throws SQLException{
		int cnt = cs.updateRevAprvl(ab);
		
		JSONObject obj=new JSONObject();
		obj.put("data",cnt);
		
		return obj.toJSONString();
	}
	
	public String loginSession()throws SQLException{
		
		
		return url;
	}
	
}//class
