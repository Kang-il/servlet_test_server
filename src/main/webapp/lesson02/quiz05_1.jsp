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
<%
//인치변환 cm *0.39370
final double INCH=0.393701;
final double YARD=0.010936;
final double FEET=0.032808;
final double METER=0.01;

double number=Integer.parseInt(request.getParameter("number"));
String[] units= request.getParameterValues("unit");
%>
<div class="container">
<h1>길이 변환 결과</h1>
<h3><%=number%> cm</h3>
<hr>
<%for(String unit  :units){

if(unit.equals("inch")){
	out.print("<h3>"+(number*INCH)+" in</h3>");
}else if(unit.equals("yard")){
	out.print("<h3>"+(number*YARD)+" yd</h3>");
}else if(unit.equals("feet")){
	out.print("<h3>"+(number*FEET)+" ft</h3>");
}else if(unit.equals("meter")){
	out.print("<h3>"+(number*METER)+" m</h3>");
}
}%>

</div>

</body>
</html>