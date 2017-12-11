package com.ktds.artist.dao;


import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.artist.vo.ArtistVO;

public class ArtistDaoImpl extends SqlSessionDaoSupport implements ArtistDao {

	@Override
	public ArtistVO selectOneArtist(int artistId) {
		return getSqlSession().selectOne("ArtistDao.selectOneArtist", artistId);
	}

}
