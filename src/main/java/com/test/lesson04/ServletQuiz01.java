package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01")
public class ServletQuiz01 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain");
		PrintWriter out=response.getWriter();
		
		
		
		MysqlService mysqlService=MysqlService.getInstance();
		//db 연결
		mysqlService.connection();
		
		try {


//			String query1="INSERT INTO `real_estate` "
//					+ "(`realtorId`,`address`,`area`,`type`,`price`,`rentPrice`,`createdAt`,`updatedAt`)\r\n"
//					+ "VALUE(3,'헤라팰리스 101동 5305호',350,'매매',1500000,NULL,now(),now());";
//			mysqlService.update(query1); //insertquery문 실행
			
			
			String query2="SELECT *  FROM real_estate ORDER BY id DESC LIMIT 10;";
			ResultSet res= mysqlService.select(query2);
			while(res.next()) {
				out.print("매물주소 : " + res.getString("address"));
				out.print(", 면젹 : "+res.getInt("area"));
				out.print(", 타입 : "+res.getString("type"));
				out.println();
			}
		} catch (Exception e) {e.printStackTrace();
		} finally {
			if(mysqlService!=null) {mysqlService.disconnect();}//db연결 해제
		}
		
	}
}
