package com.ktds.reply.dao;

import java.util.List;
import java.util.Map;

import com.ktds.reply.vo.ReplyVO;

public interface ReplyDao {
	public List<Map<String, Object>> selectMagazineAllReply(ReplyVO replyVO);
}
