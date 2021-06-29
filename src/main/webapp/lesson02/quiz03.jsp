<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 측정</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">   
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body> 
	<div class="container">
		<h1 class="mb-3">체격조건 입력</h1>
		<form method=get action="/lesson02/quiz03_1.jsp">
		<div class="d-flex align-items-end">
			<input class="form-control col-3" type="text" name="height" placeholder="키를 입력 해 주세요"/><span class="mb-0 mx-2">cm</span>
			<input class="form-control col-3" type="text" name="weight" placeholder="몸무게를 입력 해 주세요"/><span class="mb-0 mx-2">kg</span>
			<input type="submit" class="btn btn-control bg-info text-white" value="계산">
		</div>
		</form>
	</div>
</body>
</html>