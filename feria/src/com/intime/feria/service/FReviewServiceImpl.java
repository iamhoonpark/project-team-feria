package com.intime.feria.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.intime.feria.dao.BReviewsDAO;
import com.intime.feria.dao.FReviewsDAO;
import com.intime.feria.vo.BReview;
import com.intime.feria.vo.FReview;

/* 2020-08-07 장유정(기본세팅) 1 */
@Service
public class FReviewServiceImpl implements FReviewService {
	
	private FReviewsDAO fReviewsDAO;
	
	public void setfReviewsDAO(FReviewsDAO fReviewsDAO) {
		this.fReviewsDAO = fReviewsDAO;
	}
	
	//2020-08-13 박상훈
	@Override
	public List<FReview> getHostsReviews(int userNo) {
		return fReviewsDAO.selectHostsFReviews(userNo);
	}
	
	@Override
	public int getHostsReviewTotal(int userNo) {
		return fReviewsDAO.selectReviewTotal(userNo);
	}

}
