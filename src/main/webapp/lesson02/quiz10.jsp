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
	Calendar cal=Calendar.getInstance();
	cal.set(Calendar.DAY_OF_MONTH,1);//월의 첫날
	
	int firstDay=cal.get(Calendar.DAY_OF_WEEK);
	//1일 2월 3화 4수 5목 6금 7토 
	
	int dayOfMaximum=cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM");
	int week=1;


%>
	<div class="container">
	<h1 class="text-center"><%=sdf.format(cal.getTime())%></h1>
	<table class="table text-center font-weight-bold">
		<thead>
			<tr >
				<th class="text-danger">일</th>
				<th>월</th>
				<th>화</th>
				<th>수</th>
				<th>목</th>
				<th>금</th>
				<th class="text-primary">토</th>
			</tr>
		</thead>
		<tbody class="h1">
			<tr>
			<%for(int i=1;i<=dayOfMaximum;i++){
				if(week!=firstDay){//다른경우 -- 첫 줄에서만 있을 수 있는 일 빈칸이라는 뜻이다.
					week++; //week가 firstDay와 같아질 때 까지 더해준다
					i=0; //아직 달력에 1일이 시작하지 않았으니 초기화 할 것 %>
				<td scope="col"></td>
				
				<%}else{//week와 firstDay가 같을 때 td태그와 그 안에 i를 넣어줌으로써 일 수를 채워준다
					
					if(week==1&&firstDay==1){%>
						<td scope="col" class="text-danger"><%=i%></td>
					<%}else if(week==7&&firstDay==7){%>
						<td scope="col" class="text-primary"><%=i%></td>
					<%}else{%>
						<td scope="col"><%=i%></td>
					<%}
			
				if(week==7&&firstDay==7){//week와 firstDay가 7까지 차면 줄바꿈을 해주기 위해 있는 조건문%>
			</tr>
			
			<% //한 주가 다 찼으므로 열려있던 tr태그를 우선적으로 닫아줌 
					week=0;//week와 firstDay를 0으로 초기화
					firstDay=0;
					if(i!=dayOfMaximum){//시작 %>
					
			<tr>
			
			<%		}//i가 dayOfMaximum이랑 다른 경우는 더 출력할 것이 남아있으니 <tr>태그를 한 번 더 열어준다.
				}
					week++;//week 와 firstDay를 1 씩 더해 준다.
					firstDay++;
				}
			}%>
			
		</tbody>
	</table>
	</div>



</body>
</html>