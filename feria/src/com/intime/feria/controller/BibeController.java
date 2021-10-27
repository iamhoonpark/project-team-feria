package com.intime.feria.controller;

import org.springframework.stereotype.Controller;

import com.intime.feria.service.BReplyService;
import com.intime.feria.service.BReviewService;
import com.intime.feria.service.BibeService;
import com.intime.feria.service.UBibeService;

@Controller
public class BibeController {
	
/* 2020-08-07 박상훈 기본세팅 */
	
	//멤버필드
	
	private BibeService bibeService;
	private BReviewService bReviewService;
	private BReplyService bReplyService;
	private UBibeService uBibeService;
	
	public void setBibeService(BibeService bibeService) {
		this.bibeService = bibeService;
	}
	public void setbReviewService(BReviewService bReviewService) {
		this.bReviewService = bReviewService;
	}
	public void setbReplyService(BReplyService bReplyService) {
		this.bReplyService = bReplyService;
	}
	public void setuBibeService(UBibeService uBibeService) {
		this.uBibeService = uBibeService;
	}
	
}
