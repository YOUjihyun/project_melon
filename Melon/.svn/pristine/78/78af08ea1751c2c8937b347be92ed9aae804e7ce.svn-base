package com.ktds.main.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.main.vo.UserVO;

public class UserDaoImpl extends SqlSessionDaoSupport implements UserDao {

	@Override
	public UserVO selectUser(UserVO userVO) {
		return getSqlSession().selectOne("UserDao.selectUser", userVO);
	}

	@Override
	public UserVO selectConfirmPhone(String phone) {
		return getSqlSession().selectOne("UserDao.selectConfirmPhone", phone);
	}

	@Override
	public UserVO selectIdFind(UserVO userVO) {
		return getSqlSession().selectOne("UserDao.selectIdFind", userVO);
	}

	@Override
	public UserVO selectFindPw(UserVO userVO) {
		return getSqlSession().selectOne("UserDao.selectFindPw", userVO);
	}

	@Override
	public int updateChangePassword(UserVO userVO) {
		return getSqlSession().update("UserDao.updateChangePassword", userVO);
	}

	@Override
	public int insertNewMember(UserVO userVO) {
		return getSqlSession().insert("UserDao.insertNewMember", userVO);
	}

	@Override
	public UserVO selectUserInfo(String id) {
		return getSqlSession().selectOne("UserDao.selectUserInfo", id);
	}

	@Override
	public UserVO selectConfirmId(String id) {
		return getSqlSession().selectOne("UserDao.selectConfirmId",id);
	}

	@Override
	public UserVO selectConfirmNick(String nickName) {
		return getSqlSession().selectOne("UserDao.selectConfirmNick", nickName);
	}

	@Override
	public int updatePhoneNumber(UserVO userVO) {
		return getSqlSession().update("UserDao.updatePhoneNumber", userVO);
	}

	@Override
	public int updateEmail(UserVO userVO) {
		return getSqlSession().update("UserDao.updateEmail", userVO);
	}

	@Override
	public int deleteUser(String id) {
		return getSqlSession().delete("UserDao.deleteUser", id);
	}

	
	
}
