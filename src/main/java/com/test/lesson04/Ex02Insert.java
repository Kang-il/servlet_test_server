package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex02_insert")
public class Ex02Insert extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		
		// view --> Servlet --(redirect)--> view
		
		String name =request.getParameter("name");
		String birth =request.getParameter("birth");
		String email=request.getParameter("email");
		String introduce=request.getParameter("introduce");
		
		MysqlService mysqlService=MysqlService.getInstance();
		mysqlService.connection();

		try {
			String query = "INSERT INTO `new_user` (`name`,`yyyymmdd`,`email`,`introduce`)"
					+"VALUES ('"+name+"','"+birth+"','"+email+"','"+introduce+"');";
			mysqlService.update(query);
		} catch (SQLException e) {e.printStackTrace();}finally {mysqlService.disconnect();}
		
		//목록 화면 이동 ==> 리다이렉트
		response.sendRedirect("/lesson04/ex02/ex02_1.jsp");
		
	}
}
