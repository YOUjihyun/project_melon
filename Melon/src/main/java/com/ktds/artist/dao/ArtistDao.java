package com.ktds.artist.dao;

import com.ktds.artist.vo.ArtistVO;

public interface ArtistDao {
	public ArtistVO selectOneArtist(int artistId);
}
