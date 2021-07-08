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

@WebServlet("/lesson04/db/quiz03_1")
public class ServletQuiz03DBDelete extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		Integer id=Integer.parseInt(request.getParameter("id"));
		if(id!=null) {
		MysqlService mysqlService=MysqlService.getInstance();
		mysqlService.connection();
		String query="DELETE FROM `book_mark` WHERE `id`="+id;
		out.print("<script>alert('제거가 완료되었습니다.');</script>");
		try {
			mysqlService.update(query);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {mysqlService.disconnect();}
		
		
		
		response.sendRedirect("/lesson04/quiz03/quiz03.jsp");
		}

	}
}
