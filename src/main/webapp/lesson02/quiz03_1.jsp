<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 결과</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">   
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	
	
		<%
		String heightParam= request.getParameter("height");
		String weightParam= request.getParameter("weight");
		
		if(heightParam==""||weightParam==""){%>
		<script type="text/javascript">
			alert('빈칸을 채워주세요');
			history.go(-1);
		</script>
		<%
		return;}
		double height=Integer.parseInt(heightParam);
		double weight=Integer.parseInt(weightParam);
		
		double bmi=weight/((height/100.0)*(height/100.0));
		String bmiRes="";
		
		
		
		if(bmi<20.0){
			bmiRes="저체중";
		}else if(bmi>=20.0 && bmi<25.0){
			bmiRes="정상";
		}else if(bmi>=25.0 && bmi<30.0){
			bmiRes="과체중";
		}else if(bmi>=30.0){
			bmiRes="비만";
		}
		
	%>
	<div class="container">
	<h1>BMI 측정 결과</h1>
	<div class="d-flex">
	<p class="display-3">당신은&nbsp;</p>
	<p class="text-info display-3"><%=bmiRes%></p>
	<p class="display-3">&nbsp;입니다.</p>
	</div>
	<p>BMI 수치: <%=bmi%></p> 
	</div>
	
	
</body>
</html>