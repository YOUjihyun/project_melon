package com.ktds.reply.vo;

import java.sql.Timestamp;

import com.ktds.main.vo.UserVO;

public class ReplyVO {

	private int replyId;
	private String replyContent;
	private Timestamp replyDate;
	private int replyLikeCount;
	private int replyDislikeCount;
	private int parentId;
	private String id;
	private int magazineId;
	private int noticeId;
	private int categoryId;
	
	private UserVO userVO;
	
	
	public int getReplyId() {
		return replyId;
	}
	public void setReplyId(int replyId) {
		this.replyId = replyId;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public Timestamp getReplyDate() {
		return replyDate;
	}
	public void setReplyDate(Timestamp replyDate) {
		this.replyDate = replyDate;
	}
	public int getReplyLikeCount() {
		return replyLikeCount;
	}
	public void setReplyLikeCount(int replyLikeCount) {
		this.replyLikeCount = replyLikeCount;
	}
	public int getReplyDislikeCount() {
		return replyDislikeCount;
	}
	public void setReplyDislikeCount(int replyDislikeCount) {
		this.replyDislikeCount = replyDislikeCount;
	}
	public int getParentId() {
		return parentId;
	}
	public void setParentId(int parentId) {
		this.parentId = parentId;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getMagazineId() {
		return magazineId;
	}
	public void setMagazineId(int magazineId) {
		this.magazineId = magazineId;
	}
	public int getNoticeId() {
		return noticeId;
	}
	public void setNoticeId(int noticeId) {
		this.noticeId = noticeId;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}	
	
	public UserVO getUserVO() {
		return userVO;
	}
	public void setUserVO(UserVO userVO) {
		this.userVO = userVO;
	}		
	
}
