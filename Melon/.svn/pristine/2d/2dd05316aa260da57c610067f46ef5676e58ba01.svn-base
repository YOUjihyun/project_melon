package com.ktds.search.dao;

import java.util.List;
import java.util.Map;

public interface SearchDao {

	public List<Map<String, Object>> selectSearch(String keyword);
	public int selectSearchCount(String keyword);
	
	public List<Map<String, Object>> selectReal();
	public List<Map<String, Object>> selectSearchCheck(String keyword);
	
	public int insertSearchKeyword(String keyword);
	
	public int updateSearchCount(String keyword);
	
	public int updateAllDate();
	
	public int updateCount(Map<String, Object> params);
	
}
