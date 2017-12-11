package com.ktds.notice.service;


import java.util.List;
import java.util.Map;

import com.ktds.notice.vo.NoticeListVO;
import com.ktds.notice.vo.NoticeSearchVO;
import com.ktds.notice.vo.NoticeVO;

public interface NoticeService {

	public NoticeListVO readAllNotice(NoticeSearchVO noticeSearchVO);
	public NoticeVO readOneNoticeVO(int noticeId);
	
	public List<Map<String, Object>> readImportantNotice();
	
	public	Map<String, Object> readMainNotice();
	
	public boolean createNewNotice(NoticeVO noticeVO);
	
	public boolean deleteNotice(int noticeId);
	
	public boolean updateNotice(NoticeVO noticeVO);
	public boolean updateNoticeCount(int noticeId);
	
}
