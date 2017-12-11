package com.ktds.artist.service;

import com.ktds.artist.dao.ArtistDao;
import com.ktds.artist.vo.ArtistVO;

public class ArtistServiceImpl implements ArtistService{

	private ArtistDao artistDao;
	
	public void setArtistDao(ArtistDao artistDao) {
		this.artistDao = artistDao;
	}
	
	@Override
	public ArtistVO readOneArtist(int artistId) {
		return artistDao.selectOneArtist(artistId);
	}

}
