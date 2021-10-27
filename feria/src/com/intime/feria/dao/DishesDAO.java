package com.intime.feria.dao;

import java.util.List;

import com.intime.feria.vo.Dish;

public interface DishesDAO {
	
	/* 2020-08-07 장유정(기본세팅) */
	public int selectDishNoCheck(String cookName);
	public Dish selectDishCheck(String cookName);
	public int selectDish();
	public int insert(String cookName);
	public List<Dish> selectList();
}
