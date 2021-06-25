package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz08")
public class Quiz08 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		ArrayList<String> list=new ArrayList<String>(Arrays.asList(
				"강남역 최고 맛집 소개 합니다."
				,"오늘 기분 좋은 일이 있었네요." 
		        ,"역시 맛집 데이트가 제일 좋네요." 
		        ,"집에 가는 길에 동네 맛집 가서 안주 사갑니다."
		        ,"자축 저 오늘 생일 이에요."
				));
		
		
		String keyword=request.getParameter("search");
		
		out.print("<html><head><title>검색결과</title></head><body>");
		
		//검색어창이 공란이면 검색어 입력 하라는 알림 띄우고 이전 창으로 되돌려 보내기.  return 해주기 
		if(keyword.length()==0) {
			out.print("<script>alert('검색어를 입력 해 주세요'); history.go(-1);</script>");
			return;
		}
		
		for(String text : list) {
			//keyword가 포함되어 있을 경우 작업 
			if(text.contains(keyword)) {
				String[] divStr=text.split(" ");//split을 통해 띄어쓰기를 기준으로 문자열을 나누어 배열에 담아줌
				String combStr="";//완성문을 담을 변수 선언
				
				for(int i=0;divStr.length>i;i++) {//for문으로 split된 문자열 작업
					if(divStr[i].equals(keyword)) {
						//split된 문자열이 keyword와 일치한다면 그 문자 앞 뒤로 <b>태그를 감싸주어 comStr문자열에 결합 해준다.
						combStr+="<b>"+divStr[i]+"</b> ";
					}else{
						//split된 문자열이 keyword와 일치하지 않는다면 combStr문자열에 별도 작업 없이 결합해준다.
						combStr+=divStr[i]+" ";
					}
					
				}
				//출력 줄바꿈을 위해 <br>태그 표기
				out.print(combStr+"<br>");
			}
		}
		out.print("</body></html>");
	}
		
		
		
//		out.print("<html><head><title>검색결과</title>");
//		out.print("<script src=\"https://code.jquery.com/jquery-3.6.0.min.js\" integrity=\"sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=\" crossorigin=\"anonymous\"></script>");
//		out.println("</head><body>");
//		
//		out.println("<p class=\"contents\">");
//		for(int i=0;list.size()>i;i++) {
//			if(list.get(i).contains(keyWord)) {
//				out.print(list.get(i)+"<br>");
//			}
//		}
//		out.println("</p>");
//		
//		
//		out.println("<script>");
//		
//		
//		
//		out.println("var search=$('.contents').val();");
//		
//		out.println("$(\".contents:contains('"+keyWord+"')\").each(function(){");
//		out.println("var regex= new RegExp(search,'gi');");
//		out.println("$(this).html($(this).text().replace(regex,\"<span style='font-weight:bold;'>\"+search+\"</span>\"));");
//		out.println("});");
		
		
		
//		out.print("</script>");	
	}


