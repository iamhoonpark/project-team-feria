package com.intime.feria.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.intime.feria.vo.PageVO;
import com.intime.feria.vo.User;

/* 2020-08-07 장유정(기본세팅) */
public interface UserService {
	
	//로그인
	public User login(User user);
	
	//2020-08-07 박상훈 추상메서드 선언
	public int getMyFeriaTotal(int no);
	public int hideMyFeria(int prtcCntNo);
	//2020-08-09 박상훈 추상메서드 선언
	public Map<String, Object> getMyFeriaPaginate(int page, int no);
	
}
