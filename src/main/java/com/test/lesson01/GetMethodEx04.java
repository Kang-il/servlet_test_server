package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex04")
public class GetMethodEx04 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String id=request.getParameter("userId");
		String name=request.getParameter("userName");
		String birth=request.getParameter("birth");
		String email=request.getParameter("email");
		
//		out.println("userId : "+id+"<br>");
//		out.println("userName : "+name+"<br>");
//		out.println("birth : "+birth+"<br>");
//		out.println("email : "+email);
		
		//테이블로 출력
		out.println("<html><head><title>회원정보</title><style>*{text-align:center;}</style></head><body>");
		out.print("<table border=\"1\"");
		out.print("<tr><th>아이디</th><td>"+id+"</td></tr>");
		out.print("<tr><th>이름</th><td>"+name+"</td></tr>");
		out.print("<tr><th>생년월일</th><td>"+birth+"</td></tr>");
		out.print("<tr><th>이메일</th><td>"+email+"</td></tr>");
		out.print("</table>");
		out.println("</body></html>");
		
	}
}
