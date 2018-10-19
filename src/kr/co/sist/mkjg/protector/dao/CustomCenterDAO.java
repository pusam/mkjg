package kr.co.sist.mkjg.protector.dao;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.mkjg.protector.domain.AskList;
import kr.co.sist.mkjg.protector.domain.ReportList;
import kr.co.sist.mkjg.protector.vo.SelCntVO;


@Component
public class CustomCenterDAO {
	private static CustomCenterDAO cc_dao;
	
	@Autowired(required=false)
	private SqlSessionTemplate sst;
	
	private CustomCenterDAO() {
	      
	}//CustomCenterDAO
	   
	public static CustomCenterDAO getInstance() {
	      if(cc_dao ==null) {
	    	  cc_dao=new CustomCenterDAO();
	      }//end if
	      return cc_dao;
	}//CustomCenterDAO
	
	public List<AskList> selectAsk(SelCntVO scvo) throws SQLException{
		List<AskList> list=null;		
		
		System.out.println("selectAsk-----"+scvo);
		list=sst.selectList("selectAskList",scvo);
		System.out.println("selectAsk-----"+list);
		
		return list;
	}//selectAsk
	public List<ReportList> selectReport(SelCntVO scvo) throws SQLException{
		List<ReportList> list=null;		
		
		System.out.println("selectReport-----"+scvo);
		list=sst.selectList("selectAskList",scvo);
		System.out.println("selectAsk-----"+list);
		
		return list;
	}//selectAsk
	
	public int rowCnt(SelCntVO scvo) throws SQLException{
		int cnt=0;		
		System.out.println("rowCnt-----"+scvo);
		
//		System.out.println("dao Ãâ·Â :"+scvo);
		cnt=sst.selectOne("selectAskCnt",scvo);
		System.out.println("rowCnt-----"+cnt);
		
		return cnt;
	}//rowCnt
	
	
}
