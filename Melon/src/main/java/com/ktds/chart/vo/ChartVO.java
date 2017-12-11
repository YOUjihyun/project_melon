package com.ktds.chart.vo;

import com.ktds.artist.vo.ArtistVO;

public class ChartVO {
	private String musicId;
	private String musicSubject;
	private String albumSubject;
	private String albumPoster;
	private int likeCount;
	private String musicFileName;
	private String mvName;
	private String lyrics;
	private String issueDate;
	private String genre;
	private String writer;
	private String composer;
	private int magazineId;
	private String id;
	private int artistId;
	private String subtitle;
	private String musicProduction;
	private String musicLabel;

	private ArtistVO artistVO;

	public ArtistVO getArtistVO() {
		return artistVO;
	}

	public void setArtistVO(ArtistVO artistVO) {
		this.artistVO = artistVO;
	}

	public String getMusicId() {
		return musicId;
	}

	public void setMusicId(String musicId) {
		this.musicId = musicId;
	}

	public String getAlbumSubject() {
		return albumSubject;
	}

	public void setAlbumSubject(String albumSubject) {
		this.albumSubject = albumSubject;
	}

	public String getMusicSubject() {
		return musicSubject;
	}

	public void setMusicSubject(String musicSubject) {
		this.musicSubject = musicSubject;
	}

	public String getAlbumPoster() {
		return albumPoster;
	}

	public void setAlbumPoster(String albumPoster) {
		this.albumPoster = albumPoster;
	}

	public int getLikeCount() {
		return likeCount;
	}

	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}

	public String getMusicFileName() {
		return musicFileName;
	}

	public void setMusicFileName(String musicFileName) {
		this.musicFileName = musicFileName;
	}

	public String getMvName() {
		return mvName;
	}

	public void setMvName(String mvName) {
		this.mvName = mvName;
	}

	public String getLyrics() {
		return lyrics;
	}

	public void setLyrics(String lyrics) {
		this.lyrics = lyrics;
	}

	public String getIssueDate() {
		return issueDate;
	}

	public void setIssueDate(String issueDate) {
		this.issueDate = issueDate;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getComposer() {
		return composer;
	}

	public void setComposer(String composer) {
		this.composer = composer;
	}

	public int getMagazineId() {
		return magazineId;
	}

	public void setMagazineId(int magazineId) {
		this.magazineId = magazineId;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getArtistId() {
		return artistId;
	}

	public void setArtistId(int artistId) {
		this.artistId = artistId;
	}

	public String getSubtitle() {
		return subtitle;
	}

	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}

	public String getMusicProduction() {
		return musicProduction;
	}

	public void setMusicProduction(String musicProduction) {
		this.musicProduction = musicProduction;
	}

	public String getMusicLabel() {
		return musicLabel;
	}

	public void setMusicLabel(String musicLabel) {
		this.musicLabel = musicLabel;
	}

}
