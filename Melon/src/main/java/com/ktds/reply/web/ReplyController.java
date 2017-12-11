package com.ktds.reply.web;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ktds.reply.service.ReplyService;
import com.ktds.reply.vo.ReplyVO;

@Controller
public class ReplyController {
	private ReplyService replyService;
	
	public void setReplyService(ReplyService replyService) {
		this.replyService = replyService;
	}
	
	@RequestMapping("/reply/list/{categoryId}/{magazineId}")
	@ResponseBody
	public List<Map<String, Object>> ReadMagazineAllReply(@PathVariable(value="categoryId") int categoryId, @PathVariable(value="magazineId") int magazineId){
		
		ReplyVO replyVO = new ReplyVO();
		replyVO.setCategoryId(categoryId);
		replyVO.setMagazineId(magazineId);
		
		List<Map<String, Object>> replyList = replyService.ReadMagazineAllReply(replyVO);
		
		return replyList;
	}
}
