<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>템플릿 구성</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">   
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>
	#wrap{width:100%;height:900px;}
	header{height:50px;}
	.contents{height:850px;}
	nav{width:15%; height:850px;}
	.right{width:85%;height:850px;}
	.content{height:90%;}
	footer{height:10%;} 
</style>
</head>
<body>
	<div id="wrap" class="bg-secondary">
		<%--동적방식으로 include하는 것--%>
		<jsp:include page="header.jsp"/>
		
		<div class="contents bg-info d-flex">
		
			<jsp:include page="menu.jsp"/>
			
			<section class="right bg-success">
			<%String contentName="content02.jsp";%>
				<jsp:include page="<%=contentName%>"/>
				<jsp:include page="footer.jsp"/>
			</section>
		</div>
	</div>
</body>
</html>