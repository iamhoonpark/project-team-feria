package com.intime.feria.service;

import org.springframework.stereotype.Service;

import com.intime.feria.dao.CNAllergiesDAO;
import com.intime.feria.dao.CNDishesDAO;
import com.intime.feria.dao.CenasDAO;
import com.intime.feria.dao.DishesDAO;

/* 2020-08-07 장유정(기본세팅) 4 */
@Service
public class CenaServiceImpl implements CenaService {
	
	private CenasDAO cenasDAO;
	private CNAllergiesDAO CNAllergiesDAO;
	private CNDishesDAO CNDishesDAO;
	private DishesDAO dishesDAO;
	
	public void setCenasDAO(CenasDAO cenasDAO) {
		this.cenasDAO = cenasDAO;
	}
	
	public void setCNAllergiesDAO(CNAllergiesDAO cNAllergiesDAO) {
		CNAllergiesDAO = cNAllergiesDAO;
	}
	
	public void setCNDishesDAO(CNDishesDAO cNDishesDAO) {
		CNDishesDAO = cNDishesDAO;
	}
	
	public void setDishesDAO(DishesDAO dishesDAO) {
		this.dishesDAO = dishesDAO;
	}
	
}
