package com.ktds.notice.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.notice.vo.NoticeSearchVO;
import com.ktds.notice.vo.NoticeVO;

public class NoticeDaoImpl extends SqlSessionDaoSupport implements NoticeDao {

	@Override
	public List<Map<String, Object>> selectAllNotice(NoticeSearchVO noticeSearchVO) {
		return getSqlSession().selectList("NoticeDao.selectAllNotice", noticeSearchVO);
	}

	@Override
	public NoticeVO selectOneNotice(int noticeId) {
		return getSqlSession().selectOne("NoticeDao.selectOneNotice", noticeId);
	}

	@Override
	public int insertNewNotice(NoticeVO noticeVO) {
		return getSqlSession().insert("NoticeDao.insertNewNotice", noticeVO);
	}

	@Override
	public int selectNoticeCount(NoticeSearchVO noticeSearchVO) {
		return getSqlSession().selectOne("NoticeDao.selectNoticeCount", noticeSearchVO);
	}

	@Override
	public Map<String, Object> selectMainNotice() {
		return getSqlSession().selectOne("NoticeDao.selectMainNotice");
	}

	@Override
	public List<Map<String, Object>> selectImportantNotice() {
		return getSqlSession().selectList("NoticeDao.selectImportantNotice");
	}

	@Override
	public int deleteNotice(int noticeId) {
		return getSqlSession().delete("NoticeDao.deleteNotice", noticeId);
	}

	@Override
	public int updateNotice(NoticeVO noticeVO) {
		return getSqlSession().update("NoticeDao.updateNotice", noticeVO);
	}

	@Override
	public int updateNoticeCount(int noticeId) {
		return getSqlSession().update("NoticeDao.updateNoticeCount", noticeId);
	}

}
