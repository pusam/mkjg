package kr.co.sist.mkjg.protector.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.mkjg.protector.dao.MainDAO;
import kr.co.sist.mkjg.protector.dao.NoticeDAO;
import kr.co.sist.mkjg.protector.domain.MainNewCln;
import kr.co.sist.mkjg.protector.domain.MainNightCln;
import kr.co.sist.mkjg.protector.domain.MainNotice;
import kr.co.sist.mkjg.protector.domain.NoticeRead;



@Component
public class MainService {
	@Autowired
	private MainDAO m_dao;
	private NoticeDAO n_dao;
	
	public List<MainNotice> selectMainNotice() throws SQLException{
		List<MainNotice> list=null;
		list=m_dao.selectNotice();
		return list;
	}

	public List<MainNewCln> selectMinNew() throws SQLException{
		List<MainNewCln> list=null;
		list=m_dao.selectMainCln();
		return list;
	}
	
	public List<MainNightCln> selectMainNight() throws SQLException{
		List<MainNightCln> list=null;
		list=m_dao.selectMainNight();
		return list;
	}
	

}//class
