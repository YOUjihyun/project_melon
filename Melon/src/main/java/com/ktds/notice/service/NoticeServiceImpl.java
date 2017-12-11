package com.ktds.notice.service;

import java.util.List;
import java.util.Map;

import com.ktds.notice.dao.NoticeDao;
import com.ktds.notice.vo.NoticeListVO;
import com.ktds.notice.vo.NoticeSearchVO;
import com.ktds.notice.vo.NoticeVO;

import io.github.seccoding.web.pager.Pager;
import io.github.seccoding.web.pager.PagerFactory;

public class NoticeServiceImpl implements NoticeService {

	private NoticeDao noticeDao;

	public void setNoticeDao(NoticeDao noticeDao) {
		this.noticeDao = noticeDao;
	}

	@Override

	public NoticeListVO readAllNotice(NoticeSearchVO noticeSearchVO) {
		NoticeListVO boardListVO = new NoticeListVO();

		Pager pager = PagerFactory.getPager(true);

		int noticeCount = noticeDao.selectNoticeCount(noticeSearchVO);
		
		pager.setTotalArticleCount(noticeCount);
		pager.setPageNumber(noticeSearchVO.getPageNo());

		noticeSearchVO.setStartNumber(pager.getStartArticleNumber());
		noticeSearchVO.setEndNumber(pager.getEndArticleNumber());

		boardListVO.setPager(pager);
		boardListVO.setNoticeListVO(noticeDao.selectAllNotice(noticeSearchVO));

		return boardListVO;
	}

	@Override
	public NoticeVO readOneNoticeVO(int noticeId) {
		return noticeDao.selectOneNotice(noticeId);
	}

	@Override
	public boolean createNewNotice(NoticeVO noticeVO) {
		return noticeDao.insertNewNotice(noticeVO) > 0;
	}

	@Override
	public Map<String, Object> readMainNotice() {
		return noticeDao.selectMainNotice();
	}

	@Override
	public List<Map<String, Object>> readImportantNotice() {
		return noticeDao.selectImportantNotice();
	}

	@Override
	public boolean deleteNotice(int noticeId) {
		return noticeDao.deleteNotice(noticeId) > 0;
	}

	@Override
	public boolean updateNotice(NoticeVO noticeVO) {
		return noticeDao.updateNotice(noticeVO) > 0;
	}

	@Override
	public boolean updateNoticeCount(int noticeId) {
		return noticeDao.updateNoticeCount(noticeId) > 0;
	}

}
