package com.intime.feria.service;

import java.util.List;

import com.intime.feria.vo.BReview;
import com.intime.feria.vo.FReview;

/* 2020-08-07 장유정(기본세팅) */
public interface FReviewService {

	//2020-08-13 박상훈
	public List<FReview> getHostsReviews(int userNo);
	
	public int getHostsReviewTotal(int userNo);
	
}
