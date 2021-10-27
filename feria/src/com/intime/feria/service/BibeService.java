package com.intime.feria.service;

import java.util.List;
import java.util.Map;

import com.intime.feria.dao.BibesDAO;
import com.intime.feria.vo.Bibe;
import com.intime.feria.vo.User;

/* 2020-08-07 장유정(기본세팅) */
public interface BibeService {
	
	//2020-08-11 박상훈 로그인
	public User login(User user);
	
	//2020-08-12 박상훈
	public List<Bibe> getHostsBibeList(Bibe bibe);
	
	//우선, DAO와 Service는 1:1 관계가 아님.
	//DAO에 선언되어 있고 ServiceImpl에서 getHostsBibeDefault를
	//충분히 사용하고 있기 때문에 반드시 하기 추상메서드 선언을 없애야 함
	//public List<Bibe> getHostsBibeVal(Bibe bibe);
	
}
