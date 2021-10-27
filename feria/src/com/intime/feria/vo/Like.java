package com.intime.feria.vo;

public class Like {

	//2020-08-13 박상훈 기본 세팅
	private int likesNo, typeNo, userNo;
	private char likeType;
	
	//2020-08-13 박상훈 기본생성
	public Like() {
		
	}
	
	public Like(int typeNo, int userNo, char likeType) {
		super();
		this.typeNo = typeNo;
		this.userNo = userNo;
		this.likeType = likeType;
	}
	
	//2020-08-13 박상훈 기본 세터게터
	public int getLikesNo() {
		return likesNo;
	}
	public void setLikesNo(int likesNo) {
		this.likesNo = likesNo;
	}
	public int getTypeNo() {
		return typeNo;
	}
	public void setTypeNo(int typeNo) {
		this.typeNo = typeNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public char getLikeType() {
		return likeType;
	}
	public void setLikeType(char likeType) {
		this.likeType = likeType;
	}
	
	
	
}
