<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세페이지</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">   
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
		String title=request.getParameter("title");
		String author=request.getParameter("author");
		String publisher=request.getParameter("publisher");
		String image=request.getParameter("image");
		
		//아이디로 뽑아오는 경우
/* 		List<Map<String, Object>> list = new ArrayList<>();
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
		int id=Integer.parseInt(request.getParameter("id"));
		Map<String,Object> target=new HashMap<String,Object>();
		for(Map<String,Object> item:list){
			if((int)item.get("id")==id){
				target=item;
				break;
			}
		}
		 */
		
		
	%>
	<div class="container">
		<div class="d-flex">
			<div>
				<img src="<%=image%>" width="300px" alt="오류"/>
			</div>
			<div>
				<span class="display-1 d-block font-weight-bold"><%=title%></span>
				<span class="display-3 d-block font-weight-normal text-info"><%=author%></span>
				<span class="display-4 d-block text-muted font-weight-light"><%=publisher%></span>
			</div>
		</div>
	</div>
	
	<%-- id 값으로만 가져온 경우
	<div class="container">
		<div class="d-flex" >
			<img src="<%=target.get("image")%>" width="300px" alt="오류"/>
			<div>
				<h1 class="display-3 font-weight-bold mb-1"><%=target.get("title")%></h1>
				<h1 class="display-4 font-weight-normal text-info mb-1"><%=target.get("author")%></h1>
				<h2 class="text-muted font-weight-light mb-1"><%=target.get("publisher")%></h2>
			</div>
		</div>
	</div>
	 --%>
	
	


</body>
</html>