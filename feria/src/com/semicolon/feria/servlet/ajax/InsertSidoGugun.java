package com.semicolon.feria.servlet.ajax;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.intime.feria.dao.SidosDAO;
import com.intime.feria.vo.Gugun;
import com.intime.feria.vo.Sido;

//@WebServlet("/ajax/insertSidoGugun.feria")
public class InsertSidoGugun extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//json은 요청객체의 getParameter 메서드를 통해 
		String json = req.getParameter("sido");
		
		
		//문자열인 json을 자바의 객체 배열로 변경
		ObjectMapper om = new ObjectMapper();
		
		//Sido배열 sidos는 = json의 ......
		Sido[] sidos = om.readValue(json, Sido[].class);
				
		for (Sido sido : sidos) {
			
			System.out.println("상위지역번호 : "+sido.getSidoCd()+", 상위지역명 : "+sido.getName());
			
			//insert 하나
			SidosDAO.insertSido(sido);
			
			for (Gugun gugun : sido.getGugun()) {
				
				System.out.println("구군 : "+gugun.getCode()+", 도시명: "+gugun.getName()+", 상위지역번호 : "+gugun.getSidoCd());
				
				gugun.setSidoCd(sido.getSidoCd());
				
				System.out.println("구군 : "+gugun.getCode()+", 도시명: "+gugun.getName()+", 상위지역번호 : "+gugun.getSidoCd());
				//insert 하나
				SidosDAO.insertGugun(gugun);
				
			}
			
		}
		
	}
	
}
