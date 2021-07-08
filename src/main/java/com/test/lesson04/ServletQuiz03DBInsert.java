package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;
 
@WebServlet("/lesson04/db/quiz03")
public class ServletQuiz03DBInsert extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String siteName=request.getParameter("siteName");
		String siteUrl=request.getParameter("siteUrl");
		if(siteName.equals("")||siteUrl.equals("")) {
			out.print("<script type=\"text/javascript\">"
					+ "alert('빈칸을 채워주세요.');history.go(-1);"
					+ "</script>");
			return;
		}
		
		MysqlService mysqlService=MysqlService.getInstance();
		mysqlService.connection();
		String query="INSERT INTO `book_mark` (`name`,`url`)"
				+ "VALUE('"+siteName+"','"+siteUrl+"');";
		try {
			mysqlService.update(query);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {mysqlService.disconnect();}
		
		

		
		
		
		response.sendRedirect("/lesson04/quiz03/quiz03.jsp");
	}
}
