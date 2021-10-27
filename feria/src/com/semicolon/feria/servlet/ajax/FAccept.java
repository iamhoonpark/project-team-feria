package com.semicolon.feria.servlet.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.intime.feria.dao.FriendsDAO;
import com.intime.feria.dao.RequestsDAO;
import com.intime.feria.vo.Friend;
import com.intime.feria.vo.Request;
import com.intime.feria.vo.User;

//@WebServlet(value="/ajax/fAccept.json")
public class FAccept extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("application/json; charset=UTF-8");
		
		// PrintWriter 객체 생성
		PrintWriter out = response.getWriter();
		
		// 삭제할 사람의 no를 얻어옴
		int no = Integer.parseInt(request.getParameter("no"));
		
		// User.LOGIN(loginMember) session을 요청받아 저장
		User loginMember = (User)request.getSession().getAttribute(User.LOGIN);
		
		// loginMember(로그인 한 본인)의 no를 memberNo에 저장
		int memberNo =loginMember.getNo(); 

		// print
		//System.out.println("신청대상: " + no);
		//System.out.println("신청자: " + memberNo);
		
		// no, memberNo를 가진 Friend,Request 객체 생성
		Friend friend = new Friend(no, memberNo);
		Request requester = new Request(no, memberNo);
				
		// 요청 상태(req_state)를 'Y'로 변경 후 friends 테이블에 추가
		// 각각 변수에 return 값 저장
		int result1 = RequestsDAO.updateAccept(requester);
		int result2 = FriendsDAO.insertFriend(friend);

		// print
		System.out.println((result1==1));
		System.out.println(result2);
		out.print("{\"no\":"+(result1==1)+"}");
	}
}
