package com.ktds.chart.service;

import java.util.List;
import java.util.Map;

import com.ktds.chart.dao.ChartDao;
import com.ktds.chart.vo.ChartVO;

public class ChartServiceImpl implements ChartService {
	
	private ChartDao chartDao;
	
	public void setChartDao(ChartDao chartDao) {
		this.chartDao = chartDao;
	}

	@Override
	public List<ChartVO> readOneAlbum(int musicId) {
		return chartDao.selectOneAlbum(musicId);
	}

	@Override
	public List<ChartVO> readAllMelonChart(int startNumber) {
		return chartDao.selectAllMelonChart(startNumber);
	}

	@Override
	public boolean updateLikeCount(int musicId) {
		return chartDao.updateLikeCount(musicId) > 0;
	}
	
	@Override
	public List<ChartVO> readAllMusicOfOneArtist(int artistId) {
		return chartDao.selectAllmusicOfOneArtist(artistId);
	}

	@Override
	public List<Map<String, Object>> readMainPoster() {
		return chartDao.selectMainPoster();
	}

	@Override
	public List<Map<String, Object>> readRealTimeChart() {
		return chartDao.selectRealTimeChart();
	}

	@Override
	public List<Map<String, Object>> readPopChart() {
		return chartDao.selectPopChart();
	}

	@Override
	public List<Map<String, Object>> readRandomArtist() {
		return chartDao.selectRandomArtist();
	}

	@Override
	public List<Map<String, Object>> readNewAlbum() {
		return chartDao.selectNewAlbum();
	}

	@Override
	public List<Map<String, Object>> readNewAlbumLike() {
		return chartDao.selectNewAlbumLike();
	}

	/*@Override
	public ArtistChannelVO readOneArtist() {
		return chartDao.selectOneArtist();
	}*/

}
