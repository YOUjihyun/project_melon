package com.ktds.reply.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.reply.vo.ReplyVO;

public class ReplyDaoImpl extends SqlSessionDaoSupport implements ReplyDao {

	@Override
	public List<Map<String, Object>> selectMagazineAllReply(ReplyVO replyVO) {
		
		return getSqlSession().selectList("ReplyDao.selectMagazineAllReply", replyVO);
	}

}
