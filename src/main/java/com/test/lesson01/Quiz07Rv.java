package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz07")
public class Quiz07Rv extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String address=request.getParameter("address");
		String card=request.getParameter("card");
		String price =request.getParameter("price");
		
		//1. 전달받은 주소에 서울시가 포함되어있지 않으면 배달 불가지역입니다 출력
		//2. 전달 받은 결제 카드가 신한카드인 경우 결제불가 카드입니다. 출력
		
		out.print("<html><head><title>결과</title></head><body>");
		
		if(address.startsWith("서울시")==false) {
			out.print("배달 불가 지역입니다");
		}else if(card.equals("신한카드")) {
			out.print("결제 불가 카드입니다.");
		}else {
			out.print(address+" <b>배달 준비중</b><br>결제금액 : "+price+"원");
		}
		
		
		
		out.print("</body></html>");
		
		
	}
}
