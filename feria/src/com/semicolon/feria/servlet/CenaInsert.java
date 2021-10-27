package com.semicolon.feria.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.intime.feria.dao.CNAllergiesDAO;
import com.intime.feria.dao.CNDishesDAO;
import com.intime.feria.dao.CenasDAO;
import com.intime.feria.vo.CNAllergy;
import com.intime.feria.vo.CNDish;
import com.intime.feria.vo.Cena;


//@WebServlet("/cenaInsert.jsp")
public class CenaInsert extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//세나 이미지 넘겨받기
		String cenaImg = request.getParameter("cenaImgName");
		System.out.println(cenaImg);
		
		//세나 등록 유저 번호
		String userNoStr = request.getParameter("userNo");
		System.out.println(userNoStr);
		
		//인트형으로 형변환
		int userNo = Integer.parseInt(userNoStr);
		System.out.println(userNo);
		
		//세나 이름 파라미터 넘겨받기
		String cenaName = request.getParameter("cenaName");
		System.out.println(cenaName);
		
		//세나타입(밥상,술상) 파라미터 넘겨받기
		String cenaTypeStr = request.getParameter("cenaType");
		
		//char형으로 형변환
		char cenaType = cenaTypeStr.charAt(0);
		System.out.println(cenaType);
		
		//밀타입(한식,중식 등) 파라미터 넘겨받기
		String mealTypeStr = request.getParameter("mealType");
		
		//char형으로 형변환
		char mealType = mealTypeStr.charAt(0);
		System.out.println(mealType);
		
		//호스트 한 마디 파라미터 넘겨받기
		String hostCmt = request.getParameter("hostMsg");
		System.out.println(hostCmt);
		
		//Cena(VO)에 변수 값 담기
		Cena cena = new Cena(userNo,cenaImg,cenaType,mealType,cenaName,hostCmt);
		
		//세나 테이블에 인서트
		CenasDAO.insert(cena);
		
		//입력한 세나 번호 얻기
		int cenaNo = cena.getCenaNo();
		System.out.println(cenaNo);
		
		//allergy라는 name으로 전송되는 값을 allergies 배열에 담기
		String[] allergies = request.getParameterValues("allergy");
		
		for (String allergy : allergies) {
			System.out.println(allergy);
			//int형으로 형변환
			int alleNo = Integer.parseInt(allergy);
			//CNAllergy(VO)에 변수 값 담기
			CNAllergy cNAllergy = new CNAllergy(cenaNo,alleNo);
			//CNAllergy 테이블에 인서트
			CNAllergiesDAO.insert(cNAllergy);
		}//for end

		String[] cookNoStrs = request.getParameterValues("cookNo");
		
		for (String cookNoStr : cookNoStrs) {
			System.out.println(cookNoStr);
			//int형으로 형변환
			int cookNo = Integer.parseInt(cookNoStr);
			System.out.println("cookNo : "+cookNo);
			//CNDishes(VO)에 변수 값 담기
			CNDish cNDish = new CNDish(cenaNo,cookNo); 
			//CNDishes 테이블에 인서트
			CNDishesDAO.insert(cNDish);
		}//for end
		
		//response.sendRedirect("/feria_cena_list.jsp");
		
	}
}
