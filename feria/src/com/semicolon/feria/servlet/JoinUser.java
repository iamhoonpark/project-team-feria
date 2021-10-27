package com.semicolon.feria.servlet;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.intime.feria.dao.UsersDAO;
import com.intime.feria.vo.User;

//@WebServlet("/join.feria")
public class JoinUser extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//파라미터 얻기
		String email = req.getParameter("email");
		String firstName = req.getParameter("firstName");
		String lastName = req.getParameter("lastName");
		String pwd = req.getParameter("password");
		String year = req.getParameter("year");
		String month = req.getParameter("month");
		String date = req.getParameter("date");
		String phoneNum = req.getParameter("phoneNumber");
		String sidoCdStr = req.getParameter("sidoCd"); 
		String gugunCdStr =req.getParameter("gugunCd");
		
		//형변환
		Date birth = Date.valueOf(year+"-"+month+"-"+date);
		int sidoNo = Integer.parseInt(sidoCdStr); 
		int gugunNo = Integer.parseInt(gugunCdStr);
		 
		
		//User객체 생성
		User user = new User(email, firstName, lastName, pwd, birth, phoneNum, sidoNo, gugunNo);
		
		int result = UsersDAO.insert(user);
		
		System.out.println("회원가입 "+result+"명 완료");
		
		resp.sendRedirect("/login.jsp");
		
	};//dopost end
	
}//JoinUser end
