package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz10")
public class Quiz10 extends HttpServlet{
	
	private static final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "h5tchi");
	        put("password", "qwerty1234");
	        put("name", "최강일");
	    }
	};
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		
		String id=request.getParameter("userId");
		String password=request.getParameter("password");
		
		out.print("<html><head><title>사용자 정보 확인</title></head><body>");
		
		if(!userMap.get("id").equals(id)) {//아이디가 일치하지 않는 경우 
			out.print("<script>alert('아이디가 일치하지 않습니다.');history.go(-1);</script>");
			return;
		}else if(!userMap.get("password").equals(password)) {//패스워드가 일치하지 않는경우
			out.print("<script>alert('비밀번호가 일치하지 않습니다');history.go(-1);</script>");
			return;
		}else if(userMap.get(id).equals(id)&&userMap.get(password).equals(password)) {//둘다 일치하는 경우
			out.print(userMap.get("name")+"님 환영합니다!");
		}
		
		out.print("</body></html>");
		
	}
}
