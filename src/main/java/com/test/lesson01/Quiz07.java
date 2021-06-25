package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/servlet/quiz07")
public class Quiz07 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		// 전달받은 주소에 서울시 가 포함되어 있지 않으면, 배달 불가 지역입니다 를 출력하세요.
		// 전달 받은 결제 카드가 신한카드인 경우 결제 불가 카드 입니다. 를 출력하세요.
		boolean addressCheck=false;
		boolean cardCheck=false;
		
		PrintWriter out=response.getWriter();
		
		String address=request.getParameter("address");
		String card=request.getParameter("card");
		int price =0;
	
		if(!request.getParameter("price").equals("")) {
			price=Integer.parseInt(request.getParameter("price"));
		}
		
		if(address==null||card==null||price==0) {
			out.print("<script>");
			out.print("alert('빈칸을 채워주세요');");
			out.print("history.go(-1);");
			out.print("</script>");
			return;
			
		}
		
		if(address.contains("서울시")) {
			addressCheck=true;
		}else {
			out.print("<script>");
			out.print("alert('배달불가 지역입니다.');");
			out.print("history.go(-1);");
			out.print("</script>");
			return;
		}
		
		
		if(card.equals("신한카드")) {
			cardCheck=false;
			out.print("<script>");
			out.print("alert('결제 불가 카드입니다.');");
			out.print("history.go(-1);");
			out.print("</script>");
			return;
		}else {
			cardCheck=true;
		}
		
		if(addressCheck==true&&cardCheck==true&&price!=0) {
			out.print(address+"<b> 배달 준비중</b><br>");
			out.print("결제금액:"+price+"원");
		}
		
		
	}
}
