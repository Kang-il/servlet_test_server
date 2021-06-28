<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 예제</title>
</head>
<body>
	<%-- JSP 주석 문법 : 개발자도구 source보기에서 보이지 않는다. --%>
	<h1>Hello World!!</h1>
	
	<% 	//srciptlet 태그
		// -- 메인함수에 구현하는 느낌

		// java 문법 시작 --> 자바 주석
		//1+2+3...+10
		int sum=0;
		for(int i=0;10>=i;i++){
			sum+=i;
		}
		
	%>
	
	<strong>합계 : </strong>
	<input type="text" value="<%=sum%>"> <%-- 변수 하나 출력 시 쓰는 태그 --%>
	<br>
	
	<%! //선언문
	//선언구간 (일반클래스) 
	//field method 정의
	private int num=100;
	public String getHelloWorld(){return "Hello World!!";}
	%>
	
	<%--표현식 : 선언된 변수값이나 메서드의 리턴 값을 출력한다. --%>
	<%=getHelloWorld()%>
	
	<br>
	
	<%=num+200%>
	
</body>
</html>