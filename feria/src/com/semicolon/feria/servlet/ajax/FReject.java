package com.semicolon.feria.servlet.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.intime.feria.dao.RequestsDAO;
import com.intime.feria.vo.Friend;
import com.intime.feria.vo.Request;
import com.intime.feria.vo.User;

//@WebServlet("/ajax/fReject.json")
public class FReject extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("application/json; charset=UTF-8");
		
		// PrintWriter 객체 생성
		PrintWriter out = response.getWriter();
		
		// 거절할 사람의 no를 얻어옴
		int no = Integer.parseInt(request.getParameter("no"));
		
		// User.LOGIN(loginMember) session을 요청받아 저장
		User loginMember = (User)request.getSession().getAttribute(User.LOGIN);
		
		// loginMember(로그인 한 본인)의 no를 memberNo에 저장
		int memberNo =loginMember.getNo();

		//System.out.println(no);

		// no, memberNo를 가진 Request 객체 생성
		Request requester = new Request(no, memberNo);
		
		// 친구 거절 실행 후 result1에 return 값 저장
		int result1 = RequestsDAO.updateReject(requester);

		// print
		System.out.println((result1 == 1));
		out.print("{\"no\":" + (result1 == 1) + "}");

	}
}