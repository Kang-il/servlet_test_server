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


@WebServlet("/db/test") 
public class DatabaseConnection extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain");
		PrintWriter out=response.getWriter();
		
		//static 선언이 되어있으므로 getInstance를 통해 객체를 얻어옴 new 사용할 필요가 없음
		MysqlService mysqlService = MysqlService.getInstance();
		
		//커넥션 메서드 -- DB연결 
		mysqlService.connection();
		//쿼리문 작성
		String query="SELECT * FROM `used_goods`;";
		try {
			ResultSet res=mysqlService.select(query);
			while(res.next()) { //next() : boolean 다음게 있으면 true값 반환
				out.println("id : "+res.getInt("id"));
				out.println("sellerId : "+res.getInt("sellerId"));
				out.println("title : " +res.getString("title"));
				out.println("description : "+res.getString("description"));
				out.println("price : "+res.getString("price"));
				out.println("");
			}
		}catch (SQLException e) {e.printStackTrace();
		}finally {
			if(mysqlService!=null) {mysqlService.disconnect();}
		}
		
		
		out.print("db test");
	}
	
}
