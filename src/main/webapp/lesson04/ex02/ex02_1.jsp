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
</head>
<body>
	<%
		MysqlService mysqlService=MysqlService.getInstance();
		mysqlService.connection();
		String query="SELECT * FROM `new_user`;";
		try{
			ResultSet res= mysqlService.select(query);
		
	%>
	<a href="ex02.jsp">등록하기</a>
	<table>
		<thead>
			<tr>
			<th>번호</th>
			<th>이름</th>
			<th>생년월일</th>
			<th>자기소개</th>
			<th>이메일</th>
			<th>삭제</th>
			</tr>
		<thead>
		<tbody>
		<%while(res.next()){ %>
			<tr>
				<td><%=res.getInt("id")%></td>
				<td><%=res.getString("name")%></td>
				<td><%=res.getString("yyyymmdd")%></td>
				<td><%=res.getString("introduce")%></td>
				<td><%=res.getString("email")%></td>
				<td><a href="/lesson04/ex02_delete?id=<%=res.getInt("id")%>">삭제하기</a></td>
			</tr>
		<%}%>	
		</tbody>
	</table>

<%
		}catch (SQLException e){e.printStackTrace();}finally{
	mysqlService.disconnect();
}

%>
</body>
</html>