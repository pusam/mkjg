package kr.co.sist.mkjg.protector.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.sist.mkjg.protector.domain.Notice;
import kr.co.sist.mkjg.protector.domain.NoticeRead;
import kr.co.sist.mkjg.protector.vo.NoticeListVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

@Controller
public class NoticeController {
	@Autowired
	private kr.co.sist.mkjg.protector.service.NoticeService ns;
	
	@RequestMapping(value="prt_notice.do",method=GET)
	public String searchNotice(Model model) throws SQLException {
		List<Notice> list=ns.selectNotice();
		model.addAttribute("notice_list",list);
		int cnt=ns.cntNotice();
		model.addAttribute("cnt",cnt);
		return "prt/notice/prt_notice";
	}//searchNotice

	@RequestMapping(value="notice_read.do",method=GET)
	public String readNotice(Model model, HttpServletRequest request) throws SQLException {
		String notice_num=request.getParameter("notice_num");
		NoticeRead notice=ns.selectNoticeRead(notice_num);
		model.addAttribute("notice",notice);
		return "prt/notice/notice_read";
	}//searchNotice

	@ExceptionHandler(SQLException.class)
	public ModelAndView searchError(SQLException se) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("err/err");
		mav.addObject("err_msg",se);
		
		return mav;
	}//searchError
	
}//class
