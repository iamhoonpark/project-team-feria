package com.intime.feria.vo;

import java.sql.Timestamp;

public class Cena {
	private int cenaNo, userNo;
	private String cenaImg, cenaName, hostCmt;
	private char cenaType, mealType;
	private Timestamp cena_regdate;
	
	public Cena() {
	}
	
	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getCenaImg() {
		return cenaImg;
	}

	public void setCenaImg(String cenaImg) {
		this.cenaImg = cenaImg;
	}

	char getCenaType() {
		return cenaType;
	}

	void setCenaType(char cenaType) {
		this.cenaType = cenaType;
	}

	char getMealType() {
		return mealType;
	}

	void setMealType(char mealType) {
		this.mealType = mealType;
	}

	public String getCenaName() {
		return cenaName;
	}

	public void setCenaName(String cenaName) {
		this.cenaName = cenaName;
	}

	public String getHostCmt() {
		return hostCmt;
	}

	public void setHostCmt(String hostCmt) {
		this.hostCmt = hostCmt;
	}
	
	public int getCenaNo() {
		return cenaNo;
	}

	public void setCenaNo(int cenaNo) {
		this.cenaNo = cenaNo;
	}

	public Timestamp getCena_regdate() {
		return cena_regdate;
	}

	public void setCena_regdate(Timestamp cena_regdate) {
		this.cena_regdate = cena_regdate;
	}

	public Cena(int userNo, String cenaImg, char cenaType, char mealType, String cenaName, String hostCmt) {
		super();
		this.userNo = userNo;
		this.cenaImg = cenaImg;
		this.cenaType = cenaType;
		this.mealType = mealType;
		this.cenaName = cenaName;
		this.hostCmt = hostCmt;
	}
	
}
