<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- server --%>
<%
Date date=new Date();
String type=request.getParameter("type");
String format="";
if(type.equals("time")){
	format="현재 시간은 hh시 mm분 ss초 입니다.";
}else if(type.equals("date")){
	format="현재날짜는 yyyy년 MM월 dd일 입니다.";
}
SimpleDateFormat sdf=new SimpleDateFormat(format);

%>

<h1><%=sdf.format(date)%></h1>


</body>
</html>