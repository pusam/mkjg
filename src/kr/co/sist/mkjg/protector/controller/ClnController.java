package kr.co.sist.mkjg.protector.controller;


import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.sist.mkjg.protector.domain.AllClnList;
import kr.co.sist.mkjg.protector.domain.NightClnList;
import kr.co.sist.mkjg.protector.vo.ClnInfo;
import kr.co.sist.mkjg.protector.vo.SectionVO;

@Controller
public class ClnController {
	@Autowired
	private kr.co.sist.mkjg.protector.service.ClnService cs;
	
	@RequestMapping(value="cln_search.do",method=GET)
	public String searchCln(Model model) throws SQLException {
		return "prt/cln/cln_search";
	}//searchCln
	
	@RequestMapping(value="cln_all.do",method=GET)
	public String searchAllCln(Model model) throws SQLException {
		List<String> sido_list=cs.selectSido();
		model.addAttribute("sido_list",sido_list);
		
		return "prt/cln/cln_all";
	}//searchAllCln
	
	@RequestMapping(value="select_sigungu.do",method=GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String searchSigungu(String sido) throws SQLException {
		String sigungu=cs.selectSigungu(sido);
		return sigungu;
	}//searchAllCln
	
	@RequestMapping(value="result_cln.do",method=GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String searchAllCln(Model model, SectionVO sv) throws SQLException {
		String sido=sv.getSido();
		System.out.println(sido);
		String sigungu=sv.getSigungu();
		System.out.println(sigungu);
		String list=cs.searchAllCln(sv);
		return list;
	}//searchAllCln
	
	
	@RequestMapping(value="cln_night.do",method=GET)
	public String searchNightCln(Model model) throws SQLException {
		List<String> sido_list=cs.selectSido();
		model.addAttribute("sido_list",sido_list);

		return "prt/cln/cln_night";
	}//searchNightCln

	
	
	////////////////////////////////////////////////////¼öÁ¤
	
	@RequestMapping(value="cln_info.do",method=GET)
	public String infoCln(Model model,String clinicNum) throws SQLException {
		return "prt/cln/cln_info";
	}//clnInfo
	
	
	@RequestMapping(value="cln_review.do",method=GET)
	public String reviewCln(Model model, SectionVO sv) throws SQLException {
		return "prt/cln/cln_review";
	}//clnReview
	
	@RequestMapping(value="cln_review_write.do",method=GET)
	public String reviewWriteCln(Model model, SectionVO sv) throws SQLException {
		return "prt/cln/cln_review_write";
	}//clnReviewWrite
	
	@RequestMapping(value="cln_ask.do",method=GET)
	public String askCln(Model model, SectionVO sv) throws SQLException {
		return "prt/cln/cln_ask";
	}//clnReviewWrite
	
	@RequestMapping(value="cln_book.do",method=GET)
	public String bookCln(Model model, SectionVO sv) throws SQLException {
		return "prt/cln/cln_book";
	}//clnReviewWrite
	
	@ExceptionHandler(SQLException.class)
	public ModelAndView searchError(SQLException se) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("err/err");
		mav.addObject("err_msg",se);
		
		return mav;
	}//searchError
	
}//class
