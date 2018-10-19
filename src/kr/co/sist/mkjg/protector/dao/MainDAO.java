package kr.co.sist.mkjg.protector.dao;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.mkjg.protector.domain.AllClnList;
import kr.co.sist.mkjg.protector.domain.MainNewCln;
import kr.co.sist.mkjg.protector.domain.MainNightCln;
import kr.co.sist.mkjg.protector.domain.MainNotice;
import kr.co.sist.mkjg.protector.domain.NightClnList;
import kr.co.sist.mkjg.protector.domain.Notice;
import kr.co.sist.mkjg.protector.vo.ClnInfo;
import kr.co.sist.mkjg.protector.vo.NoticeListVO;



@Component
public class MainDAO {
	@Autowired
	private SqlSessionTemplate sst;
	
	public List<MainNotice> selectNotice() throws SQLException{
		List<MainNotice> list=null;
		
		list=sst.selectList("selectMainNotice");
		
		return list;
	}//selectNotice

	public List<MainNewCln> selectMainCln() throws SQLException{
		List<MainNewCln> list=null;
		
		list=sst.selectList("selectMainCln");
		
		return list;
	}//selectAllCln
	
	public List<MainNightCln> selectMainNight() throws SQLException{
		List<MainNightCln> list=null;
		
		list=sst.selectList("selectMainNight");
		
		return list;
	}//selectNightCln
	
	
	
	
}//class
