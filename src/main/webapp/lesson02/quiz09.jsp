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


<%! public static Calendar addDays(Calendar cal , int days){
	cal.add(Calendar.DATE, days);
	return cal;
}%>

<div class="container">

<h1>오늘 부터1일</h1>

<%	
	Calendar cal=Calendar.getInstance();
	cal.add(Calendar.DATE,-1);
	SimpleDateFormat asd= new SimpleDateFormat("yyyy년 M월 d일");
	
	
	
	for(int i=100;i<=1000;i+=100){%>
		<div class="d-flex">
			<div class="d-flex justify-content-start" >
				<h1 class="font-weight-bold"><%=i%></h1><span class="h1 font-weight-light">일: &nbsp;</span>
			</div>
			<h1 class="font-weight-bold text-danger"><%=asd.format(addDays(cal,100).getTime())%></h1>
		</div>
	<%}%>
	</div>
	
	
</body>
</html>