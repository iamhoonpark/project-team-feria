package com.intime.feria.dao;

import java.util.List;

import com.intime.feria.vo.BReview;
import com.intime.feria.vo.FReview;

/* 2020-08-07 장유정(기본세팅) */
public interface FReviewsDAO {
	
	//2020-08-13 박상훈
	public List<FReview> selectHostsFReviews(int userNo);
	
	public int selectReviewTotal(int userNo);

}
