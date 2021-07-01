<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
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
   <style>
   		a{color:grey;}
   		a:hover{ text-decoration:none;
   				 color:black;}
   </style>
</head>
<body>
	<%
	 List<Map<String, Object>> list = new ArrayList<>();
    Map<String, Object> map = new HashMap<String, Object>() {
        { 
            put("id", 1000);
            put("title", "아몬드"); 
            put("author", "손원평"); 
            put("publisher", "창비");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/267/x9788936434267.jpg");
        } 
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        { 
            put("id", 1001);
            put("title", "사피엔스"); 
            put("author", "유발 하라리"); 
            put("publisher", "김영사");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/464/x9788934972464.jpg");
        } 
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        { 
            put("id", 1002);
            put("title", "코스모스"); 
            put("author", "칼 세이건"); 
            put("publisher", "사이언스북");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/892/x9788983711892.jpg");
        } 
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        { 
            put("id", 1003);
            put("title", "나미야 잡화점의 기적"); 
            put("author", "히가시노 게이고"); 
            put("publisher", "현대문학");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/194/x9788972756194.jpg");
        } 
    };
    list.add(map);
	%>
	<div class="container">
		<p class="h1 text-center">책 목록</p>
		<table class="table text-center text-muted">
			<thead>
				<%-- row class 를 설정하면 12칸 기준으로 영역을 잡을 수 있다. --%>
				<tr class="row-2"> 
					<th class="col-1" scope="col">id</th>
					<th class="col-2"scope="col">표지</th>
					<th class="col-9"scope="col">제목</th>
				</tr>
			</thead>
			<tbody>
				<%for(Map<String,Object> book : list){%>
					<tr class="row-2">
						<td scope="col" class="col-1 align-middle"><%=book.get("id")%></td>
						<td scope="col" class="col-2"><img src="<%=book.get("image")%>"  width="50px" alt="<%=book.get("title")%>"/></td>
						<td scope="col" class="col-9 align-middle"><a href="/lesson02/quiz08_1.jsp?title=<%=book.get("title")%>&author=<%=book.get("author")%>&publisher=<%=book.get("publisher")%>&image=<%=book.get("image")%>"><%=book.get("title") %></a></td>
						<%-- 아이디값만 가져가는 경우 <td scope="col" class="col-9 aligh-middle"><a href="/lesson02/quiz08_1.jsp?id=<%=book.get("id")><%=book.get("title")%></a></td> --%>
					</tr>
				<%}%>
			</tbody>
		</table> 
		
	</div>
	
	
</body>
</html>