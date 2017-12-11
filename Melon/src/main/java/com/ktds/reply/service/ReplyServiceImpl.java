package com.ktds.reply.service;

import java.util.List;
import java.util.Map;

import com.ktds.reply.dao.ReplyDao;
import com.ktds.reply.vo.ReplyVO;

public class ReplyServiceImpl implements ReplyService{

	private ReplyDao replyDao;
	public void setReplyDao(ReplyDao replyDao) {
		this.replyDao = replyDao;
	}
	
	@Override
	public List<Map<String, Object>> ReadMagazineAllReply(ReplyVO replyVO) {
		List<Map<String, Object>> replyList = replyDao.selectMagazineAllReply(replyVO);
		
		return replyList;
	}

}
