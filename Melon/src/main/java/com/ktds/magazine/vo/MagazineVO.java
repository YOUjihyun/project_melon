package com.ktds.magazine.vo;

import java.sql.Timestamp;

public class MagazineVO {
	
	private String pageNo;
	private int startNumber;
	private int endNumber;
	
	private int magazineId;
	private String magazineSubject;
	private Timestamp magazineDate;
	private String magazineContent;
	private int magazineLikeCount;
	private int magazineViewCount;
	private String magazinePhoto;
	
	private String id;
	private int categoryId;
	
/*	private ArtistVO artistVO;
	
	
	public ArtistVO getArtistVO() {
		return artistVO;
	}
	public void setArtistVO(ArtistVO artistVO) {
		this.artistVO = artistVO;
	}*/
	public int getMagazineId() {
		return magazineId;
	}
	public void setMagazineId(int magazineId) {
		this.magazineId = magazineId;
	}
	public String getMagazineSubject() {
		return magazineSubject;
	}
	public void setMagazineSubject(String magazineSubject) {
		this.magazineSubject = magazineSubject;
	}
	public Timestamp getMagazineDate() {
		return magazineDate;
	}
	public void setMagazineDate(Timestamp magazineDate) {
		this.magazineDate = magazineDate;
	}
	public String getMagazineContent() {
		return magazineContent;
	}
	public void setMagazineContent(String magazineContent) {
		this.magazineContent = magazineContent;
	}
	public int getMagazineLikeCount() {
		return magazineLikeCount;
	}
	public void setMagazineLikeCount(int magazineLikeCount) {
		this.magazineLikeCount = magazineLikeCount;
	}
	public int getMagazineViewCount() {
		return magazineViewCount;
	}
	public void setMagazineViewCount(int magazineViewCount) {
		this.magazineViewCount = magazineViewCount;
	}	
	public String getMagazinePhoto() {
		return magazinePhoto;
	}
	public void setMagazinePhoto(String magazinePhoto) {
		this.magazinePhoto = magazinePhoto;
	}
		
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	
	public String getPageNo() {
		return pageNo;
	}
	public void setPageNo(String pageNo) {
		this.pageNo = pageNo;
	}
	public int getStartNumber() {
		return startNumber;
	}
	public void setStartNumber(int startNumber) {
		this.startNumber = startNumber;
	}
	public int getEndNumber() {
		return endNumber;
	}
	public void setEndNumber(int endNumber) {
		this.endNumber = endNumber;
	}
		
}
