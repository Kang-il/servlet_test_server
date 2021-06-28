<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%! 
		//일반클래스 처럼 사용하는 공간
		public int sumNum(int num){//1부터 N까지의 합계
		int res=0;
		for(int i=1;num>=i;i++){
			res+=i;
		}
		return res;
	}
	%>
	
	<h1>1. 1부터 50까지의 합 <%=sumNum(50)%>  입니다.</h1>
	
	<% //스크립틀립 문법을 사용해서 주어진 점수들의 평균을 구하세요
	   int[] scores = {80, 90, 100, 95, 80};
	   int sum=0;
	   double average=0;
	   for(int i=0;scores.length>i;i++){
		   sum+=scores[i];
	   }
	   average = sum/(double)scores.length;
	%>
	<h1>2.점수들의 평균 : <%=average%> 입니다.</h1>
	
	
	
	<% // 아래 채점표로 시험점수가 몇점인지 구하세요.
		List<String> scoreList = Arrays.asList(
				new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int score=0;
		for(String answer:scoreList){
			if(answer.equals("O")){
				score+=100/scoreList.size();
			}
		}

	%>
	
	<h1>3.시험점수 : <%=score%> 입니다.</h1>
	
	
	<%
	String birthDay="20010820";
	int onlyYear=Integer.parseInt(birthDay.substring(0,4));
	int old=2021-onlyYear+1;
	%>
	
	<h1>4.20010820의 나이 : <%=old%>세 입니다.</h1>
	
</body>
</html>