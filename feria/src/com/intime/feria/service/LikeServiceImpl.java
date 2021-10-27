package com.intime.feria.service;

import org.springframework.stereotype.Service;

import com.intime.feria.dao.LikesDAO;
import com.intime.feria.vo.Like;

/* 2020-08-07 장유정(기본세팅) */
@Service
public class LikeServiceImpl implements LikeService {

	//2020.08.07 이원희
		private LikesDAO likesDAO;
		
		public void setLikesDAO(LikesDAO likesDAO) {
			this.likesDAO = likesDAO;
		}
	
	//2020-08-13 박상훈
	@Override
	public int addBibeHeart(Like like) {
		return likesDAO.insertBibeHeart(like);
	}
		
}