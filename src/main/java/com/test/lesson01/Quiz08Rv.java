package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz08rv")
public class Quiz08Rv extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		List<String> list = new ArrayList<String>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		
		String search=request.getParameter("search");
		
		out.print("<html><head><title>검색결과</title></head><body>");
		if(search.length()==0) {
			out.print("<script>alert('검색어를 입력 해 주세요'); history.go(-1);</script>");
			return;
		}
		for(String text:list) {
			//indexOf
			int index= text.indexOf(search);
			if(index>-1) {
				StringBuffer sb=new StringBuffer();
				sb.append(text);
				sb.insert(index,"<b>");//예>맛집 앞부분에 <b>태그 추가
				sb.insert(index+search.length()+3, "</b>");//<b>태그가 들어갔으니 그 글자 수 만큼 밀리므로 그 글자수만큼도 더해줘야 함
				out.print(sb+"<br>");
			}
		}
		out.print("</body></html>");
		
		
		
		
//2 방식	-- split
//		for(String text:list) {
//			String[] words=text.split(search);
//			if(text.contains(search)) {
//				out.print(words[0]+"<b>"+search+"</b>"+words[1]+"<br>");
//			}else {
//				continue;
//			}
//		}
		
		
//3방식 -- 치환법
//		for(String text:list) {
//			if(text.contains(search)) {
//				text=text.replaceAll(search, "<b>"+search+"</b>"); // 바꿔 저장 해주는 것이 아닌 리턴임
//				out.print(text+"<br>");
//			}
//		}

		
	}
	
	
	

	
	
	
	
}
