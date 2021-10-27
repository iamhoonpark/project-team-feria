package com.intime.feria.vo;

import java.sql.Timestamp;

public class BReview {

	//2020-08-13 박상훈 기본세팅
	private int brNo, brStar, userNo, bibeNo, frNo;
	private char brSw, brTs, brBd;
	private Timestamp brRegdate;
	
	//2020-08-13 박상훈 조인테이블 멤버필드 선언
	private String bibeImg, bibeName;
	
	//2020-08-13 박상훈 char형 String 변환 출력 멤버필드 선언
	private String brSwStr, brTsStr, brBdStr;
	
	public BReview() {
		
	}
	
	//2020-08-13 박상훈 char형 String 변환 멤버필드 게터세터
	public String getBrSwStr() {
		if(brSw=='Y') {
			return "달달함";
		}else {
			return "드라이";
		}
	}
	public void setBrSwStr(String brSwStr) {
		this.brSwStr = brSwStr;
	}
	public String getBrTsStr() {
		if(brTs=='Y') {
			return "탄  산";
		}else {
			return "무탄산";
		}
	}
	public void setBrTsStr(String brTsStr) {
		this.brTsStr = brTsStr;
	}
	public String getBrBdStr() {
		if(brBd=='Y') {
			return "무거움";
		}else {
			return "가벼움";
		}
	}
	public void setBrBdStr(String brBdStr) {
		this.brBdStr = brBdStr;
	}

	
	//2020-08-13 박상훈 조인테이블 게터세터
	public String getBibeImg() {
		return bibeImg;
	}
	public void setBibeImg(String bibeImg) {
		this.bibeImg = bibeImg;
	}
	public String getBibeName() {
		return bibeName;
	}
	public void setBibeName(String bibeName) {
		this.bibeName = bibeName;
	}
	
	//2020-08-13 박상훈 기본세팅
	public int getBrNo() {
		return brNo;
	}
	public void setBrNo(int brNo) {
		this.brNo = brNo;
	}
	public int getBrStar() {
		return brStar;
	}
	public void setBrStar(int brStar) {
		this.brStar = brStar;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getBibeNo() {
		return bibeNo;
	}
	public void setBibeNo(int bibeNo) {
		this.bibeNo = bibeNo;
	}
	public int getFrNo() {
		return frNo;
	}
	public void setFrNo(int frNo) {
		this.frNo = frNo;
	}
	public char getBrSw() {
		return brSw;
	}
	public void setBrSw(char brSw) {
		this.brSw = brSw;
	}
	public char getBrTs() {
		return brTs;
	}
	public void setBrTs(char brTs) {
		this.brTs = brTs;
	}
	public char getBrBd() {
		return brBd;
	}
	public void setBrBd(char brBd) {
		this.brBd = brBd;
	}
	public Timestamp getBrRegdate() {
		return brRegdate;
	}
	public void setBrRegdate(Timestamp brRegdate) {
		this.brRegdate = brRegdate;
	}
	
	
}
