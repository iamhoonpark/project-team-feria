package com.intime.feria.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.intime.feria.vo.Feria;
import com.intime.feria.vo.PageVO;

public class FeriasDAOImpl implements FeriasDAO {
	
	/* 2020-08-07 장유정(기본세팅) */
	// 멤버필드
	private SqlSession session;
	
	// setter
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public List<Feria> selectList(PageVO pageVO) {
		return session.selectList("ferias.selectList", pageVO);
	}
	
	//2020-08-12 박상훈
	@Override
	public List<Feria> selectHostsFeiraList(PageVO pageVO) {
		return session.selectList("ferias.selectHostsFeiraList", pageVO);
	}
	//2020-08-12 박상훈
	@Override
	public int selectHostsFeriaTotal(int no) {
		return session.selectOne("ferias.selectHostsFeriaTotal", no);
	}
}
