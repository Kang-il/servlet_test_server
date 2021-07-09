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

@WebServlet("/lesson04/db/quiz04_insert_item")
public class ServletQuiz04InsertItem extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		Integer id=Integer.parseInt(request.getParameter("userId"));
		String title=request.getParameter("title");
		
		Integer price=null;
		try {
			price = Integer.parseInt(request.getParameter("price"));
		} catch(NumberFormatException e) { 
			out.print("<script type=text/javascript>history.go(-1);</script>");
			return;}
		
		String description=request.getParameter("description");
		String picture="";
		
		if(request.getParameter("imageUrl").equals("")) {
			picture="";
		}else {
			picture=request.getParameter("imageUrl");
		}
		MysqlService mysqlService =MysqlService.getInstance();
		mysqlService.connection();
		String query="INSERT INTO `used_goods`(`sellerId`,`title`,`price`,`description`,`picture`)";
		String queryValue="";
		if(picture.equals("")) {
			queryValue="VALUE("+id+",'"+title+"',"+price+",'"+description+"',NULL);";
		}else {
			queryValue="VALUE("+id+",'"+title+"',"+price+",'"+description+"','"+picture+"');";
		}
		
		query+=queryValue;
		
		try {
			mysqlService.update(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			mysqlService.disconnect();
		}
		
		response.sendRedirect("/lesson04/quiz04/quiz04_template.jsp");
		
	}
}
