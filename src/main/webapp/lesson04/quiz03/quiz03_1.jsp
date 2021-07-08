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
	<div class="container">
		<h1 class="font-weight-bold my-3">즐겨찾기 추가</h1>
		<form method="get" action="/lesson04/db/quiz03">
			<div class="form-group">
				<label for="siteName" class="font-weight-bold">사이트명:</label>
				<input type="text" id="siteName" class="form-control col-3" name="siteName"/>
			</div>
			<div class="form-group">
				<label for="siteUrl" class="font-weight-bold">사이트 주소:</label>
				<input type="text" id="siteUrl" class="form-control col-7" name="siteUrl"/>
			</div>
			<input type="submit" class="btn btn-success text-white mt-2" value="추가"/>
		</form>
	</div>
</body>
</html>