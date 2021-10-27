package com.semicolon.feria.servlet.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.intime.feria.dao.FriendsDAO;
import com.intime.feria.vo.Friend;
import com.intime.feria.vo.User;

//@WebServlet("/ajax/fDelete.json")
public class FDelete extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("application/json; charset=UTF-8");
		
		// PrintWriter 객체 생성
		PrintWriter out = response.getWriter();

		// 삭제할 사람의 no를 얻어옴
		int no = Integer.parseInt(request.getParameter("no"));
		
		//System.out.println(no);

		// User.LOGIN(loginMember) session을 요청받아 저장
		User loginMember = (User)request.getSession().getAttribute(User.LOGIN);
		
		// loginMember(로그인 한 본인)의 no를 memberNo에 저장
		int memberNo =loginMember.getNo();
		
		// no, memberNo를 가진 Friend 객체 생성
		Friend friend = new Friend(no, memberNo);

		// 친구 삭제 실행 후 result1에 return 값 저장
		int result1 = FriendsDAO.deleteFriend(friend);

		// print
		System.out.println((result1 == 1));
		out.print("{\"no\":" + (result1 == 1) + "}");
	}
}
