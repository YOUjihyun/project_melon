package com.ktds.chart.dao;

import java.util.List;
import java.util.Map;

import com.ktds.chart.vo.ChartVO;

public interface ChartDao {
	public List<ChartVO> selectOneAlbum(int musicId);
	public List<ChartVO> selectAllMelonChart(int startNumber);
	public int updateLikeCount(int musicId);
	public List<ChartVO> selectAllmusicOfOneArtist(int artistId);
	//public ArtistChannelVO selectOneArtist();
	
	// 메인 포스터 부분 조회
	public List<Map<String, Object>> selectMainPoster();
	public List<Map<String, Object>> selectRealTimeChart();
	public	List<Map<String, Object>> selectPopChart();
	public List<Map<String, Object>> selectRandomArtist();
	public List<Map<String, Object>> selectNewAlbum();
	public List<Map<String, Object>> selectNewAlbumLike();
}
