package com.ktds.main.dao;

import com.ktds.main.vo.UserVO;

public interface UserDao {
	
	public UserVO selectUser(UserVO userVO);
	
	public UserVO selectConfirmPhone(String phone);
	
	public UserVO selectConfirmId(String id);
	
	public UserVO selectConfirmNick(String nickName);
	
	public UserVO selectIdFind(UserVO userVO);
	
	public UserVO selectFindPw(UserVO userVO);
	
	public UserVO selectUserInfo(String id);
	
	
	// 비밀번호 변경
	public int updateChangePassword(UserVO userVO);
	
	// 회원가입
	public int insertNewMember(UserVO userVO);
	
	// 전화번호 변경
	public int updatePhoneNumber(UserVO userVO);
	
	// 이메일 변경
	public int updateEmail(UserVO userVO);
	
	// 회원탈퇴
	public int deleteUser(String id);
	
}
