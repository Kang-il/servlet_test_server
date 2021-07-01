<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배탈의 민족 검색결과</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">   
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
	//데이터 저장
	// ArrayList 안에 HashMap 구조가 저장되어있는 자료구조
	List<Map<String, Object>> list = new ArrayList<>();
    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
    list.add(map);
	
  
    
	//1.4점 이하 표시금지 체크여부 확인
	//2.검색어 조건에 맞는 내용만 검색
	//3.검색어가 없을 경우 모두 출력!
	
	String check=request.getParameter("pointLimit");
	//체크 되어있다면 check 값이 넘어올 것 체크하지 않았다면 null값이 넘어올 것(String 타입이아닌 null 타입)
	String menu=request.getParameter("menu");
	
	
	%>
	<div class="container">
		<p class="h1 text-center mt-4"> 검색 결과 </p>
		<table class="table text-center">
			<thead>
				<tr>
					<th scope="col">메뉴</th>
					<th scope="col">상호</th>
					<th scope="col">별점</th>
				</tr>
			</thead>
			<tbody>
					<%for(Map<String,Object> review : list){
						if(check==null){//1.체크박스 체크가 안되어있을 시 모든 평점의 리뷰를(4.0이하도 포함)보여주는 조건문
							if(review.get("menu").equals(menu)||menu.equals("")){//검색한 메뉴의 키워드와 저장된 데이터의 menu 키의 값을 비교해주는 내용
							// ||menu.equals("") : 검색 키워드가 없을경우 저장된 데이터를 모두 보여주기 위해
							%>
								<tr>
									<td scope="col"><%=review.get("menu")%></td>
									<td scope="col"><%=review.get("name")%></td>
									<td scope="col"><%=review.get("point")%></td>
								</tr>
					<%		}//menu 키의 value 와 검색어와 같은지 비교하는조건문을 닫는 중괄..
						}else if(check!=null){//2.체크박스 체크가 안되어있을 시 평점 4.0초과의 리뷰만을 보여주는 조건문
							if(review.get("menu").equals(menu)||menu.equals("")){
								if((double)review.get("point")>4.0){//object타입이므로 double 타입으로 캐스팅 해줘야 한다%>
									<tr>
										<td scope="col"><%=review.get("menu")%></td>
										<td scope="col"><%=review.get("name")%></td>
										<td scope="col"><%=review.get("point")%></td>
									</tr>
					<%			} 
							}//menu 키의 value 와 검색어와 같은지 비교하는조건문을 닫는 중괄.. 
						
						}//체크박스 체크여부의 조건문을 닫는 중괄..
						
					}%>
					
					
					<%-- 
					
					<%for(Map<String,Object> item : list){
							if(item.get("menu").equals(menu)){
								if(check!=null&&(Double)item.get("point")<4.0){//체크가 됐고 4.0 미만인 경우 패스 
									continue;
								}%>
									<tr>
										<td scope="col"><%=item.get("menu")%></td>
										<td scope="col"><%=item.get("name")%></td>
										<td scope="col"><%=item.get("point")%></td>
									</tr>
							
						<%}}%>
						
					 --%>
			</tbody>
		</table>
	</div>

</body>
</html>