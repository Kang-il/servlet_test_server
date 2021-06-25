package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingEx01 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글 깨짐 방지
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain");
		
		PrintWriter out= response.getWriter();
		out.println("안녕하세요. 서블릿입니다.");
		
		Date now= new Date();
		out.println(now);
		
		//2021-06-21 16:13:05 
		//formatter 사용
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a hh:mm:ss"); //달표시는 대문자 M 분 표시는 소문자 m 
		//SimpleDateFormat 의 메서드 format()을 사용 date객체를 매개변수로 받아 String으로 포맷에 맞춰 날짜를 반환함
		out.println(sdf.format(now));
		
	}
}
