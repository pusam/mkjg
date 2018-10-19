package kr.co.sist.mkjg.protector.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.mkjg.protector.dao.ClnDAO;
import kr.co.sist.mkjg.protector.domain.AllClnList;
import kr.co.sist.mkjg.protector.domain.NightClnList;
import kr.co.sist.mkjg.protector.vo.ClnInfo;
import kr.co.sist.mkjg.protector.vo.SectionVO;



@Component
public class ClnService {
	@Autowired
	private ClnDAO c_dao;
	
	public List<String> selectSido() throws SQLException{
		List<String> list=null;
		list=c_dao.selectSido();
		return list;
	}//searchAllsido

	public String selectSigungu(String sido) throws SQLException{
		List<String> list=null;
		list=c_dao.selectSigungu(sido);
		JSONObject jo=new JSONObject();
		JSONArray ja=new JSONArray();
		JSONObject temp=null;
		for(int i=0; i<list.size(); i++) {
			temp=new JSONObject();
			temp.put("sigungu", list.get(i));
			ja.add(temp);
		}
		jo.put("data", ja);
		jo.put("sido", sido);
		return jo.toJSONString();
	}//searchAllsido

	public String searchAllCln(SectionVO sv) throws SQLException{
		String list=null;
		list=c_dao.selectAllCln(sv);
		return list;
	}//searchAllCln
	
	public List<NightClnList> searchNightCln(SectionVO sv) throws SQLException{
		List<NightClnList> list=null;
		list=c_dao.selectNightCln(sv);
		return list;
	}//searchNightCln
	
/*	public ClnInfo infoCln(String clinicNum) throws SQLException{
		ClnInfo list=null;
		list=c_dao.selectinfoCln(clinicNum);
		return list;
	}//searchNightCln
	
*/	
}//class
