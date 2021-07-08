<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
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
<%--

CREATE TABLE `book_mark` (
`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT
,`name` VARCHAR(64) NOT NULL
,`url` VARCHAR(256) NOT NULL
,`createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
,`updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `book_mark`(`name`,`url`,`createdAt`,`updatedAt`)
VALUES('마론달','http://marondal.com',now(),now())
,('구글','http://google.com',now(),now())
,('네이버','http://naver.com',now(),now())
,('다음','http://daum.com',now(),now());

 --%>

<%
	MysqlService mysqlService=MysqlService.getInstance();
	mysqlService.connection();
	String query="SELECT * FROM `book_mark` ORDER BY id DESC";
	
	
%>
	<div class="container">
		<h1>즐겨찾기 목록</h1>
		<table class="table text-center">
			<thead>
				<tr>
					<th>사이트</th>
					<th>사이트 주소</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
			<%
			try{
				ResultSet res=mysqlService.select(query);
			while(res.next()){%>
				<tr>
					<td><%=res.getString("name")%></td>
					<td><a href="<%=res.getString("url")%>"><%=res.getString("url")%></a></td>
					<td><a class="text-danger" href="/lesson04/db/quiz03_1?id=<%=res.getInt("id")%>">삭제</a></td>
				</tr>
				
				<%}
			}catch(SQLException e){e.printStackTrace();}
			finally{mysqlService.disconnect();}
			%>
				<tr>
					<td></td>
					<td></td>
					<td><a href="quiz03_1.jsp">등록하기</a></td>
				</tr>
			</tbody>
		</table>
		
	
	</div>



</body>
</html>