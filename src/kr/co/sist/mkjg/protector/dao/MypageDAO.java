package kr.co.sist.mkjg.protector.dao;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.mkjg.protector.domain.BlackList;
import kr.co.sist.mkjg.protector.domain.History;
import kr.co.sist.mkjg.protector.vo.BlackVO;

@Component
public class MypageDAO {
	private static MypageDAO mp_dao;
	
	@Autowired(required=false)
	private SqlSessionTemplate sst;
	
	private MypageDAO() {
	      
	}//MypageDAO
	
	public static MypageDAO getInstance() {
	      if(mp_dao ==null) {
	    	  mp_dao=new MypageDAO();
	      }//end if
	      return mp_dao;
	}//MypageDAO
	
	public List<History> selectHistory(BlackVO bvo) throws SQLException{
		List<History> list=null;		
		
		list=sst.selectList("selectHistory",list);
		
		return list;
	}//selectAsk
	
	public List<BlackList> selectBlack(BlackVO bvo) throws SQLException{
		List<BlackList> list=null;		
		
		list=sst.selectList("selectBlackList",list);
		
		return list;
	}//selectBlack
	
}
