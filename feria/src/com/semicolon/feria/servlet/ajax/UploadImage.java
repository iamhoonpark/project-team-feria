package com.semicolon.feria.servlet.ajax;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


//@WebServlet("/ajax/uploadImage.json")
public class UploadImage extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//ServletContext
				ServletContext application = req.getServletContext();
				
				//파일업로드의 경로
				String rootPath = application.getRealPath("/");
				
				String uploadPath = rootPath+"upload"+File.separator;
				
				System.out.println(uploadPath); //-> 들어가는 경로
				
				//multipart/form-data로 넘기면
				//cos라이브러리를 활용해야만 합니다.
				
				MultipartRequest mr = new MultipartRequest(req, uploadPath, 1024*1024*100, "UTF-8", new DefaultFileRenamePolicy());
				
				String fileName = mr.getFilesystemName("img");
				
				System.out.println(fileName);
				
				//응답 content type을 지정
				resp.setContentType("application/json; charset=UTF-8");
				
				//응답
				PrintWriter out = resp.getWriter();
				
				out.print("{\"img\":\""+fileName+"\"}");
	}
	
}
