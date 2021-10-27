package com.semicolon.feria.servlet.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.intime.feria.dao.FriendsDAO;
import com.intime.feria.dao.RequestsDAO;
import com.intime.feria.util.PaginateUtil;
import com.intime.feria.vo.Friend;
import com.intime.feria.vo.PageVO;
import com.intime.feria.vo.Request;
import com.intime.feria.vo.User;

//@WebServlet("/ajax/getFriendList.json")
public class GetFriendList extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("application/json; charset=UTF-8");
		
		// PrintWriter 객체 생성
		PrintWriter out = resp.getWriter();

		// Paging 처리를 위해 friends 목록의 페이지 번호를 얻음
		String pageNoStr = req.getParameter("regPage");
		
		// 현재 페이지를 Int형으로 형변환
		int pageNo = Integer.valueOf(pageNoStr);
		
		// 한 페이지에 보여줄 li 수
		int numPage = 4;
		
		// User.LOGIN(loginMember) session을 요청받아 저장
		User loginMember = (User)req.getSession().getAttribute(User.LOGIN);
		int memberNo =loginMember.getNo(); 
		
		// loginMember(로그인 한 본인)의 no를 memberNo에 저장
		PageVO pageVO = new PageVO(pageNo, numPage, memberNo);

		// 등록된 친구 목록을 저장하는 fRegList
		List<Friend> fRegList = FriendsDAO.selectFriendList(pageVO);
		
		// 로그인 한 본인이 가지고있는 요청 수 total에 저장
		int total = FriendsDAO.selectTotal(memberNo);
		
		// < 1 2 3 > 형태 #### ex) numBlock = 4; -> < 1 2 3 4 >
		int numBlock = 3;

		// pageURL 설정
		String url = "/mypage.jsp";
		String param = "regPage=";

		// friend의 Paging처리 객체 생성
		String regPaginate = PaginateUtil.getPaginate(pageNo, total, numPage, numBlock, url, param);

		// Map 객체 생성
		Map<String, Object> regMap = new ConcurrentHashMap<String, Object>();
		
		// reqMap에 fRegList, regPaginate, total 넣어줌
		regMap.put("fRegList", fRegList);
		regMap.put("regPaginate", regPaginate);
		regMap.put("total", total);
		
		// Json 형태로 출력하기 위한 ObjectMapper 객체 생성
		ObjectMapper om = new ObjectMapper();
		
		// regMap을 Json 형태로 변환
		String json = om.writeValueAsString(regMap);

		// print
		out.print(json);
	}
}
