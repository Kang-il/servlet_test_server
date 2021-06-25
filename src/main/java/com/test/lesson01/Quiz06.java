package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/quiz06")
public class Quiz06 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/json");
		PrintWriter out=response.getWriter();
		
		Integer number1=Integer.parseInt(request.getParameter("number1"));
		Integer number2=Integer.parseInt(request.getParameter("number2"));
		
		
		out.print("{\"addition\":"+(number1+number2)+",\"substraction\":"+(number1-number2)
				+",\"multiplication\":"+(number1*number2)+",\"division\":"+(number1/number2)+"}");
		
		
	}
}
