package com.ktds.magazine.service;

import java.util.List;
import java.util.Map;

import com.ktds.magazine.dao.MagazineDao;
import com.ktds.magazine.vo.MagazineListVO;
import com.ktds.magazine.vo.MagazineVO;

public class MagazineServiceImpl implements MagazineService{
	
	private MagazineDao magazineDao;
	
	public void setMagazineDao(MagazineDao magazineDao) {
		this.magazineDao = magazineDao;
	}

	@Override
	public MagazineListVO readAllMagazine(MagazineVO magazineVO) {
		
		MagazineListVO magazineListVO = new MagazineListVO();
		
//		Pager pager = PagerFactory.getPager(true);
//		
//		int magazineCount = magazineDao.selectAllMagazineCount(magazineVO);
//		
//		pager.setTotalArticleCount(magazineCount);
//		pager.setPageNumber(magazineVO.getPageNo());
//		
//		magazineVO.setStartNumber(pager.getStartArticleNumber());
//		magazineVO.setEndNumber(pager.getEndArticleNumber());
//
//		magazineListVO.setPager(pager);
		magazineListVO.setMagazineListVO(magazineDao.selectAllMagazine(magazineVO));
		
//		System.out.println("dhodkseho " + magazineListVO);
		
		return magazineListVO;
	}

	@Override
	public MagazineVO readOneMagazine(MagazineVO magazineVO) {		
		return magazineDao.selectOneMagazine(magazineVO);
	}

	@Override
	public boolean updateViewCount(MagazineVO magazineVO) {
		
		System.out.println("뷰카운트: ㅇㅇㅇ" + magazineVO.getMagazineViewCount());
		return magazineDao.updateViewCount(magazineVO) > 0;
	}

/*	@Override
	public boolean mmaUpdateViewCount(int magazineId) {
		return magazineDao.mmaUpdateViewCount(magazineId) > 0;
	}

	@Override
	public boolean mmaUpdateLikeCount(MagazineVO magazineVO) {
		return magazineDao.mmaUpdateLikeCount(magazineVO) > 0;
	}*/

	@Override
	public boolean updateMagazine(MagazineVO magazineVO) {
		return magazineDao.updateMagazine(magazineVO) > 0;
	}

	@Override
	public boolean deleteMagazine(MagazineVO magazineVO) {
		return magazineDao.deleteMagazine(magazineVO) > 0;
	}

	@Override
	public boolean updateLikeCount(int magazineId) {
		return magazineDao.updateLikeCount(magazineId) > 0;
	}

	@Override
	public List<Map<String, Object>> readMainMagazine() {
		return magazineDao.selectMainMagazine();
	}

	@Override
	public MagazineListVO readAllMagazineByCategoryId(MagazineVO magazineVO) {
		MagazineListVO magazineListVO = new MagazineListVO();
		
//		Pager pager = PagerFactory.getPager(true);
		
//		int magazineCount = magazineDao.selectAllMagazineCountByCategoryId(magazineVO);
		
//		pager.setTotalArticleCount(magazineCount);
//		pager.setPageNumber(magazineVO.getPageNo());
		
//		magazineVO.setStartNumber(pager.getStartArticleNumber());
//		magazineVO.setEndNumber(pager.getEndArticleNumber());

//		magazineListVO.setPager(pager);
		magazineListVO.setMagazineListVO(magazineDao.selectAllMagazineByCategoryId(magazineVO));

		return magazineListVO;
	}
	
	@Override
	public boolean createNewMagazine(MagazineVO magazineVO) {
		return magazineDao.insertNewMagazine(magazineVO) > 0;
	}
}
