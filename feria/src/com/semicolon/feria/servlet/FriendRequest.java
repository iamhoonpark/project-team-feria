package com.semicolon.feria.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.intime.feria.dao.FriendsDAO;
import com.intime.feria.dao.RequestsDAO;
import com.intime.feria.dao.UsersDAO;
import com.intime.feria.vo.Friend;
import com.intime.feria.vo.Request;
import com.intime.feria.vo.User;

//@WebServlet("/request.feria")
public class FriendRequest extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=UTF-8");

		// name="email" 로 넘긴 email parameter 값 저장
		String email = req.getParameter("email");
		
		// 해당 email을 가진 User의 no를 userNo에 저장
		int userNo = UsersDAO.selectOne(email);
		
		// session 얻기
		HttpSession session = req.getSession();
		
		// print userNo
		//System.out.println("입력한 유저 번호: " + userNo);
		
		// PrintWriter 객체 out 생성
		PrintWriter out = resp.getWriter();
		
		User loginMember = (User)req.getSession().getAttribute(User.LOGIN);
		int memberNo =loginMember.getNo();
		
		// 이전 페이지를 기억하는 referer 생성
		String referer = req.getHeader("referer");
		
		// print memberNo(로그인 한 사람 no), userNo(요청 수신자 User의 no)
		//System.out.println("신청자 번호: " + memberNo);
		//System.out.println("신청대상: " + userNo);
		
		// memberNo, userNo를 가진 Friend 객체
		Friend friend = new Friend(memberNo, userNo);
		
		// memberNo, userNo를 가진 Request 객체
		Request ckRequest = new Request(memberNo, userNo);
		
		// requests 테이블에서 요청 여부(req_state)를 가져와서 String 형태로 저장
		String request = RequestsDAO.checkRequest(ckRequest);
		
		// 본인 이메일로 신청한게 아닐 때
		if(memberNo != userNo) {
			// friends 테이블에 없을 때(친구가 아닌 상태이거나 요청 처리 대기중)
			if(FriendsDAO.checkFriend(friend) == null) {
				
				// friends 테이블에 없고 request 테이블에 없거나, Y, N일 때
				// request == null		: 신청한 적 X
				// request.equals("Y")	: 친구가 되었으나 둘 중 누군가 삭제, 재신청
				// request.equals("N")	: 친구신청 거절당해서 ㅜ_ㅜ 다시 신청
				if(request == null || request.equals("Y") || request.equals("N") ) {
					
					//Request requester = new Request(70, memberNo, userNo);
					//System.out.println("실행됨");
					RequestsDAO.insert(ckRequest);
					resp.sendRedirect(referer);
					
				}else {	// friends 테이블에 없고 request 테이블에 있을 때 (요청 대기중)
					
					//System.out.println("이미 요청되어있음");
					//System.out.println("실행안됨");
					out.println("<script>alert('요청 응답 대기중인 친구입니다.'); location.href='/mypage.jsp';</script>");
					out.close();
				}
			} else {	// friends 테이블에 있을 때 (친구일 때)
				
				//System.out.println("이미 친구임");
				//System.out.println("실행안됨");
				out.println("<script>alert('이미 친구입니다.'); location.href='/mypage.jsp';</script>");
				out.close();
			}
		} else { // 본인에게 신청했을 때
			//System.out.println("본인입니다!");
			//System.out.println("실행안됨");
			out.println("<script>alert('본인입니다.'); location.href='/mypage.jsp';</script>");
			out.close();
		}
	}
}