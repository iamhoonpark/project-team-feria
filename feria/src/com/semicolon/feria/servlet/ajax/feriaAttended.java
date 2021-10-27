package com.semicolon.feria.servlet.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.intime.feria.dao.UsersDAO;
import com.intime.feria.vo.User;

//@WebServlet("/ajax/feriaAttended.json")
public class feriaAttended extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//이 페이지를 제이슨 형식으로 바꿔준다
				resp.setContentType("application/json; charset=UTF-8");
				
				//json을 배열 형식으로 브라우저에 출력할 수 있게 함
				PrintWriter out = resp.getWriter();
				
				//파라미터를 얻어옴
				String prtcCntNoStr = req.getParameter("prtcCntNo");
				
				//형변환
				int prtcCntNo = Integer.parseInt(prtcCntNoStr);
				System.out.println("유저가 공개여부 버튼 누른 게시물 번호 : "+prtcCntNo);

				//업데이트 구문 실행
				int result = UsersDAO.updateMypageFeriaPrivate(prtcCntNo);
				System.out.println("업데이트 결과 : "+result);
				
				
				out.print(prtcCntNoStr);
	}
	
	
}
