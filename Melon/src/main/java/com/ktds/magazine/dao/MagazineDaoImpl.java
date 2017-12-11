package com.ktds.magazine.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.magazine.vo.MagazineVO;

public class MagazineDaoImpl extends SqlSessionDaoSupport implements MagazineDao{

	@Override
	public List<Map<String, Object>> selectAllMagazine(MagazineVO magazineVO) {
		System.out.println("dafefa ad " + getSqlSession().selectList("MagazineDao.selectAllMagazine", magazineVO));
		return getSqlSession().selectList("MagazineDao.selectAllMagazine", magazineVO);		
	}

	@Override
	public int selectAllMagazineCount(MagazineVO magazineVO) {		
		return getSqlSession().selectOne("MagazineDao.selectAllMagazineCount", magazineVO);
	}

	@Override
	public MagazineVO selectOneMagazine(MagazineVO magazineVO) {
		return getSqlSession().selectOne("MagazineDao.selectOneMagazine", magazineVO);
	}

	@Override
	public int updateViewCount(MagazineVO magazineVO) {
		System.out.println("뷰카운트: " + magazineVO.getMagazineViewCount());
		return getSqlSession().update("MagazineDao.updateViewCount", magazineVO);
	}

/*	@Override
	public int mmaUpdateViewCount(int magazineId) {
		return getSqlSession().update("MagazineDao.mmaUpdateViewCount", magazineId);
	}

	@Override
	public int mmaUpdateLikeCount(int magazineId) {
		return getSqlSession().update("MagazineDao.mmaUpdateLikeCount", magazineId);
	}*/

	@Override
	public int updateMagazine(MagazineVO magazineVO) {
		return getSqlSession().update("MagazineDao.updateMagazine", magazineVO);
	}

	@Override
	public int deleteMagazine(MagazineVO magazineVO) {
		return getSqlSession().delete("MagazineDao.deleteMagazine", magazineVO);
	}

	@Override
	public int updateLikeCount(int magazineId) {
		return getSqlSession().update("MagazineDao.updateLikeCount", magazineId);
	}

	@Override
	public List<Map<String, Object>> selectMainMagazine() {
		return getSqlSession().selectList("MagazineDao.selectMainMagazine");
	}

	@Override
	public List<Map<String, Object>> selectAllMagazineByCategoryId(MagazineVO magazineVO) {
		return getSqlSession().selectList("MagazineDao.selectAllMagazineByCategoryId", magazineVO);
	}

	@Override
	public int selectAllMagazineCountByCategoryId(MagazineVO magazineVO) {
		return getSqlSession().selectOne("MagazineDao.selectAllMagazineCountByCategoryId", magazineVO);
	}

	@Override
	public int insertNewMagazine(MagazineVO magazineVO) {
		return getSqlSession().insert("MagazineDao.insertNewMagazine", magazineVO);
	}

}
