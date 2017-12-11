package com.ktds.chart.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.chart.vo.ChartVO;

public class ChartDaoImpl extends SqlSessionDaoSupport implements ChartDao {

	@Override
	public List<ChartVO> selectOneAlbum(int musicId) {
		return getSqlSession().selectList("ChartDao.selectOneAlbum", musicId);
	}

	@Override
	public List<ChartVO> selectAllMelonChart(int startNumber) {
		return getSqlSession().selectList("ChartDao.selectAllMelonChart", startNumber);
	}

	@Override
	public int updateLikeCount(int musicId) {
		return getSqlSession().update("ChartDao.updateLikeCount", musicId);
	}

	@Override
	public List<ChartVO> selectAllmusicOfOneArtist(int artistId) {
		return getSqlSession().selectList("ChartDao.selectAllmusicOfOneArtist", artistId);
	}
	
	@Override
	public List<Map<String, Object>> selectMainPoster() {
		return getSqlSession().selectList("ChartDao.selectMainPoster");
	}

	@Override
	public List<Map<String, Object>> selectRealTimeChart() {
		return getSqlSession().selectList("ChartDao.selectRealTimeChart");
	}

	@Override
	public List<Map<String, Object>> selectPopChart() {
		return getSqlSession().selectList("ChartDao.selectPopChart");
	}

	@Override
	public List<Map<String, Object>> selectRandomArtist() {
		return getSqlSession().selectList("ChartDao.selectRandomArtist");
	}

	@Override
	public List<Map<String, Object>> selectNewAlbum() {
		return getSqlSession().selectList("ChartDao.selectNewAlbum");
	}

	@Override
	public List<Map<String, Object>> selectNewAlbumLike() {
		return getSqlSession().selectList("ChartDao.selectNewAlbumLike");
	}
	

	/*@Override
	public ArtistChannelVO selectOneArtist() {
		return getSqlSession().selectOne("ChartDao.selectOneArtist");
	}*/

}
