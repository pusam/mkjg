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
import org.springframework.web.servlet.ModelAndView;

import kr.co.sist.mkjg.protector.domain.BlackList;
import kr.co.sist.mkjg.protector.service.MypageService;
import kr.co.sist.mkjg.protector.vo.BlackVO;


@Controller
public class MypageControl {

	@Autowired
	private MypageService ms;
	
	@RequestMapping(value="mypage_history.do", method=GET)
	public String mypage1(Model model) throws SQLException {

		return "prt/mypage/mypage_history";
	}
	
	@RequestMapping(value="mypage_history_detail.do", method=GET)
	public String mypage2(Model model) throws SQLException {
		
		return "prt/mypage/mypage_history_detail";
	}
	
	@RequestMapping(value="mypage_monitor_chk.do", method=GET)
	public String mypage3(Model model) throws SQLException {
		
		return "prt/mypage/mypage_monitor_chk";
	}
	
	@RequestMapping(value="mypage_reservation.do", method=GET)
	public String mypage4(Model model) throws SQLException {
		
		return "prt/mypage/mypage_reservation";
	}
	
	@RequestMapping(value="mypage_clinic_reject.do", method=GET)
	public String mypage5(Model model) throws SQLException {
		
		return "prt/mypage/mypage_clinic_reject";
	}
	
	@RequestMapping(value="mypage_blacklist.do", method=GET)
	public String selBlackList(Model model,HttpSession hs) throws SQLException {
//		hs.getAttribute(model);
//		String business="0000000041";
//		String wid="ptest10";
		
		BlackVO bvo=new BlackVO();
		bvo.setBusiness("0000000041");
		bvo.setWid("ptest10");
		
		List<BlackList> list=ms.searchListB(bvo);
		System.out.println(bvo); 
		
		model.addAttribute("black_list",list);
		
		return "prt/mypage/mypage_blacklist";
	}
	
	@RequestMapping(value="mypage_info.do", method=GET)
	public String mypage7(Model model) throws SQLException {
		
		return "prt/mypage/mypage_info";
	}
	
	@RequestMapping(value="mypage_info_update.do", method=GET)
	public String mypage8(Model model) throws SQLException {
		
		return "prt/mypage/mypage_info_update";
	}
	
	
	@ExceptionHandler(SQLException.class)
	public ModelAndView searchError(SQLException se) {
		ModelAndView mav=new ModelAndView();
		
		mav.setViewName("err/err");
		mav.addObject("err_msg",se);
		
		return mav;
	}//ModelAndView


}
