package com.semicolon.feria.servlet.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//@WebServlet(value="/ajax/reservedFeria.json")
public class GetReservedFeria extends HttpServlet {
	
	///★★★★★★★★★★★★★★★★★★★★★★★★★★★★★doGet
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("application/json; charset=UTF-8");
		
		PrintWriter out = resp.getWriter();
		HttpSession session = req.getSession();
		
	};//doGet end

}
