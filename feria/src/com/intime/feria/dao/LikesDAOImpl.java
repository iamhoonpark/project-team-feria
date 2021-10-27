package com.intime.feria.dao;

import org.apache.ibatis.session.SqlSession;

import com.intime.feria.vo.Like;

public class LikesDAOImpl implements LikesDAO {
	
	/* 2020-08-07 장유정(기본세팅) */
	// 멤버필드
	private SqlSession session;
	
	// setter
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	//2020-08-09 박상훈
	@Override
	public int insertBibeHeart(Like like) {
		return session.insert("likes.insertBibeHeart", like);
	}
}
