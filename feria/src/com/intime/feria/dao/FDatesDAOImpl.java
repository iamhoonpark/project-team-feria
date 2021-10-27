package com.intime.feria.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.intime.feria.vo.FDate;
import com.intime.feria.vo.PageVO;

public class FDatesDAOImpl implements FDatesDAO {
	
	/* 2020-08-07 장유정(기본세팅) */
	// 멤버필드
	private SqlSession session;
	
	// setter
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public List<FDate> selectList(PageVO pageVO) {
		return session.selectList("fDates.selectList", pageVO);
	}
}
