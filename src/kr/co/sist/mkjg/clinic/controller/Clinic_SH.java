package kr.co.sist.mkjg.clinic.controller;


import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import kr.co.sist.mkjg.clinic.domain.EmpListDomain;
import kr.co.sist.mkjg.clinic.domain.HogListDomain;
import kr.co.sist.mkjg.clinic.domain.NoticeListDomain;
import kr.co.sist.mkjg.clinic.service.ClinicService;
import kr.co.sist.mkjg.clinic.service.ClnService;
import kr.co.sist.mkjg.clinic.util.SessionCheck;
import kr.co.sist.mkjg.clinic.vo.PageMaker;
import kr.co.sist.mkjg.clinic.vo.clnImgVO;
import kr.co.sist.mkjg.clinic.vo.clnInfoView;
import kr.co.sist.mkjg.clinic.vo.clnModify;
import kr.co.sist.mkjg.clinic.vo.clnModifyNight;
import kr.co.sist.mkjg.clinic.vo.hogInsert;
import kr.co.sist.mkjg.clinic.vo.insertTreatment;
import kr.co.sist.mkjg.clinic.vo.ClinicIdCheck;
import kr.co.sist.mkjg.clinic.vo.EmpMember;
import kr.co.sist.mkjg.clinic.vo.EmpModi;
import kr.co.sist.mkjg.clinic.vo.HogAddView;
import kr.co.sist.mkjg.clinic.vo.treatmentView;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class Clinic_SH {
	
	@Autowired
	ClnService clnService;
	private SessionCheck sc = new SessionCheck();
	private String url="";
	@Autowired
	private ClinicService cs;
	
	
	@RequestMapping(value="employee_list.do", method= {GET,POST})
	public ModelAndView list(@RequestParam(defaultValue="1") int curPage, Model model, HttpSession session,
			@RequestParam(defaultValue="") String keyword) throws Exception{
		String bln = (String)session.getAttribute("bln");
		int count = clnService.totalEmpCount(bln, keyword);
		
		PageMaker pagemaker = new PageMaker(count, curPage);
		int start = pagemaker.getPageBegin();
		int end = pagemaker.getPageEnd();
		
		List<EmpListDomain> list = null;
		
		list = clnService.listAll(start, end, bln, keyword);
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("list", list);
		map.put("count", count);
		map.put("pageMaker", pagemaker);
		map.put("keyword", keyword);
		ModelAndView mav = new ModelAndView();
		mav.addObject("map", map);
		
		if(session.getAttribute("cId")!=null) {
			mav.setViewName("clinic/cln_company_manage/employee/employee_list");
		}else{
			/*return sc.checkSession((String)session.getAttribute("cId"));*/
		}//end else
		return mav;
	}//list
	
	@RequestMapping(value="employee_modi.do", method=GET)
	public String view(String eid, Model model, HttpSession session) throws Exception{
		model.addAttribute("view", clnService.empView(eid));
		if(session.getAttribute("cId")!=null) {
			url="clinic/cln_company_manage/employee/employee_modi";
		}else{
			url=sc.checkSession((String)session.getAttribute("cId"));
		}//end else
		return url;
	}//view
	
	@RequestMapping(value="employee_modi_ok_v.do", method= {GET,POST})
	@ResponseBody
	public String update(EmpModi em, HttpSession session) throws Exception {
		if(session.getAttribute("cId")!=null) {
			return clnService.empUpdate(em);
		}else{
			url=sc.checkSession((String)session.getAttribute("cId"));
			return url;
		}//end else
	}//update
	
	@RequestMapping(value="employee_modi_OK.do", method=GET)
	public String modiOK(HttpSession session) {
		
		if(session.getAttribute("cId")!=null) {
			url="clinic/cln_company_manage/employee/employee_modi_OK";
		}else{
			url=sc.checkSession((String)session.getAttribute("cId"));
		}//end else
		return url;
	}//join
	
	
	@RequestMapping(value="employee_join.do", method=GET)
	public String join(HttpSession session) {
		
		if(session.getAttribute("cId")!=null) {
			url="clinic/cln_company_manage/employee/employee_join";
		}else{
			url=sc.checkSession((String)session.getAttribute("cId"));
		}//end else
		
		return url;
	}//join
	@RequestMapping(value="employee_idcheck.do", method=POST)
	@ResponseBody
	public String idCheck(String eid, HttpSession session) throws Exception{
		int cnt = 0;
			cnt = clnService.idCheck(eid);
		
		JSONObject json=new JSONObject();
		
		if(session.getAttribute("cId")!=null) {
			json.put("cnt", cnt);
			return json.toJSONString();
		}else{
			url=sc.checkSession((String)session.getAttribute("cId"));
			return url;
		}//end else
	}//idCheck
	
	@RequestMapping(value="employee_join_ok.do", method= {GET,POST})
	@ResponseBody
	public String joinEmp(EmpMember em, HttpSession session) throws Exception{
		String bln = (String)session.getAttribute("bln");
		
		em.setBln(bln);
		if(session.getAttribute("cId")!=null) {
			return String.valueOf(clnService.insertEmp(em));
		}else{
			url=sc.checkSession((String)session.getAttribute("cId"));
			return url;
		}//end else
	}//joinEmp
	
	
	@RequestMapping(value="employee_OK.do", method=GET)
	public String joinOK(HttpSession session) {
		
		if(session.getAttribute("cId")!=null) {
			url="clinic/cln_company_manage/employee/employee_OK";
		}else{
			url=sc.checkSession((String)session.getAttribute("cId"));
		}//end else
		
		return url;
	}//join
	
	
	@RequestMapping(value="hog_list.do", method= {GET,POST})
	public ModelAndView hogList(@RequestParam(defaultValue="1") int curPage, Model model, HttpSession session,
			@RequestParam(defaultValue="") String keyword) throws Exception{
		String bln = (String)session.getAttribute("bln");
		int count = clnService.totalHogCount(bln, keyword);
		
		PageMaker pagemaker = new PageMaker(count, curPage);
		int start = pagemaker.getPageBegin();
		int end = pagemaker.getPageEnd();
		
		List<HogListDomain> list = null;
		list = clnService.hogListAll(start, end, bln, keyword);
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("list", list);
		map.put("count", count);
		map.put("pageMaker", pagemaker);
		map.put("keyword", keyword);
		ModelAndView mav = new ModelAndView();
		mav.addObject("map", map);
		 
		if(session.getAttribute("cId")!=null) {
			mav.setViewName("clinic/cln_declaration/hog_list");
		}else{
			/*return sc.checkSession((String)session.getAttribute("cId"));*/
		}//end else
		return mav;
	}//join

	
	@RequestMapping(value="hog_info.do", method=GET)
	public String hogView(String cl_seq, Model model, HttpSession session) throws Exception{
		String bln = (String)session.getAttribute("bln");
		model.addAttribute("view", clnService.hogView(cl_seq, bln));
		
		if(session.getAttribute("cId")!=null) {
			url="clinic/cln_declaration/hog_info";
		}else{
			url=sc.checkSession((String)session.getAttribute("cId"));
		}//end else
		return url;
	}//hogView
	
	@RequestMapping(value="hog_register.do", method=GET)
	public String hogAdd(String bseq, Model model, HttpSession session) throws Exception{
		String bln = (String)session.getAttribute("bln");
		model.addAttribute("view", clnService.hogAddView(bseq, bln));
		if(session.getAttribute("cId")!=null) {
			url="clinic/cln_declaration/hog_register";
		}else{
			url=sc.checkSession((String)session.getAttribute("cId"));
		}//end else
		return url;
	}//hogAdd

	
	@RequestMapping(value="hog_register_ok.do", method= {GET,POST})
	@ResponseBody
	public String hogAddOK(hogInsert hoin ,HttpSession session) throws Exception{
		String cid = (String)session.getAttribute("cId");
		hoin.setWid(cid);
		
		if(session.getAttribute("cId")!=null) {
			return String.valueOf(clnService.insertHog(hoin));
		}else{
			url=sc.checkSession((String)session.getAttribute("cId"));
		}//end else
		return url;
	}//hogAddOK
	
	@RequestMapping(value="hog_OK.do", method=GET)
	public String hogJoinOK(HttpSession session) {
		
		if(session.getAttribute("cId")!=null) {
			url="clinic/cln_declaration/hog_OK";
		}else{
			url=sc.checkSession((String)session.getAttribute("cId"));
		}//end else
		return url;
	}//hogJoinOK
	
	@RequestMapping(value="notice_list.do", method= {GET,POST})
	public ModelAndView noticeList(@RequestParam(defaultValue="1") int curPage,
			Model model, HttpSession session, @RequestParam(defaultValue="") String keyword)
					throws Exception{
		String bln = (String)session.getAttribute("bln");
		int count = clnService.totalNoticeCount(bln, keyword);
		
		PageMaker pagemaker = new PageMaker(count, curPage);
		int start = pagemaker.getPageBegin();
		int end = pagemaker.getPageEnd();
		
		List<NoticeListDomain> list = null;
		list = clnService.noticeListAll(start, end, bln, keyword);
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("list", list);
		map.put("count", count);
		map.put("pageMaker", pagemaker);
		map.put("keyword", keyword);
		ModelAndView mav = new ModelAndView();
		mav.addObject("map", map);
		 
		if(session.getAttribute("cId")!=null) {
			mav.setViewName("clinic/cln_notice/notice_list");
		}else{
			mav.setViewName("clinic/cln_login/login");
		}//end else
		return mav;
	}//noticeList

	@RequestMapping(value="ceo_login.do", method= GET)
	public String ceoCheck(HttpSession session) throws Exception{
			url="clinic/cln_company_manage/cln_info/ceo_login";
		return url;
	}//join
	
	@RequestMapping(value="clinicModi.do", method= {GET, POST})
	public String clinicView(Model model, HttpSession session,  SessionStatus ss, ClinicIdCheck cic) throws Exception{
			String bln = (String)session.getAttribute("bln");
			List<clnImgVO> list = null;
			list = clnService.clnImg(bln);
			
			model.addAttribute("view", clnService.clnView(bln));
			model.addAttribute("img", list);
			
			url="clinic/cln_company_manage/cln_info/cln_modi";
		 if(session.getAttribute("cId")!=null) {
			url="clinic/cln_company_manage/cln_info/cln_modi";
		}else{
			url="clinic/cln_company_manage/cln_info/ceo_login";
		}//end else
		return url;
	}//hogView
	
	@RequestMapping(value="cln_modi_d.do", method= {GET,POST})
	@ResponseBody
	public String clnModi(clnModify clnM, HttpSession session) throws Exception{
		String bln = (String)session.getAttribute("bln");
		clnM.setBln(bln);
		if(session.getAttribute("cId")!=null) {
			url=String.valueOf(clnService.clnUpdate(clnM));
			return url;
		}else{
			url=sc.checkSession((String)session.getAttribute("cId"));
			return url;
		}//end else
	}//joinEmp
	
	@RequestMapping(value="cln_modi_n.do", method= {GET,POST})
	@ResponseBody
	public String clnModiN(clnModifyNight clnMN, HttpSession session) throws Exception{
		String bln = (String)session.getAttribute("bln");
		clnMN.setBln(bln);
		if(session.getAttribute("cId")!=null) {
			url=String.valueOf(clnService.clnNUpdate(clnMN));
			return url;
		}else{
			url=sc.checkSession((String)session.getAttribute("cId"));
			return url;
		}//end else
	}//joinEmp
	
	
	@RequestMapping(value="cln_modi.do", method= GET)
	public String clnModiOK(HttpSession session) {
		if(session.getAttribute("cId")!=null) {
			url="clinic/cln_company_manage/cln_info/cln_OK";
		}else{
			url=sc.checkSession((String)session.getAttribute("cId"));
		}//end else
		
		return url;
	}//join
	
	@RequestMapping(value="notice_content.do", method=GET)
	public String noticeView(String not_seq, Model model, HttpSession session) throws Exception{
		model.addAttribute("view", clnService.noticeView(not_seq));
		if(session.getAttribute("cId")!=null) {
			url="clinic/cln_notice/notice_content";
		}else{
			url=sc.checkSession((String)session.getAttribute("cId"));
		}//end else
		return url;
	}//view
	
	@RequestMapping(value="treatment.do", method=GET)
	public String treatmentView(String bseq, String mseq, Model model, HttpSession session) throws Exception{
		String bln = (String)session.getAttribute("bln");
		System.out.println();
		model.addAttribute("view", clnService.treatmentView(bseq,bln));
		if(session.getAttribute("cId")!=null) {
			url="clinic/cln_use_management/use/use_detail";
		}else{
			url=sc.checkSession((String)session.getAttribute("cId"));
		}//end else
		return url;
	}//treatmentView
	
	@RequestMapping(value="use_detail_reason.do", method= {GET,POST})
	@ResponseBody
	public String insertTreatment(insertTreatment itm, HttpSession session) throws Exception {
		String bln = (String)session.getAttribute("bln");
		String cid = (String)session.getAttribute("cId");
		itm.setBln(bln);
		itm.setWid(cid);
		if(session.getAttribute("cId")!=null) {
			return clnService.insertTreatment(itm);
		}else{
			url=sc.checkSession((String)session.getAttribute("cId"));
			return url;
		}//end else
	}//insertTreatment
	
	@RequestMapping(value="use_detail_reason_modi.do", method= {GET,POST})
	@ResponseBody
	public String updateTreatment(insertTreatment itm, HttpSession session) throws Exception {
		String bln = (String)session.getAttribute("bln");
		String cid = (String)session.getAttribute("cId");
		itm.setBln(bln);
		itm.setWid(cid);
		if(session.getAttribute("cId")!=null) {
			return clnService.updateTreatment(itm);
		}else{
			url=sc.checkSession((String)session.getAttribute("cId"));
			return url;
		}//end else
	}//insertTreatment
	
	@RequestMapping(value="use_detail_modi_OK.do", method= {GET,POST})
	public String treatmentModiOK(HttpSession session) {
		if(session.getAttribute("cId")!=null) {
			url="clinic/cln_use_management/use/use_detail_modi_OK";
		}else{
			url=sc.checkSession((String)session.getAttribute("cId"));
		}//end else
		return url;
	}//treatmentModiOK
	  
	@RequestMapping(value="use_detail_OK.do", method= {GET,POST})
	public String treatmentInsertOK(HttpSession session) {
		if(session.getAttribute("cId")!=null) {
			url="clinic/cln_use_management/use/use_detail_OK";
		}else{
			url=sc.checkSession((String)session.getAttribute("cId"));
		}//end else
		return url;
	}//treatmentInsertOK
	

	
	
	
	
	@ExceptionHandler(SQLException.class)
	public ModelAndView searchError(SQLException se) {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("err/err");
		mav.addObject("err_msg", se);
		
		return mav;
	}//searchError
	

	
	
	
	

}
