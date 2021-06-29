<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사칙연산 결과</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">   
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
		<%if(request.getParameter("firNum").equals("")||request.getParameter("secNum").equals("")){%>
			<script type="text/javascript">
			alert('빈칸을 채우세요');
			history.go(-1);
			</script>
		<%return;
		}
		int firNum=Integer.parseInt(request.getParameter("firNum"));
		int secNum=Integer.parseInt(request.getParameter("secNum"));
		String cal=request.getParameter("cal");
		double res=0;
		
		if(cal.equals("+")){
			res=(double)firNum+secNum;
		}else if(cal.equals("X")){
			res=(double)firNum*secNum;
		}else if(cal.equals("-")){
			res=(double)firNum-secNum;
		}else if(cal.equals("/")){
			res=(double)firNum/secNum;
		}
		
		/* swich 문으로 만들어보기 
		switch(cal){
		case "+":
			res=(double) firNum+secNum;
			break;
		case "-":
			res=(double) firNum-secNum;
			break;
		case "X":
			res=(double) firNum*secNum;
			break;
		case "/":
			res=(double) firNum/secNum;
			break;
		} */
		
		%>
		<div class="container">
		<h3>계산결과</h3>
		<div class="d-flex">
		<p class="display-4"><%=firNum%> <%=cal%> <%=secNum%> = </p>
		<p class="display-4 text-primary">&nbsp;<%=res%></p>
		</div>
		</div>
</body>
</html>