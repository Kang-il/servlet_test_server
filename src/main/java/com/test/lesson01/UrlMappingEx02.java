package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//뒷 면 Url이 이러한 패턴이면 바로 연결 하겠다.
@WebServlet("/servlet/ex02")
public class UrlMappingEx02 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.print("<h1>안녕하세요</h1>");
		
		//1부터 10까지의 합계 1+2+3+4+5+6+7+...+10
		int sum=0;
		
		for(int i=0;i<=10;i++) {
			sum+=i;
		}
		
		out.print("<html><head><title>합계</title></head><body>");
		out.print("합계: <b>"+sum+"</b>");
		out.print("</body></html>");
	}
}
