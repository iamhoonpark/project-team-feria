package com.intime.feria.vo;

import java.util.List;

public class FDate {

	private int fDateNo;
	private String feriaName,hostName,profileImg;
	private char cenaType;
	private List<FImage> fImages;
	private List<PHead> pHeads;
	
	public FDate() {
		// TODO Auto-generated constructor stub
	}
	
	public List<PHead> getpHeads() {
		return pHeads;
	}

	public void setpHeads(List<PHead> pHeads) {
		this.pHeads = pHeads;
	}
	
	public List<FImage> getfImages() {
		return fImages;
	}

	public void setfImages(List<FImage> fImages) {
		this.fImages = fImages;
	}

	public int getfDateNo() {
		return fDateNo;
	}

	public void setfDateNo(int fDateNo) {
		this.fDateNo = fDateNo;
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