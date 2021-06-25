package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz03")
public class Quiz03 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		
		PrintWriter out=response.getWriter();
		Date articleDate=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("기사 입력 시간: yyyy/MM/dd hh:mm:ss");
		
		out.print("<html><head><title>뉴스</title></head><body>");
		out.print("<h1>[단독] 고양이가 야옹해</h1>");
		out.print(sdf.format(articleDate));
		out.print("<hr>");
		out.print("<p>끝</p>");
		out.print("</body>");
	}
}
