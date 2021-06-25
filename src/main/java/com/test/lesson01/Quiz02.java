package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Quiz02 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain");
		
		PrintWriter out=response.getWriter();
		
		Date now =new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("현재 시간은 hh시 mm분 ss초 입니다.");
		
		out.println(sdf.format(now));
	}
	
}
