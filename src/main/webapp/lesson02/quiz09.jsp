<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">   
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>


<%! public static Date addDays(Date d,int days){
	Calendar cal=Calendar.getInstance();
	cal.setTime(d);
	cal.add(Calendar.DATE,days);
	Date c =cal.getTime();
	d=new Date();
	return c;
}%>

<div class="container">

<h1 class="text-center">오늘 부터1일</h1>

<%
	Date now=new Date();
	SimpleDateFormat asd= new SimpleDateFormat("yyyy년 MM월 dd일");
	
	int afterDays=99;
	
	for(int i=0;i<10;i++){%>
	
		<div class="d-flex justify-content-center">
			<div class="d-flex justify-content-start" >
				<h2 class="font-weight-light"><%=afterDays+1%>일</h2>
			</div>
			<h2 class="font-weight-light text-danger"><%=asd.format(addDays(now,afterDays)) %></h2>
		</div>
	<%
	afterDays+=100;}
	%>
	</div>
	
	
</body>
</html>