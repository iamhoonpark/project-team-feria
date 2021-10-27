package com.semicolon.feria.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.intime.feria.dao.UsersDAO;
import com.intime.feria.vo.User;

//@WebServlet("/login.feria")
public class Login extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//세션 얻기
		HttpSession session = req.getSession();
		
		//넘어온 파라미터 얻기
		String email = req.getParameter("email");
		
		String pwd = req.getParameter("pwd");
		
		System.out.println(email);
		System.out.println(pwd);
		
		User user = new User(email,pwd);
		
		User loginMember = UsersDAO.selectLogin(user);
		
		
		if(loginMember!=null) {
			session.setAttribute(User.LOGIN,loginMember);
			//String referer = req.getHeader("referer");
			String referer = (String)session.getAttribute("referer");
			System.out.println(referer);
			resp.sendRedirect(referer);
			session.removeAttribute("referer");
		}else {
			session.setAttribute("msg", "이메일과 비밀번호를 정확히 입력해주십시오.");
			resp.sendRedirect("/login.jsp");
		}//if~else end
		
		//request의 header에 존재하는 referer로
		//리다이렉트
		/*
		 * String referer = req.getHeader("referer");
		 * 
		 * System.out.println(referer);
		 */
		
	}
	
}
