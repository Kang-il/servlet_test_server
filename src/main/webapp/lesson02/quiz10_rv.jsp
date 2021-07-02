<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
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
	<%
	//제목(년도 - 월)
	Calendar today=Calendar.getInstance();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM");
	
	//필요한 것 
	// 월의 첫 날 설정
	Calendar firstDateOfMonth= Calendar.getInstance();
	firstDateOfMonth.set(Calendar.DAY_OF_MONTH, 1);
	
	// 월의 첫 요일 -- 1일 2월 3화 4수 5목 6금 7토 
	int firstDayOfMonth=firstDateOfMonth.get(Calendar.DAY_OF_WEEK);
	
	// 월의 말일 구하기
	int lastDateOfMonth=firstDateOfMonth.getActualMaximum(Calendar.DAY_OF_MONTH);
	
	%>

	<div class="container">
		<h1 class="text-center mt-2"><%=sdf.format(today.getTime())%></h1>
		<table class="table text-center mt-3">
			<thead>
				<tr>
					<th class="text-danger">일</th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
					<th>토</th>
				</tr>
			</thead>
			<tbody>
				<%
					int day= 1 - firstDayOfMonth + 1;
					for(int i=0 ; i<6 ; i++){//행
						out.print("<tr class=\"display-4\">");
						
						for(int j=0 ; j<7 ; j++){
								out.print("<td>");
								if(day>0){
								out.print(day);
								}
								out.print("</td>");
								day++;
								if(day>lastDateOfMonth){
									break;
								}
						}
						out.print("</tr>");
						if(day>lastDateOfMonth){
							break;
						}
					}
				%>
			
			</tbody>
		</table>
	</div>


</body>
</html>