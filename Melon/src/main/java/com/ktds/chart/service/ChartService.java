package com.ktds.chart.service;

import java.util.List;
import java.util.Map;

import com.ktds.chart.vo.ChartVO;

public interface ChartService {
	public List<ChartVO> readOneAlbum(int musicId);
	public List<ChartVO> readAllMelonChart(int startNumber);
	public boolean updateLikeCount(int musicId);
	public List<ChartVO> readAllMusicOfOneArtist(int artistId);
	//public ArtistChannelVO readOneArtist();

	public List<Map<String, Object>> readMainPoster();
	public List<Map<String, Object>> readRealTimeChart();
	public	List<Map<String, Object>> readPopChart();
	public List<Map<String, Object>> readRandomArtist();
	public List<Map<String, Object>> readNewAlbum();
	public List<Map<String, Object>> readNewAlbumLike();
	
}
