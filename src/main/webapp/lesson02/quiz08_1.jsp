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
		//타이틀
		//작가
		//출판사
		String title=request.getParameter("title");
		String author=request.getParameter("author");
		String publisher=request.getParameter("publisher");
		String image=request.getParameter("image");
	%>
	<div class="container">
		<div class="d-flex" >
			<img src="<%=image%>" width="300px" alt="오류"/>
			<div>
				<h1 class="display-3 font-weight-bold mb-1"><%=title%></h1>
				<h1 class="display-4 font-weight-normal text-info mb-1"><%=author%></h1>
				<h1 class="text-muted font-weight-light mb-1"><%=publisher%></h2>
			</div>
		</div>
	</div>


</body>
</html>