package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/db/quiz03Rv_1")
public class ServletQuiz03RvDBDelete extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer id=Integer.parseInt(request.getParameter("id"));
		
		MysqlService mysqlService=MysqlService.getInstance();
		mysqlService.connection();
		String query="DELETE FROM `favorite` WHERE `id`="+id;
		try {
			mysqlService.update(query);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			mysqlService.disconnect();
		}
	
		response.sendRedirect("/lesson04/quiz03Rv/quiz03Rv.jsp");
	}
}
