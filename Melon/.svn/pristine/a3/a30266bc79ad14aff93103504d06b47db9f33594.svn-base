package com.ktds.search.service;

import java.util.List;
import java.util.Map;

import org.springframework.scheduling.annotation.Scheduled;

import com.ktds.search.dao.SearchDao;

public class SearchServiceImpl implements SearchService {

	private SearchDao searchDao;
	
	public void setSearchDao(SearchDao searchDao) {
		this.searchDao = searchDao;
	}

	@Override
	public List<Map<String, Object>> readSearch(String keyword) {
		return searchDao.selectSearch(keyword);
	}

	@Override
	public boolean createSearchKeyword(String keyword) {
		return searchDao.insertSearchKeyword(keyword) > 0;
	}

	@Override
	public boolean updateSearchCount(String keyword) {
		return searchDao.updateSearchCount(keyword) > 0;
	}

	@Override
	public List<Map<String, Object>> readReal() {
		return searchDao.selectReal();
	}

	@Override
	public List<Map<String, Object>> readSearchCheck(String keyword) {
		return searchDao.selectSearchCheck(keyword);
	}

	@Scheduled(cron="0 * 06 * * *")
	@Override
	public int updateAllDate() {
		return searchDao.updateAllDate();
	}

	@Override
	public int readSearchCount(String keyword) {
		return searchDao.selectSearchCount(keyword);
	}

	@Override
	public boolean updateCount(Map<String, Object> params) {
		return searchDao.updateCount(params) > 0;
	}
	
	
	
}
