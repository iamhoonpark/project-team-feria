package com.intime.feria.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.intime.feria.vo.PageVO;
import com.intime.feria.vo.User;

//2020-08-07 박상훈 Annotation 선언
@Repository
public class UsersDAOImpl implements UsersDAO {
	
	/* 2020-08-07 장유정(기본세팅) */
	// 멤버필드
	private SqlSession session;
	
	// setter
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public User selectLogin(User user) {
		return session.selectOne("users.selectLogin", user);
	}
	
	@Override
	public List<User> selectUserList() {
		return session.selectList("users.selectUserList");
	}
	
	@Override
	public int selectOne(String email) {
		return session.selectOne("users.selectOne", email);
	}
	
	@Override
	public int selectCheckEmail(String email) {
		return session.selectOne("users.selectCheckEmail", email);
	}
	
	@Override
	public int insert(User user) {
		return session.insert("users.joinInsert",user);
	}
		
	@Override
	public int updateMypageFeriaPrivate(int prtcCntNo) {
		return session.update("users.updateMypageFeriaPrivate",prtcCntNo);
	}
	@Override
	public List<User> selectMypageFeriaList(PageVO pageVO) {
		return session.selectList("users.selectMypageFeriaList", pageVO);
	}
	
	//2020-08-09 박상훈
	@Override
	public int selectTotal(int no) {
		return session.selectOne("users.selectTotal", no);
	}
}
