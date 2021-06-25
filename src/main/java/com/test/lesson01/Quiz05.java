package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz05")
public class Quiz05 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		
		PrintWriter out=response.getWriter();
		
		
		int num=0;
		//Integer 은 Object 니까 없으면 null을 나타냄 
		//http status code 
		// 4XX 요텅오류    ex>404 - Not Found
		// 5XX 서버 오류   ex>501 502 503 -- 서버 확인
		
		if(!request.getParameter("number").equals("0")){
		 num= Integer.parseInt(request.getParameter("number"));
		}
		
		out.print("<html><head><title>구구단 링크</title><body><b><hr></b><ul>");
		if(num!=0) {
			for(int i=1;9>=i;i++) {
				out.println("<li>"+num+"X"+i+"="+(num*i)+"</li>");
			}
			out.println("</ul>");
		}else {}
		out.print("<ul></body>");
		
		
		out.println("<script type=text/javascript> function goBack(){window.history.back()} </script>");
		out.println("<input type='button' value='뒤로가기' onclick='goBack();'/>");
		
	}
}
