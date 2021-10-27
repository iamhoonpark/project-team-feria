package com.intime.feria.dao;

import java.util.List;
import java.util.Map;

import com.intime.feria.vo.PageVO;
import com.intime.feria.vo.User;

public interface UsersDAO {
	
	/* 2020-08-07 장유정(기본세팅) */
	public User selectLogin(User user);
	public List<User> selectUserList();
	public int selectOne(String email);
	public int selectCheckEmail(String email);
	public int insert(User user);
	
	//예약된 페리아 전체 개수
	public int selectTotal(int no);
	//게시물 공개 또는 비공개 전환
	public int updateMypageFeriaPrivate(int prtcCntNo);
	//20-08-09 박상훈
	public List<User> selectMypageFeriaList(PageVO pageVO);
	
}
