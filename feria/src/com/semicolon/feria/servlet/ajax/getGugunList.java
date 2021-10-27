package com.semicolon.feria.servlet.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.intime.feria.dao.CitiesDAO;
import com.intime.feria.dao.SidosDAO;
import com.intime.feria.vo.City;
import com.intime.feria.vo.Sido;

//@WebServlet("/ajax/GugunList.json")
public class getGugunList extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//이 페이지를 제이슨 형식으로 바꿔준다
		resp.setContentType("application/json; charset=UTF-8");
		
		//json 배열 형식으로 출력할 수 있게 도와준다
		PrintWriter out = resp.getWriter();
		
		//파라미터 얻어옴
		String cityNoStr = req.getParameter("cityNo");
		
		//형변환
		int cityNo = Integer.parseInt(cityNoStr);
		
		System.out.println(cityNo);
		
		//cityNo를 인자로 가지고 있는 selectGugun메서드를 통해서
		//City의 멤버필드들을 배열 형식으로 얻어와서 cities변수에 넣어준다
		//cities변수는 City 멤버필드를 배열형식으로 가지고 있음 
		List<City> cities = CitiesDAO.selectGugun(cityNo);

		//Mapper 객체(xml아님) 연결성있는 객체
		//String Json 형식으로 변환하게 뭐 도와주는 객체
		ObjectMapper om = new ObjectMapper();

		String json = om.writeValueAsString(cities);
		
		System.out.println(json);
		
		//페이지에 뿌리는 것 = 표현식(자바코드임)
		out.print(json);
		
	}//doGet end
	
}//getGugunList() end
