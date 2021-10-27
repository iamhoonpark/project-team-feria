package com.semicolon.feria.servlet.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.intime.feria.dao.DishesDAO;
import com.intime.feria.vo.Dish;

//@WebServlet("/ajax/insertDishes.json")
public class InsertDishes extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("application/json; charset=UTF-8");
		
		PrintWriter out = resp.getWriter();
		
		String cookName = req.getParameter("cookName");
		int cookNo = 0;
		Dish dish = DishesDAO.selectDishCheck(cookName);
		
		if(dish==null) {
			DishesDAO.insert(cookName);
			cookNo = DishesDAO.selectDish();
		}else {
			cookNo = DishesDAO.selectDishNoCheck(cookName);
		}
		
		out.print("{\"cookNo\":"+cookNo+",\"cookName\":\""+cookName+"\"}");
		
		
		
	}
	
}
