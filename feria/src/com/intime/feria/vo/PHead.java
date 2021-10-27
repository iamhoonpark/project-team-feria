package com.intime.feria.vo;

import java.sql.Timestamp;

public class PHead {

	private int prtcCntNo, prtcNo, userNo, rownum;
	private String prtcOpenStr;
	private char prtcOpen;
	private Timestamp regdate;
	
	public PHead() {
		// TODO Auto-generated constructor stub
	}


	public int getRownum() {
		return rownum;
	}


	public void setRownum(int rownum) {
		this.rownum = rownum;
	}


	public void setPrtcOpenStr(String prtcOpenStr) {
		this.prtcOpenStr = prtcOpenStr;
	}


	public int getPrtcCntNo() {
		return prtcCntNo;
	}

	public void setPrtcCntNo(int prtcCntNo) {
		this.prtcCntNo = prtcCntNo;
	}

	public int getPrtcNo() {
		return prtcNo;
	}

	public void setPrtcNo(int prtcNo) {
		this.prtcNo = prtcNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	
	//prtcOpen을 String형으로 리턴
	public String getPrtcOpenStr() {
		if(prtcOpen=='Y') {
			return "공개";
		}else {
			return "비공개";
		}
	}
	public char getPrtcOpen() {
		return prtcOpen;
	}

	public void setPrtcOpen(char prtcOpen) {
		this.prtcOpen = prtcOpen;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}	
}
