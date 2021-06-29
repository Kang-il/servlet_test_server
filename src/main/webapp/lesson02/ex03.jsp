<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST METHOD 폼 태그</title>
</head>
<body>
	
	<form method="post" action="/lesson02/ex03_1.jsp">
		1.별명은 무엇입니까? <input type="text" name="nickName"/><br><br>
		2.취미는 무엇입니까? <input type="text" name="hobby"/><br><br>
		3.강아지 or 고양이? 
		<label for="dog">강아지</label><input type="radio" id="dog" name="animal" value="dog" checked/>
		<label for="cat">고양이</label><input type="radio" id="cat" name="animal" value="cat"/><br><br>
		4.다음 중 선호하는 것을 모두 고르세요.<br>
		<label for="mincho">민트초코 </label> <input type="checkbox" name="food" id="mincho" value="mincho"/>
		<label for="pizza">하와이안 피자(파인애플) </label><input type="checkbox" id="pizza" name="food" value="pizza"/>
		<label for="pupa">번데기</label> <input type="checkbox" name="food" id="pupa" value="pupa"/><br><br>
		5.좋아하는 과일을 선택하세요<br>
		<select name="fruit">
			<option value="apple">사과</option>
			<option value="banana" selected>바나나</option>
			<option value="peach">복숭아</option>
			<option value="strawberry">딸기</option>
			<option value="grape">포도</option>
		</select><br><br>
		<input type="submit" value="제출"/>
	</form>

</body>
</html>