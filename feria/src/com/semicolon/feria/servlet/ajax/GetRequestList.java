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
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.intime.feria.dao.RequestsDAO;
import com.intime.feria.util.PaginateUtil;
import com.intime.feria.vo.PageVO;
import com.intime.feria.vo.Request;
import com.intime.feria.vo.User;

//@WebServlet("/ajax/getRequestList.json")
public class GetRequestList extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=UTF-8");
		
		// PrintWriter 객체 생성
		PrintWriter out = response.getWriter();
		
		// Paging 처리를 위해 requests 목록의 페이지 번호를 얻음
		String pageNoStr = request.getParameter("reqPage");
		
		// 현재 페이지를 Int형으로 형변환
		int pageNo = Integer.valueOf(pageNoStr);
		
		// 한 페이지에 보여줄 li 수
		int numPage = 4;
		
		// User.LOGIN(loginMember) session을 요청받아 저장
		User loginMember = (User)request.getSession().getAttribute(User.LOGIN);
		
		// loginMember(로그인 한 본인)의 no를 memberNo에 저장
		int memberNo =loginMember.getNo(); 
		
		// PageVO 객체 생성
		PageVO pageVO = new PageVO(pageNo, numPage, memberNo);
		
		// 요청받은 목록을 저장하는 fReqList
		List<Request> fReqList = RequestsDAO.selectRequestList(pageVO); 
		
		// 로그인 한 본인이 가지고있는 요청 수 total에 저장
		int total = RequestsDAO.selectTotal(memberNo);
		
		// < 1 2 3 > 형태 #### ex) numBlock = 4; -> < 1 2 3 4 >
		int numBlock = 3;

		// pageURL 설정
		String url = "/mypage.jsp";
		String param = "reqPage=";
		
		// request의 Paging처리 객체 생성
		String reqPaginate = PaginateUtil.getPaginate(pageNo, total, numPage, numBlock, url, param);
		
		// Map 객체 생성
		Map<String, Object> reqMap = new ConcurrentHashMap<String, Object>();
		
		// reqMap에 fReqList, reqPaginate, total 넣어줌
		reqMap.put("fReqList", fReqList);
		reqMap.put("reqPaginate", reqPaginate);
		reqMap.put("total", total);
		
		// Json 형태로 출력하기 위한 ObjectMapper 객체 생성
		ObjectMapper om = new ObjectMapper();
		
		// reqMap을 Json 형태로 변환
		String json = om.writeValueAsString(reqMap);
		
		// print
		out.print(json);
	}
}
