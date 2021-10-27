package com.intime.feria.service;

import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.stereotype.Service;

import com.intime.feria.dao.BDetailsDAO;
import com.intime.feria.dao.BIngredientsDAO;
import com.intime.feria.dao.BMlPricesDAO;
import com.intime.feria.dao.BTypesDAO;
import com.intime.feria.dao.BibesDAO;
import com.intime.feria.dao.UsersDAO;
import com.intime.feria.vo.Bibe;
import com.intime.feria.vo.User;

@Service
public class BibeServiceImpl implements BibeService {

/* 2020-08-07 박상훈 기본세팅 */
	
	//멤버필드 bibesDAO
	private BibesDAO bibesDAO;
		
	private BTypesDAO bTypesDAO;
	
	private BIngredientsDAO bIngredientsDAO;
	
	private BMlPricesDAO bMlPricesDAO;
	
	private BDetailsDAO bDetailsDAO;
	
	
	//Setter bibesDAO
	public void setBibesDAO(BibesDAO bibesDAO) {
		this.bibesDAO = bibesDAO;
	}
	
	public void setbIngredientsDAO(BIngredientsDAO bIngredientsDAO) {
		this.bIngredientsDAO = bIngredientsDAO;
	}
	
	
	public void setbMlPricesDAO(BMlPricesDAO bMlPricesDAO) {
		this.bMlPricesDAO = bMlPricesDAO;
	}
	
	public void setbDetailsDAO(BDetailsDAO bDetailsDAO) {
		this.bDetailsDAO = bDetailsDAO;
	}
	
	public void setbTypesDAO(BTypesDAO bTypesDAO) {
		this.bTypesDAO = bTypesDAO;
	}

	//2020-08-11 박상훈 멤버필드 선언
	private UsersDAO usersDAO;
	
	//2020-08-11 박상훈 세터 선언
	public void setUsersDAO(UsersDAO usersDAO) {
		this.usersDAO = usersDAO;
	}
	
	//2020-08-01 박상훈 추상메서드 구현
	@Override
	public User login(User user) {
		return usersDAO.selectLogin(user);
	}
	
	//2020-08-12 박상훈 추상메서드 구현
	//선생님 피드백 : ajax만 호출하는 것은 List로 해도 된다. -> Map을 List로 변경
	@Override
	public List<Bibe> getHostsBibeList(Bibe bibe) {
		
		//bibes를 null로 초기화 후
		List<Bibe> bibes = null;
		
		//if문 bibe의 val 값이 2라면 Default 구문을 실행
		//2가 아닐 경우 Val 구문을 실행
		if(bibe.getVal()==2) {
			bibes = bibesDAO.selectHostsBibeDefault(bibe);
			System.out.println(bibes);
		}else {
			bibes = bibesDAO.selectHostBibeVal(bibe);
			System.out.println(bibes);
		}

		System.out.println("service :"+bibe.getVal());
		
		//bibes를 리턴
		return bibes;
		
		//return bibesDAO.selectHostsBibeList(bibe);
	}
	
}
