package com.intime.feria.vo;

import java.sql.Time;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;

public class FReview {
	
	//2020-08-13 박상훈 기본 세팅
	private int frNo, userNo, fdateNo;
	private String frText;
	private Timestamp frRegdate;
	
	//2020-08-13 박상훈 조인테이블 멤버필드 세팅
	private int prtcNo, feriaNo;
	private String lastName, firstName, profileImg, fimg, frDateChange;
	private char userLv;
	private Time feriaDate;
	
	//2020-08-13 박상훈 BReview객체 멤버필드로 세팅
	private List<BReview> bReviews;
	
	//2020-08-13 박상훈 기본생성자 선언
	public FReview() {
		
	}
	
	//2020-08-13 박상훈 bReviews 객체 세터게터
	public List<BReview> getbReviews() {
		return bReviews;
	}
	public void setbReviews(List<BReview> bReviews) {
		this.bReviews = bReviews;
	}
	
	//2020-08-13 박상훈 조인테이블 멤버필드 세팅
	public int getPrtcNo() {
		return prtcNo;
	}

	public void setPrtcNo(int prtcNo) {
		this.prtcNo = prtcNo;
	}

	public int getFeriaNo() {
		return feriaNo;
	}

	public void setFeriaNo(int feriaNo) {
		this.feriaNo = feriaNo;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getProfileImg() {
		return profileImg;
	}

	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}

	public String getFimg() {
		return fimg;
	}

	public void setFimg(String fimg) {
		this.fimg = fimg;
	}

	public char getUserLv() {
		return userLv;
	}

	public void setUserLv(char userLv) {
		this.userLv = userLv;
	}

	public Time getFeriaDate() {
		return feriaDate;
	}

	public void setFeriaDate(Time feriaDate) {
		this.feriaDate = feriaDate;
	}
	
	//2020-08-13 박상훈 페리아리뷰데이트 형변환
	public String getFrDateChange() {
		SimpleDateFormat dataFormat = new SimpleDateFormat("YYYY년 MM월 dd일");
		String frDateChange = dataFormat.format(frRegdate);
		return frDateChange;
	}

	public void setFrDateChange(String frDateChange) {
		this.frDateChange = frDateChange;
	}

	//2020-08-13 박상훈 기본세팅
	public void setFrNo(int frNo) {
		this.frNo = frNo;
	}
	public int getFrNo() {
		return frNo;
	}	
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getFdateNo() {
		return fdateNo;
	}
	public void setFdateNo(int fdateNo) {
		this.fdateNo = fdateNo;
	}
	public String getFrText() {
		return frText;
	}
	public void setFrText(String frText) {
		this.frText = frText;
	}
	public Timestamp getFrRegdate() {
		return frRegdate;
	}
	public void setFrRegdate(Timestamp frRegdate) {
		this.frRegdate = frRegdate;
	}
	
	
}
