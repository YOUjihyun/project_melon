package com.ktds.magazine.service;

import java.util.List;
import java.util.Map;

import com.ktds.magazine.vo.MagazineListVO;
import com.ktds.magazine.vo.MagazineVO;

public interface MagazineService {
	public MagazineListVO readAllMagazine(MagazineVO magazineVO);
	
	public MagazineVO readOneMagazine(MagazineVO magazineVO);
	
	public boolean updateViewCount(MagazineVO magazineVO);
	
/*	public boolean mmaUpdateViewCount(int magazineId);
	
	public boolean mmaUpdateLikeCount(MagazineVO magazineVO);*/
	
	public boolean updateLikeCount(int magazineId);
	
	public boolean updateMagazine(MagazineVO magazineVO);
	
	public boolean deleteMagazine(MagazineVO magazineVO);
	
	// MAIN
	public List<Map<String, Object>> readMainMagazine();
	
	public MagazineListVO readAllMagazineByCategoryId(MagazineVO magazineVO);
	
	public boolean createNewMagazine(MagazineVO magazineVO);
}
