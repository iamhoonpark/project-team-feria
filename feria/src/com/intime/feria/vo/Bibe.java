package com.intime.feria.vo;

import java.security.Timestamp;
import java.sql.Date;

public class Bibe {
	
	//2020-08-11 박상훈 vo 기본세팅
	private int bibeNo, userNo, btypeNo;
	private String bibeImg, bibeName, bibeDetail;
	private Timestamp bibeRegdate, lastModified;
	
	//2020-08-11 박상훈 : 호스트가 받은 비베들 vo 변수 선언
	private int no, bibeCnt, bibePrice, val;
	private boolean flag;
	private String feriaName;
	private Date feriaDate;
	
	//기본생성자
	public Bibe() {
		
	}

	//2020-08-11 박상훈 : setter, getter 추가=================//
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getBibeCnt() {
		return bibeCnt;
	}

	public void setBibeCnt(int bibeCnt) {
		this.bibeCnt = bibeCnt;
	}

	public int getBibePrice() {
		return bibePrice;
	}

	public void setBibePrice(int bibePrice) {
		this.bibePrice = bibePrice;
	}

	public String getFeriaName() {
		return feriaName;
	}

	public void setFeriaName(String feriaName) {
		this.feriaName = feriaName;
	}

	public Date getFeriaDate() {
		return feriaDate;
	}

	public void setFeriaDate(Date feriaDate) {
		this.feriaDate = feriaDate;
	}
	
	public int getVal() {
		return val;
	}

	public void setVal(int val) {
		this.val = val;
	}
	public boolean isFlag() {
		return flag;
	}
	public void setFlag(boolean flag) {
		this.flag = flag;
	}
	//========================================================//
	

	public int getBibeNo() {
		return bibeNo;
	}
	
	public void setBibeNo(int bibeNo) {
		this.bibeNo = bibeNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getBtypeNo() {
		return btypeNo;
	}

	public void setBtypeNo(int btypeNo) {
		this.btypeNo = btypeNo;
	}

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

	public String getBibeDetail() {
		return bibeDetail;
	}

	public void setBibeDetail(String bibeDetail) {
		this.bibeDetail = bibeDetail;
	}

	public Timestamp getBibeRegdate() {
		return bibeRegdate;
	}

	public void setBibeRegdate(Timestamp bibeRegdate) {
		this.bibeRegdate = bibeRegdate;
	}

	public Timestamp getLastModified() {
		return lastModified;
	}

	public void setLastModified(Timestamp lastModified) {
		this.lastModified = lastModified;
	}
}
