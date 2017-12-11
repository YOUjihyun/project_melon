package com.ktds.main.service;

import com.ktds.main.vo.UserVO;

public interface UserService {

	public UserVO readUser(UserVO userVO);
	
	public UserVO readConfirmPhone(String phone);
	
	public UserVO readConfirmId(String id);
	
	public UserVO readConfirmNick(String nickName) ;
	
	public UserVO readIdFind(UserVO userVO);
	
	public UserVO readFindPw(UserVO userVO);
	
	public UserVO readUserInfo(String id);
	
	// 비밀번호 변경
	public boolean updateChangePassword(UserVO userVO);
	
	//회원가입
	public boolean createNewMember(UserVO userVO); 
	
	// 전화번호 변경
	public boolean updatePhoneNumber(UserVO userVO);
	
	//이메일 변경
	public boolean updateEmail(UserVO userVO);
	
	// 회원탈퇴
	public boolean deleteUser(String id);
}
