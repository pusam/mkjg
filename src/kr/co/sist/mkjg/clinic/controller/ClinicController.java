package kr.co.sist.mkjg.clinic.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.io.File;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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
import kr.co.sist.mkjg.clinic.service.ClinicService;
import kr.co.sist.mkjg.clinic.util.SessionCheck;
import kr.co.sist.mkjg.clinic.vo.AprvlBseq;
import kr.co.sist.mkjg.clinic.vo.CIdCPass;
import kr.co.sist.mkjg.clinic.vo.CeoAddJoin;
import kr.co.sist.mkjg.clinic.vo.ClinicIdCheck;
import kr.co.sist.mkjg.clinic.vo.ClnRegData;
import kr.co.sist.mkjg.clinic.vo.IdSearch;
import kr.co.sist.mkjg.clinic.vo.InsertClnImg;
import kr.co.sist.mkjg.clinic.vo.MgrQnaBlnCurrentPage;
import kr.co.sist.mkjg.clinic.vo.MgrQnaData;
import kr.co.sist.mkjg.clinic.vo.MtrBlnCurrentPage;
import kr.co.sist.mkjg.clinic.vo.MtrInsert;
import kr.co.sist.mkjg.clinic.vo.MtrMseq;
import kr.co.sist.mkjg.clinic.vo.PwSearch;
import kr.co.sist.mkjg.clinic.vo.RevBlnCurrentPage;
import kr.co.sist.mkjg.clinic.vo.UseBlnCurrentPage;
import kr.co.sist.mkjg.clinic.vo.UseHistoryInfo;
import kr.co.sist.mkjg.clinic.vo.UserQnaAnswer;
import kr.co.sist.mkjg.clinic.vo.UserQnaBlnCurrentPage;
import kr.co.sist.mkjg.protector.util.RandomPass;

@Controller
@SessionAttributes({"cId","bln","cName"})
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
		String repository="C:/dev/workspace/mkjg/WebContent/upload/"+bln+"/";
		int maxSize=1024*1024*10;
		 
		MultipartRequest mr=new MultipartRequest(request,repository,maxSize,"UTF-8",new DefaultFileRenamePolicy());
		List<String> saveFiles = new ArrayList<>();
		Enumeration files = mr.getFileNames();
		String fileName= "";
		while(files.hasMoreElements()) {
			fileName = (String)files.nextElement();
			saveFiles.add(mr.getFilesystemName(fileName));
		}
		
		InsertClnImg ici = new InsertClnImg();
		ici.setBln(bln);
		ici.setPath(repository);
		ici.setReg_id((String)session.getAttribute("cId"));
		ici.setReg_ip("127.0.0.1");
		ici.setImages(saveFiles);
		
		ClnRegData crd = new ClnRegData();
		
		DecimalFormat df = new DecimalFormat("00");
		String openHH = df.format(Integer.parseInt(mr.getParameter("openHH")));
		String endHH = df.format(Integer.parseInt(mr.getParameter("endHH")));
		
		String openNightHH = (String)mr.getParameter("openNightHH");
		String openNightMM = (String)mr.getParameter("openNightMM");
		String endNightHH = (String)mr.getParameter("endNightHH");
		String endNightMM = (String)mr.getParameter("endNightMM");
		
		if(!"none".equals(openNightHH) && !"none".equals(openNightMM) &&
				!"none".equals(endNightHH) && !"none".equals(endNightMM)) {
			openNightHH = df.format(Integer.parseInt(openNightHH));
			openNightMM = df.format(Integer.parseInt(openNightMM));
			endNightHH = df.format(Integer.parseInt(endNightHH));
			endNightMM = df.format(Integer.parseInt(endNightMM));
		}
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
	crd.setImg1(repository+mr.getParameter("uploadFile1"));
	crd.setImg2(repository+mr.getParameter("uploadFile2"));	
	crd.setImg3(repository+mr.getParameter("uploadFile3"));	
	crd.setImg4(repository+mr.getParameter("uploadFile4"));
	
	if(cs.insertClinic(crd)==1) {
		cs.insertNightClinic(crd);
		cs.insertClnImg(ici);
		url = "clinic/cln_company_manage/cln_reg/cln_reg_OK";
	}else {
		url = "clinic/cln_company_manage/cln_reg/cln_reg";
	}//end if
	    return url;
	}
	
	@RequestMapping(value="monitoring_list.do", method=GET)
	public String monitoringList(HttpSession session, Model model, @RequestParam(defaultValue="1")int currentPage, String status, String search)throws SQLException {
		String bln = (String)session.getAttribute("bln");
		MtrBlnCurrentPage mbcp = new MtrBlnCurrentPage();
		mbcp.setBln(bln);
		mbcp.setCurrentPage(currentPage);
		mbcp.setSearch(search);
		mbcp.setStatus(status);
		
		List<MtrList> mtrList =  cs.selectMtrList(mbcp);
		model.addAttribute("mtr_list", mtrList);
		
		String indexList = cs.mtrIndexList(mbcp);
		model.addAttribute("mtr_index_list", indexList);
		
		model.addAttribute("mtrSearch",search);
		
		model.addAttribute("mtrStatus", status);
		
		url = "clinic/cln_use_management/monitoring/monitoring_list";
		return url; 
	}
	
	@RequestMapping(value="reservation_list.do", method=GET)
	public String reservationList(HttpSession session, Model model,  @RequestParam(defaultValue="1")int currentPage, String status, String search) throws SQLException{
		String bln = (String)session.getAttribute("bln");
		
		RevBlnCurrentPage rbcp = new RevBlnCurrentPage();
		rbcp.setBln(bln);
		rbcp.setCurrentPage(currentPage);
		rbcp.setStatus(status);
		rbcp.setSearch(search);
		
		List<RevList> revList = cs.selectRevList(rbcp);
		model.addAttribute("rev_list", revList);
		
		String indexList = cs.revPageIndexList(rbcp);
		model.addAttribute("rev_index_list", indexList);
		
		model.addAttribute("revSearch", search);
		
		model.addAttribute("revStatus",status);
		
		url = "clinic/cln_use_management/reservation/reservation_list";
		
		return url; 
	}
	
	@RequestMapping(value="use_list.do", method=GET)
	public String useList(HttpSession session, Model model, @RequestParam(defaultValue="1")int currentPage, String status, String search ) throws SQLException {
		String bln = (String)session.getAttribute("bln");
		
		UseBlnCurrentPage ubcp =  new UseBlnCurrentPage();
		ubcp.setBln(bln);
		ubcp.setCurrentPage(currentPage);
		ubcp.setStatus(status);
		ubcp.setSearch(search);
		
		List<UseHistoryList> useHistoryList = cs.selectUseHistoryList(ubcp);
		model.addAttribute("use_history_list", useHistoryList);
		
		String indexList = cs.useHistoryIndexList(ubcp);
		model.addAttribute("use_history_index", indexList);
		
		model.addAttribute("use_search", search);
		
		model.addAttribute("use_status", status);
		
		url = "clinic/cln_use_management/use/use_list";
		return url; 
	}
	
	@RequestMapping(value="user_qna_list.do", method=GET)
	public String userQna(HttpSession session, Model model, @RequestParam(defaultValue="1")int currentPage, String status, String search) throws SQLException{
		String bln = (String)session.getAttribute("bln");
		
		UserQnaBlnCurrentPage uqbcp =  new UserQnaBlnCurrentPage();
		uqbcp.setBln(bln);
		uqbcp.setCurrentPage(currentPage);
		uqbcp.setStatus(status);
		uqbcp.setSearch(search);
		
		List<UserQnaList> userQnalist = cs.selectUserQnaList(uqbcp);
		model.addAttribute("user_qna_list",userQnalist);
		
		String indexList = cs.userQnaIndexList(uqbcp);
		model.addAttribute("user_qna_index",indexList);
		
		model.addAttribute("user_qna_search", search);
		
		model.addAttribute("user_qna_status", status);
		
		url = "clinic/cln_qna/user/user_qna_list";
		return url; 
	}
	
	@RequestMapping(value="mgr_qna_list.do", method=GET)
	public String mgrQna(HttpSession session, Model model, @RequestParam(defaultValue="1")int currentPage, String status, String search) throws SQLException{
		String cId = (String)session.getAttribute("cId");
		
		MgrQnaBlnCurrentPage mqbcp = new MgrQnaBlnCurrentPage();
		mqbcp.setCId(cId);
		mqbcp.setCurrentPage(currentPage);
		mqbcp.setSearch(search);
		mqbcp.setStatus(status);
		
		List<MgrQnaList> mgrQnaList = cs.selectMgrQnaList(mqbcp);
		model.addAttribute("mgr_qna_list", mgrQnaList);
		
		String indexList = cs.mgrQnaIndexList(mqbcp);
		model.addAttribute("mgr_qna_index",indexList);
		
		model.addAttribute("mgr_qna_status",status);
		
		model.addAttribute("mgr_qna_search",search);
		
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
	public String index(HttpSession session, Model model, ClinicIdCheck cic) throws SQLException{
//		if(cic.getCId()==null || cic.getPass() == null) {
//			url="clinic/cln_login/login";
//		}else { // null이 아니면 로직체크해서 메인 페이지로 이동시킴, aprvl이 N, Y인 로직도 추가해야함
//			model.addAttribute("cId", cic.getCId()); // 사업자 아이디 세션 할당
//			String bln = cs.selectBln(cic);
//			model.addAttribute("bln", bln); // 사업자 등록번호 세션 할당
//			//아이디 또는 패스워드가 null이면 다시 로그인 화면으로 이동시킴
//			
//			String name = cs.selectName(cic);
//			model.addAttribute("cName", name); // 사업자 이름 세션 할당
//					
//			List<NoticeTitle> noticeTitlelist = cs.selectNoticeTitle();
//			model.addAttribute("notice_title_list", noticeTitlelist);
//			
//			List<TodayReg> todayReglist = cs.selectTodayReg(bln);
//			model.addAttribute("today_reg_list", todayReglist);
//			
//			JSONObject weekRegDayCnt = cs.selectWeekRegDayCnt(bln);
//			model.addAttribute("week_reg_day_cnt", weekRegDayCnt);
//			
//			JSONObject weekQGCDayCnt = cs.selectWeekQGCCnt(bln);
//			model.addAttribute("week_QGC_Day_Cnt", weekQGCDayCnt);
//			url = "clinic/cln_main/cln_main_approval_OK";
//		}//end else
		url="clinic/cln_login/login";
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
	
	@ResponseBody
	@RequestMapping(value="login.do", method= {GET,POST})
	public String loginSession(ClinicIdCheck cic, Model model)throws SQLException{
		int cnt = cs.selectIdPassCheck(cic);
		
		model.addAttribute("cId", cic.getCId()); // 사업자 아이디 세션 할당
		
		String bln = cs.selectBln(cic);
		model.addAttribute("bln", bln); // 사업자 등록번호 세션 할당
		
		String name = cs.selectName(cic);
		model.addAttribute("cName", name); // 사업자 이름 세션 할당
		
		return String.valueOf(cnt);
	}
	
	@RequestMapping(value="main.do", method=GET)
	public String main(HttpSession session, Model model, ClinicIdCheck cic)throws SQLException{
		String bln = (String)session.getAttribute("bln");
		String aprvl = "Y";
		aprvl = cs.selectClinicAprvl(bln);
		List<NoticeTitle> noticeTitlelist = cs.selectNoticeTitle();
		model.addAttribute("notice_title_list", noticeTitlelist);
		if("Y".equals(aprvl)) {
		
		List<TodayReg> todayReglist = cs.selectTodayReg(bln);
		model.addAttribute("today_reg_list", todayReglist);
		
		JSONObject weekRegDayCnt = cs.selectWeekRegDayCnt(bln);
		model.addAttribute("week_reg_day_cnt", weekRegDayCnt);
		
		JSONObject weekQGCDayCnt = cs.selectWeekQGCCnt(bln);
		model.addAttribute("week_QGC_Day_Cnt", weekQGCDayCnt);
		
		url = "clinic/cln_main/cln_main_approval_OK";
		}else {
			url = "clinic/cln_main/cln_main_approval";
		}
		return url;
	}
	
	@RequestMapping(value="mgr_qna_answer.do", method=GET)
	public String mgrQnaAnswer()throws SQLException{
		url = "clinic/cln_qna/mgr/mgr_qna_answer";
		return url;
	}
	
	@RequestMapping(value="mgr_qna_OK.do", method=GET)
	public String mgrQnaOK(MgrQnaData mqd, HttpSession session)throws SQLException{
		mqd.setCId((String)session.getAttribute("cId"));
		if(cs.insertClnQna(mqd)==1) {
			url = "clinic/cln_qna/mgr/mgr_qna_OK";
		}else {
			url = "clinic/cln_qna/mgr/mgr_qna_list";
		}
		return url;
	}
	
	@RequestMapping(value="mgr_qna_answer_view.do", method=POST)
	public String mgrQnaView(String qua_seq, Model model)throws SQLException{
		List<MgrQnaAnswer> list = cs.selectMgrQnaAnswer(qua_seq);
		
		model.addAttribute("mgr_qna_ans", list);
		
		url = "clinic/cln_qna/mgr/mgr_qna_answer_view";
		return url;
	}
	
	@RequestMapping(value="user_qna_answer_view.do", method= {GET,POST})
	public String userQnaView(String qgc_seq, String rstatus,Model model)throws SQLException{
		if("N".equals(rstatus)) {
			List<UserQnaView> list = cs.selectUserQna(qgc_seq);
			model.addAttribute("user_qna", list);
			url = "clinic/cln_qna/user/user_qna_answer";
		}else {
			List<UserQnaAnswerReadOnly> list = cs.selectUserQnaReadOnly(qgc_seq);
			model.addAttribute("user_qna_read_only", list);
			url = "clinic/cln_qna/user/user_qna_answer_readOnly";
		}
		return url;
	}
	
	@RequestMapping(value="insert_user_qna_answer.do", method=POST)
	public String insertUserQnaAnswer(UserQnaAnswer uqa, HttpSession session) throws SQLException{
		uqa.setRid((String)session.getAttribute("cId"));
		uqa.setRip("127.0.0.1");
		int cnt = cs.insertUserQnaAnswer(uqa);
		if(cnt == 1) {
			url = "clinic/cln_qna/user/user_qna_OK";
		}else {
			url = "clinic/cln_qna/user/user_qna_answer";
		}
		return url;
	}
	
	@RequestMapping(value="id_search.do", method=GET)
	public String idSearch()throws SQLException {
		url = "clinic/cln_login/id_search";
		return url;
	}
	
	@ResponseBody
	@RequestMapping(value="id_search_process.do", method=POST)
	public String idSearchProcess(IdSearch is, Model model)throws SQLException {
		String searchId = null;
		searchId = cs.selectCIdCheck(is);
		model.addAttribute("searchId", searchId);
		return searchId;
	}
	
	@RequestMapping(value="pw_search.do", method=GET)
	public String pwSearch()throws SQLException {
		url = "clinic/cln_login/pw_search";
		return url;
	}
	
	@ResponseBody
	@RequestMapping(value="pw_search_process.do", method=POST)
	public String pwSearchProcess(PwSearch ps, Model model)throws SQLException {
		String searchPw = null;
		String cId = cs.selectCPwCheck(ps);
		if("".equals(cId) || cId != null) {
			searchPw = RandomPass.getRamdomPassword(10);
			CIdCPass cicp = new CIdCPass();
			cicp.setCId(cId);
			cicp.setCPass(searchPw);
			cicp.setCheck(ps.getCheck());
			cs.updateCPass(cicp);
		}
		return searchPw;
	}
	
	@RequestMapping(value="mtr_add.do", method=POST)
	public String mtrAdd(UseHistoryInfo uhi, Model model)throws SQLException{
		model.addAttribute("bseq", uhi.getBseq());
		model.addAttribute("pname", uhi.getPname());
		model.addAttribute("tel", uhi.getTel());
		model.addAttribute("bdate", uhi.getBdate());
		
		url = "clinic/cln_use_management/monitoring/monitoring_add";
		return url;
	}
	
	@RequestMapping(value="mtr_add_process.do", method= {GET,POST})
	public String mtrAddProcess(HttpServletRequest request, HttpSession session,String bseq)throws Exception{
		File f = new File("C:/dev/workspace/mkjg/WebContent/upload_mtr/"+bseq+"/");
		if(!f.exists()) {
			f.mkdirs();
		}
		//1.파일업로드 객체 생성
		String repository="C:/dev/workspace/mkjg/WebContent/upload_mtr/"+bseq+"/";
		int maxSize=1024*1024*10;
		 
		MultipartRequest mr=new MultipartRequest(request,repository,maxSize,"UTF-8",new DefaultFileRenamePolicy());
		List<String> saveFiles = new ArrayList<>();
		Enumeration files = mr.getFileNames();
		String fileName= "";
		while(files.hasMoreElements()) {
			fileName = (String)files.nextElement();
			saveFiles.add(mr.getFilesystemName(fileName));
		}
		MtrInsert mi = new MtrInsert();
		mi.setBseq(bseq);
		mi.setMid((String)session.getAttribute("cId"));
		mi.setReply(mr.getParameter("reply"));
		mi.setMip("127.0.0.1");
		mi.setImages(saveFiles);
		mi.setPath(repository);
		mi.setBln((String)session.getAttribute("bln"));
		
		if(cs.insertMtr(mi)==1) {
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			MtrMseq mm = new MtrMseq();
			mm.setBln((String)session.getAttribute("bln"));
			mm.setCid((String)session.getAttribute("cId"));
			mm.setDate(sdf.format(date));
			mi.setMseq(cs.mtrMseq(mm));
			cs.mtrImgInsert(mi);
			url = "clinic/cln_use_management/monitoring/monitoring_OK";
		};
		
		return url;
	}
	
}//class
