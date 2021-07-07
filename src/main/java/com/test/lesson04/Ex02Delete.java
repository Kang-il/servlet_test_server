package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;
 
@WebServlet("/lesson04/ex02_delete")
public class Ex02Delete extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer id =Integer.parseInt(request.getParameter("id"));
		
		if(id!=null) {
			MysqlService mysqlService=MysqlService.getInstance();
			String query="DELETE FROM `new_user` WHERE id="+id;
			mysqlService.connection();
			
			try {
				mysqlService.update(query);
			} catch (SQLException e) {e.printStackTrace();
			} finally {
				mysqlService.disconnect();
			}
			
			
			response.sendRedirect("/lesson04/ex02/ex02_1.jsp");
		}
	}
}
