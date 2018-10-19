package kr.co.sist.mkjg.protector.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.mkjg.protector.domain.AllClnList;
import kr.co.sist.mkjg.protector.domain.NightClnList;
import kr.co.sist.mkjg.protector.vo.ClnInfo;
import kr.co.sist.mkjg.protector.vo.SectionVO;



@Component
public class ClnDAO {
	@Autowired
	private SqlSessionTemplate sst;
	
	public List<String> selectSido() throws SQLException{
		List<String> list=null;
		list=sst.selectList("sidoSelect");
		return list;
	}//searchAllsido
	
	public List<String> selectSigungu(String sido) throws SQLException{
		List<String> list=null;
		list=sst.selectList("sigunguSelect",sido);
		return list;
	}//searchAllsido
	
	
	public String selectAllCln(SectionVO sv) throws SQLException{
		String list=null;
		list=sst.selectOne("selectAllCln",sv);
		System.err.println("----"+list);
		return list;
	}//selectAllCln

	
	public List<NightClnList> selectNightCln(SectionVO sv) throws SQLException{
		List<NightClnList> list=null;
		list=sst.selectList("selectNightCln",sv);
		return list;
	}//selectNightCln
	
/*	public ClnInfo selectinfoCln(String clinicNum) throws SQLException{
		ClnInfo list=null;
		list=sst.selectList("selectinfoCln",clinicNum);
		return list;
	}//selectinfoCln

*/	
	
}//class
