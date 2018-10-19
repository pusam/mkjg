package kr.co.sist.mkjg.protector.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ReferenceControl {
	
	@RequestMapping(value="reference.do", method=GET)
	public String reference(Model model) throws SQLException {
		
		return "prt/reference/reference";
	}//
}
