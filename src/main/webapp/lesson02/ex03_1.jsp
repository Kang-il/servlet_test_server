<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post method 폼 태그</title>
</head>
<body>
	<%
		String nickName=request.getParameter("nickName");
		String hobby=request.getParameter("hobby");
		String animal=request.getParameter("animal");
		String[] foodArr = request.getParameterValues("food");
		//선택항목이 여러 개 일 때 getParameterValues()메서드 사용
		String fruit=request.getParameter("fruit");
	%> 
	<table border="1">
		<tr>
			<th>별명</th>
			<td><%=nickName%></td>
		</tr>
		<tr>
			<th>취미</th>
			<td><%=hobby%></td>
		</tr>
		<tr>
			<th>선호하는 동물</th>
			<td><%=animal%></td>
		</tr>
		<tr>
			<th>음식</th>
			<td><%
			if(foodArr!=null){
				for(int i=0;foodArr.length>i;i++){
				out.print("&nbsp;"+foodArr[i]+"&nbsp;");
				if(i!=foodArr.length-1){
					out.print(",");
				}
			}
				/* String res="";
				for(String food : foodArr){
					res+=food+", ";
				}
				//맨 뒤에 붙은 ,제거
				res=res.substring(0,res.length()-2);
				out.print(res); */
				
			}%></td>
		</tr>
		<tr>
			<th>과일</th>
			<td><%=fruit%></td>
		</tr>
	</table>
	
</body>
</html>