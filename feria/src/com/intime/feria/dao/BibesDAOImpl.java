package com.intime.feria.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.intime.feria.vo.Bibe;
import com.intime.feria.vo.User;

public class BibesDAOImpl implements BibesDAO {
	
	/* 2020.08.07. Kelly - 기본세팅 */
	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	//2020-08-11 박상훈 추상메서드 구현
	@Override
	public User selectLogin(User user) {
		return session.selectOne("users.selectLogin", user);
	}
	
	//2020-08-11 박상훈 추상메서드 구현
	@Override
	public List<Bibe> selectHostsBibeDefault(Bibe bibe) {
		System.out.println("DAO :"+bibe.getVal());
		return session.selectList("bibes.selectHostsBibeDefault", bibe);
	}
	
	@Override
	public List<Bibe> selectHostBibeVal(Bibe bibe) {
		System.out.println("DAO :"+bibe.getVal());
		return session.selectList("bibes.selectHostBibeVal", bibe);
	}

}
