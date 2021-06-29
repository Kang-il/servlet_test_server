<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사칙연산 계산기</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">   
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body> 
	<div class="container">
	<h1 class="my-2">사칙연산 계산기</h1>
	<form method="post" class="py-2" action="/lesson02/quiz04_1.jsp">
		<div class="d-flex ">
		<input class="form-control col-3" type="text" name="firNum"/>
		<select class="form-control col-1 mx-2" name="cal">
			<option value="+">+</option>
			<option value="-">-</option>
			<option value="X">X</option>
			<option value="/">/</option>
		</select>
		<input class="form-control col-3" type="text" name="secNum"/>
		<input class="btn btn-control text-white bg-success ml-2" type=submit value="계산하기"/>
		</div>
	</form>
	</div>
	

</body>
</html>