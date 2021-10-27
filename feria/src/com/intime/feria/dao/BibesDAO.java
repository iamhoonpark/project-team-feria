package com.intime.feria.dao;

import java.util.List;

import com.intime.feria.vo.Bibe;
import com.intime.feria.vo.User;

public interface BibesDAO {
	
	//2020-08-11 박상훈 로그인
	public User selectLogin(User user);

	//2020-08-11 박상훈 : 호스트가 받은 비베리스트 호출 추상메서드 선언
	//오류 사유: parameterType에는 Bibe가 되어있는데, 메서드에는 인자를 선언하지 않아서
	//Bibe를 선언
	public List<Bibe> selectHostsBibeDefault(Bibe bibe);
	
	public List<Bibe> selectHostBibeVal(Bibe bibe);
	
}
