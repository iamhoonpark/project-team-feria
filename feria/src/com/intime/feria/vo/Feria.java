package com.intime.feria.vo;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;

public class Feria {
	
	private int feriaNo;
	private String feriaName,hostName,profileImg;
	private char cenaType;
	
	//2020-08-12 박상훈======================================//
	private int no, userNo;
	private Timestamp feriaDate;
	private String cenaImg, feriaDateChange;

	public Feria() {
		
	}
	
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}
	
	public Timestamp getFeriaDate() {
		return feriaDate;
	}

	public void setFeriaDate(Timestamp feriaDate) {
		this.feriaDate = feriaDate;
	}

	public String getCenaImg() {
		return cenaImg;
	}

	public void setCenaImg(String cenaImg) {
		this.cenaImg = cenaImg;
	}
	
	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	//Timestamp를 String형 YYYY MM dd형식으로 리턴
	public String getFeriaDateChange() {
		SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY년 MM월 dd일");
		String feriaDateChange = dateFormat.format(feriaDate);
		return feriaDateChange;
	}

	public void setFeriaDateChange(String feriaDateChange) {
		this.feriaDateChange = feriaDateChange;
	}

	//=======================================================//

	public int getFeriaNo() {
		return feriaNo;
	}

	public void setFeriaNo(int feriaNo) {
		this.feriaNo = feriaNo;
	}

	public String getFeriaName() {
		return feriaName;
	}

	public void setFeriaName(String feriaName) {
		this.feriaName = feriaName;
	}

	public String getHostName() {
		return hostName;
	}

	public void setHostName(String hostName) {
		this.hostName = hostName;
	}

	public String getProfileImg() {
		return profileImg;
	}

	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}

	public char getCenaType() {
		return cenaType;
	}

	public void setCenaType(char cenaType) {
		this.cenaType = cenaType;
	}

}
