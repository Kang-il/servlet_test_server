<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단위변환</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">   
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body> 
	<div class="container">
		<div class="mt-3">
			<h1>길이변환</h1>
		</div>
		
		<form method="post" action="/lesson02/quiz05_1.jsp">
			<div class="form-group d-flex mb-2">
				<input type="text" class="form-control col-3" name="number"/><span class="ml-2 mt-3">cm</span>
			</div>
			
			<div class="d-flex mx-0">
				<div class="mr-2">
					<label for="inch" class="mr-2">인치</label><input type="checkbox" id="inch" name="unit" value="in"/>
				</div>
				<div class="mx-2">
					<label for="yard" class="mr-2">야드</label><input type="checkbox" id="yard" name="unit" value="yd"/>
				</div>
				<div class="mx-2">
					<label for="feet" class="mr-2">피트</label><input type="checkbox" id="feet" name="unit" value="ft"/>
				</div>
				<div class="mx-2">
					<label for="meter" class="mr-2">미터</label><input type="checkbox" id="meter" name="unit" value="m"/>
				</div>
			</div>
			
			<input type="submit" class="btn btn-control bg-success text-white mt-1" value="변환하기"/>	
		</form>
	</div>
</body>
</html>