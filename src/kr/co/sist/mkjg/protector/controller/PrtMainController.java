package kr.co.sist.mkjg.protector.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.sist.mkjg.protector.domain.MainNewCln;
import kr.co.sist.mkjg.protector.domain.MainNightCln;
import kr.co.sist.mkjg.protector.domain.MainNotice;
import kr.co.sist.mkjg.protector.domain.Notice;
import kr.co.sist.mkjg.protector.domain.NoticeRead;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;


@Controller
public class PrtMainController {
	@Autowired
	private kr.co.sist.mkjg.protector.service.MainService ms;
	
	@RequestMapping(value="prt_index.do",method=GET)
	public String prtIndex(Model model) throws SQLException {
		List<MainNotice> mnlist=ms.selectMainNotice();
		model.addAttribute("notice_list",mnlist);
		List<MainNewCln> newlist=ms.selectMinNew();
		model.addAttribute("new_cln_list",newlist);
		List<MainNightCln> nightlist=ms.selectMainNight();
		model.addAttribute("night_cln_list",nightlist);

		return "prt/main/prt_index";
	}//prtIndex


}//class
