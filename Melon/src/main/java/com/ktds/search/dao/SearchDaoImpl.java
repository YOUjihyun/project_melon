package com.ktds.search.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class SearchDaoImpl extends SqlSessionDaoSupport implements SearchDao {

	@Override
	public List<Map<String, Object>> selectSearch(String keyword) {
		return getSqlSession().selectList("SearchDao.selectSearch", keyword);
	}

	@Override
	public int insertSearchKeyword(String keyword) {
		return getSqlSession().insert("SearchDao.insertSearchKeyword", keyword);
	}

	@Override
	public int updateSearchCount(String keyword) {
		return getSqlSession().update("SearchDao.updateSearchCount", keyword);
	}

	@Override
	public List<Map<String, Object>> selectReal() {
		return getSqlSession().selectList("SearchDao.selectReal");
	}

	@Override
	public List<Map<String, Object>> selectSearchCheck(String keyword) {
		return getSqlSession().selectList("SearchDao.selectSearchCheck", keyword);
	}

	@Override
	public int updateAllDate() {
		return getSqlSession().update("SearchDao.updateAllDate");
	}

	@Override
	public int selectSearchCount(String keyword) {
		return getSqlSession().selectOne("SearchDao.selectSearchCount", keyword);
	}

	@Override
	public int updateCount(Map<String, Object> params) {
		return getSqlSession().update("SearchDao.updateCount", params);
	}

	
	
}
