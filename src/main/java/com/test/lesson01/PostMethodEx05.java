package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class PostMethodEx05 extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
//		response.setCharacterEncoding("UTF-8");
//		request.setCharacterEncoding("UTF-8");
		//톰캣 서버가 기본적으로 IOS-8859-1 인코딩 하기 때문에 필터 설정을 추가 해야 한다.
		//POST METHOD방식으로 데이터가 주고받아질 때 발생하는 문제.
		PrintWriter out=response.getWriter();
		
		String userId=request.getParameter("userId");
		String name=request.getParameter("name");
		String birth=request.getParameter("birth");
		String email=request.getParameter("email");

		out.print("<html><head><title>회원정보</title><style>table{text-align:center;}</style></head><body><table border=1>");
		out.print("<tr><th>아이디</th><td>"+userId+"</td></tr>");
		out.print("<tr><th>이름</th><td>"+name+"</td></tr>");
		out.print("<tr><th>생년월일</th><td>"+birth+"</td></tr>");
		out.print("<tr><th>email</th><td>"+email+"</td></tr>");
		out.print("</border></body></html>");
	}
}
