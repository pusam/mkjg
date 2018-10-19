package kr.co.sist.mkjg.protector.dao;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.mkjg.protector.domain.AllClnList;
import kr.co.sist.mkjg.protector.domain.NightClnList;
import kr.co.sist.mkjg.protector.domain.Notice;
import kr.co.sist.mkjg.protector.domain.NoticeRead;
import kr.co.sist.mkjg.protector.vo.ClnInfo;
import kr.co.sist.mkjg.protector.vo.NoticeListVO;



@Component
public class NoticeDAO {
	@Autowired
	private SqlSessionTemplate sst;
	
	public List<Notice> selectNotice() throws SQLException{
		List<Notice> list=null;
		list=sst.selectList("selectNotice");
		return list;
	}//selectNotice	
	
	public int cntNotice() throws SQLException{
		int cnt=0;
		cnt=sst.selectOne("cntNotice");
		return cnt;
	}//selectNotice	
	
	public NoticeRead selectNoticeRead(String notice_num) throws SQLException{
		NoticeRead list=null;
		list=sst.selectOne("selectNoticeRead",notice_num);
		return list;
	}//selectNotice	

	
}//class
