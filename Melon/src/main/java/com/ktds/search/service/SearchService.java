package com.ktds.search.service;

import java.util.List;
import java.util.Map;

public interface SearchService {

	public List<Map<String, Object>> readSearch(String keyword);
	public int readSearchCount(String keyword);
	
	public List<Map<String, Object>> readReal();
	public List<Map<String, Object>> readSearchCheck(String keyword);
	
	public boolean createSearchKeyword(String keyword);
	
	public boolean updateSearchCount(String keyword);
	
	public int updateAllDate();
	
	public boolean updateCount(Map<String, Object> params);
	
}
