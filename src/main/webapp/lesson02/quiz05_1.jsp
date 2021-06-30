<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
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
//숫자 형식이 아닌 데이터가 들어왔을 때 예외 처리.
try{
	//int형식이 아닌 데이터가 들어올 경우 NumberFormatException 이 발생함
	Integer.parseInt(request.getParameter("number")); 
}catch(NumberFormatException e){%>
	<script>
		//잡아서 알람을 띄워주고 이전페이지로 돌아가게 함
		alert("숫자만 입력해 주세요");
		history.go(-1);
	</script>
<%
//밑의 코드가 실행되지 않도록 리턴 해줌
return;}

//인풋창에 빈칸이나 변환할 단위가 선택되지 않았을때 밑의 코드를 실행하지 않도록 함
if(request.getParameter("number").equals("")||request.getParameter("unit")==null){%>
	<script>
		//위 조건이 부합하는 경우 알람을 띄워주고 이전페이지로 돌아가게 함
		alert("변환할 수나 단위를 입력 해 주세요");
		history.go(-1);
	</script>
<%
//밑의 코드가 실행되지 않도록 리턴 해줌
return;}

final Map<String,Double> UNITMAP=new HashMap<String,Double>();
//단위변환을 위해 곱해야하는 값과 넘어오는 파라미터값과 매칭시켜 맵 구조로 저장해줌. 
UNITMAP.put("in",0.393701);
UNITMAP.put("yd",0.010936);
UNITMAP.put("ft",0.032808);
UNITMAP.put("m",0.01);

double number=Integer.parseInt(request.getParameter("number"));
//checkbox와 같은 여러 파라미터를 받아올 때 getParameterValues();
String[] units= request.getParameterValues("unit");
%>

<div class="container">
<h1>길이 변환 결과</h1>
<h3><%=number%> cm</h3>

<hr>

<%for(String unit  :units){
out.print("<h2>"+(number*UNITMAP.get(unit))+" "+unit+"</h2>");
}%>

</div>

</body>
</html>