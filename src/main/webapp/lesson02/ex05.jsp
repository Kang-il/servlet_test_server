<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
	
	<%
		//Calendar객체가 날짜 연산이 용이함.
		Calendar today= Calendar.getInstance();
		out.println(today);
		
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
		
		
		//Calendar -> Date 객체로 변환 후 format적용 
		out.println("오늘날짜"+sdf.format(today.getTime())+"<br>");
		
		SimpleDateFormat sdf2=new SimpleDateFormat("yyyy년 MM월 dd일");
		//어제날짜 구하기
		Calendar yesterday=Calendar.getInstance();
		yesterday.add(Calendar.DATE,-1); // -1 : 하루전
		//1. Calendar.DATE--캘린더 단위 날짜를 며칠 더하고 뺄 건지
		
		//out.println("어제날짜:" + sdf2.format(yesterday.getTime())+"<br>");
		
		//한달 전 
		//yesterday.add(Calendar.MONTH,-1);
		//out.println("지난달:" + sdf2.format(yesterday.getTime())+"<br>");
		
		//yesterday.add(Calendar.YEAR,-1);
		//out.println("작년 :"+sdf2.format(yesterday.getTime()));
		
		//두 날짜의 비교
		
		int result = today.compareTo(yesterday); 
		//1  : 기준값이 클 때 
		//0  : 서로 같을 때 
		//-1 : 비교군이 더 클 때
		if(result>0){
			out.print("today가 더 크다");
		}else if(result==0){
			out.print("두 날짜가 같다.");
		}else{
			out.print("yesterday 가 더 크다");
		}
		
	%>

</body>
</html>