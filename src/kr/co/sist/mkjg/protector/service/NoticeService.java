package kr.co.sist.mkjg.protector.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.mkjg.protector.dao.NoticeDAO;
import kr.co.sist.mkjg.protector.domain.AllClnList;
import kr.co.sist.mkjg.protector.domain.Notice;
import kr.co.sist.mkjg.protector.domain.NoticeRead;
import kr.co.sist.mkjg.protector.vo.NoticeListVO;



@Component
public class NoticeService {
	@Autowired
	private NoticeDAO n_dao;
	
	public List<Notice> selectNotice() throws SQLException{
		List<Notice> list=null;
		list=n_dao.selectNotice();
		return list;
	}

	public int cntNotice() throws SQLException{
		int cnt=0;
		cnt=n_dao.cntNotice()+1;
		return cnt;
	}

	public NoticeRead selectNoticeRead(String notice_num) throws SQLException{
		NoticeRead list=null;
		list=n_dao.selectNoticeRead(notice_num);
		return list;
	}

}//class
