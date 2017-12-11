package com.ktds.main.service;

import com.ktds.main.dao.UserDao;
import com.ktds.main.vo.UserVO;

public class UserServiceImpl implements UserService {
	
	private UserDao userDao;
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public UserVO readUser(UserVO userVO) {
		return userDao.selectUser(userVO);
	}

	@Override
	public UserVO readConfirmPhone(String phone) {
		return userDao.selectConfirmPhone(phone);
	}

	@Override
	public UserVO readIdFind(UserVO userVO) {
		return userDao.selectIdFind(userVO);
	}

	@Override
	public UserVO readFindPw(UserVO userVO) {
		return userDao.selectFindPw(userVO);
	}

	@Override
	public boolean updateChangePassword(UserVO userVO) {
		return userDao.updateChangePassword(userVO) > 0;
	}

	@Override
	public boolean createNewMember(UserVO userVO) {
		return userDao.insertNewMember(userVO) > 0;
	}

	@Override
	public UserVO readUserInfo(String id) {
		return userDao.selectUserInfo(id);
	}

	@Override
	public UserVO readConfirmId(String id) {
		return userDao.selectConfirmId(id);
	}

	@Override
	public UserVO readConfirmNick(String nickName) {
		return userDao.selectConfirmNick(nickName);
	}

	@Override
	public boolean updatePhoneNumber(UserVO userVO) {
		return userDao.updatePhoneNumber(userVO) > 0;
	}

	@Override
	public boolean updateEmail(UserVO userVO) {
		return userDao.updateEmail(userVO) > 0 ;
	}

	@Override
	public boolean deleteUser(String id) {
		return userDao.deleteUser(id) > 0;
	}
	
	
	

}
