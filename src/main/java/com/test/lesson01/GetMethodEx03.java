package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class GetMethodEx03 extends HttpServlet{

    //Get 
	//Parameter 가 노출된다 바디가 없음 
	//Post 방식
	//Parameter 가 노출되지 않는다 바디 속에 데이터가 저장되어있음

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String userId=request.getParameter("user_id"); // String 타입으로 리턴
		String userName="";
		int age=0;
		
		if(request.getParameter("name")!=null) {
			userName=request.getParameter("name");
		}
		if(request.getParameter("age")!=null) {
			age=Integer.parseInt(request.getParameter("age"));
		}
		

		//out.println("user_id : "+userId);
		
		//if(!userName.equals("")) {
			//out.println("name : "+userName);
		//}
		//if(age!=0) {
			//out.println("age : "+age);
		//}
		
		
		
		//JSON 데이터 (Javascript Object Notation)으로 response 구성하기
		//{"key":"value"}
		//{"key":{"key":"value"}
		
		
		
		//{"user_id":"h5tchi", "name":"Kang-il","age":27}
		response.setContentType("text/json");
		out.print("{\"user_id\":\""+userId+"\",\"name\":\""+userName+"\",\"age\":"+age+"}");
		
		
		
		
		
	}
	
	
}
