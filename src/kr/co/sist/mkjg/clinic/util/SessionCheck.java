package kr.co.sist.mkjg.clinic.util;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

public class SessionCheck {
	
	public String checkSession(String id) {
		String url = "";
		if(id == null) {
		url = "clinic/cln_login/login";
		}
		return url;
	}//checkSession
	
}
