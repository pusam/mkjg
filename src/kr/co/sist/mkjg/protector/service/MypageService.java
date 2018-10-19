package kr.co.sist.mkjg.protector.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.mkjg.protector.dao.MypageDAO;
import kr.co.sist.mkjg.protector.domain.BlackList;
import kr.co.sist.mkjg.protector.vo.BlackVO;

@Component
public class MypageService {
	@Autowired(required=false)  
	private MypageDAO mp_dao;
	
	public List<BlackList> searchListB(BlackVO bvo) throws SQLException{
		List<BlackList> list=null;
		list=mp_dao.selectBlack(bvo);
		return list;
	}
	
}
