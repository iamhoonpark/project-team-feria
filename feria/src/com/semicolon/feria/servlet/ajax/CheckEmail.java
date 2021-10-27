package com.semicolon.feria.servlet.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.intime.feria.dao.UsersDAO;

//@WebServlet(value="/ajax/checkEmail.json")
public class CheckEmail extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("application/json; charset=UTF-8");
		
		PrintWriter out = resp.getWriter();
		
		String email = req.getParameter("email");
		
		int result = UsersDAO.selectCheckEmail(email);
		
		out.print("{\"count\":"+result+"}");
		
	}//service end
	
}
