package com.ktds.notice.dao;

import java.util.List;
import java.util.Map;

import com.ktds.notice.vo.NoticeSearchVO;
import com.ktds.notice.vo.NoticeVO;

public interface NoticeDao {
	
	public List<Map<String, Object>> selectAllNotice(NoticeSearchVO noticeSearchVO);
	public NoticeVO selectOneNotice(int noticeId);
	public int insertNewNotice(NoticeVO noticeVO);
	
	public List<Map<String, Object>> selectImportantNotice();
	
	public	Map<String, Object> selectMainNotice();
	
	public 	int selectNoticeCount(NoticeSearchVO noticeSearchVO);
	
	public int deleteNotice(int noticeId);
	
	public int updateNotice(NoticeVO noticeVO);
	public int updateNoticeCount(int noticeId);
}
