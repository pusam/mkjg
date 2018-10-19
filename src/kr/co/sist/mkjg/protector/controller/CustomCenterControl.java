package kr.co.sist.mkjg.protector.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.sist.mkjg.protector.domain.AskList;
import kr.co.sist.mkjg.protector.domain.ReportList;
import kr.co.sist.mkjg.protector.service.CustomCenterService;
import kr.co.sist.mkjg.protector.vo.SelCntVO;

@Controller
public class CustomCenterControl {

	@Autowired
	private CustomCenterService ms;
	
	@RequestMapping(value="custom_center_ask.do", method=GET)
	public String searchAskList(HttpSession session,Model model,@RequestParam(defaultValue="1") int currentPage,String url) throws SQLException {
		String pid = (String)session.getAttribute("pid");
//		hs.getAttribute(model);
//		String id="ptest10";
		
		SelCntVO scvo=new SelCntVO();
		scvo.setPid("ptest01");
		scvo.setFieldName("qtitle");
		scvo.setKeyword("aa");
		
		// cnt ==> totalCount의 결과가 나온다.
		int cnt=ms.searchListCnt(scvo);
		List<AskList> list=ms.searchListAsk(scvo);
		int totalPage=ms.totalPage(cnt);
//		int tempPage=currentPage==null?1:Integer.parseInt(currentPage);
		int pageScale=10;
		
		int startNum=ms.startNum(currentPage);
		
		String indexList=ms.indexList(startNum, ms.endNum(startNum), totalPage, currentPage, "custom_center_ask.do");
		
		model.addAttribute("selectAskCnt",cnt); // toc의 역할을 한다.
		model.addAttribute("ask_list",list);
		
		model.addAttribute("list_size", totalPage);
		model.addAttribute("current_page", currentPage);
		model.addAttribute("ps", pageScale);
		model.addAttribute("indexList",indexList);
		
		return "prt/custom_center/custom_center_ask";
	}//searchAskList
	
	@RequestMapping(value="custom_center_ask_write.do", method=GET)
	public String searchAskWrite(Model model) throws SQLException {
		
		
		return "prt/custom_center/custom_center_ask_write";
	}//
	
	@RequestMapping(value="custom_center_ask_read.do", method=GET)
	public String searchAskRead() throws SQLException {

		
		return "prt/custom_center/custom_center_ask_read";
	}//
	
	@RequestMapping(value="custom_center_report.do", method=GET)
	public String searchReportList(Model model,HttpSession hs, @RequestParam(defaultValue="1") String currentPage) throws SQLException {

		SelCntVO scvo=new SelCntVO();
		scvo.setPid("ptest01");
		scvo.setFieldName("qtitle");
		scvo.setKeyword("aa");
		
		int cnt=ms.searchListCnt(scvo);
		List<ReportList> list=ms.searchListReport(scvo);
		System.out.println(list);
		 
		model.addAttribute("selectCnt",cnt);
		model.addAttribute("report_list",list);
		
		return "prt/custom_center/custom_center_report";
	}//
	@RequestMapping(value="custom_center_report_write.do", method=GET)
	public String searchReportWrite() throws SQLException {

		
		return "prt/custom_center/custom_center_report_write";
	}//
	
	@RequestMapping(value="custom_center_report_read.do", method=GET)
	public String searchReportRead() throws SQLException {

		
		return "prt/custom_center/custom_center_report_read";
	}//
	
	
	@ExceptionHandler(SQLException.class)
	public ModelAndView searchError(SQLException se) {
		ModelAndView mav=new ModelAndView();
		
		mav.setViewName("err/err");
		mav.addObject("err_msg",se);
		
		return mav;
	}//ModelAndView
}
