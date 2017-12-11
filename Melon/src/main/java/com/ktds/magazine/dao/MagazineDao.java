package com.ktds.magazine.dao;

import java.util.List;
import java.util.Map;

import com.ktds.magazine.vo.MagazineVO;

public interface MagazineDao {
	public List<Map<String, Object>> selectAllMagazine(MagazineVO magazineVO);	
	
	public int selectAllMagazineCount(MagazineVO magazineVO);
	
	public MagazineVO selectOneMagazine(MagazineVO magazineVO);
	
	public int updateViewCount(MagazineVO magazineVO);
	
	public int updateLikeCount(int magazineId);
	
/*	public int mmaUpdateViewCount(int magazineId);
	
	public int mmaUpdateLikeCount(int magazineId);*/
	
	public int updateMagazine(MagazineVO magazineVO);
	
	public int deleteMagazine(MagazineVO magazineVO);
	
	// MAIN 
	public List<Map<String, Object>> selectMainMagazine();
	
	public List<Map<String, Object>> selectAllMagazineByCategoryId(MagazineVO magazineVO);
	
	public int selectAllMagazineCountByCategoryId(MagazineVO magazineVO);
	
	public int insertNewMagazine(MagazineVO magazineVO);
}

