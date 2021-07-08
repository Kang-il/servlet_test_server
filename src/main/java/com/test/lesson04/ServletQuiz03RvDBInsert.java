package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/db/quiz03Rv")
public class ServletQuiz03RvDBInsert extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String siteName=request.getParameter("siteName");
		String siteUrl=request.getParameter("siteUrl");
		
		
		MysqlService mysqlService=MysqlService.getInstance();
		
		mysqlService.connection();
		String query="INSERT INTO `favorite` (`name`,`url`,`createdAt`,`updatedAt`)"
				+ "VALUE('"+siteName+"','"+siteUrl+"',now(),now());";
		try {
			mysqlService.update(query);
		} catch (SQLException e) {e.printStackTrace();
		} finally {
			mysqlService.disconnect();
		}
				
		response.sendRedirect("/lesson04/quiz03Rv/quiz03Rv.jsp");
		
		
		
	}
}
