<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 정보 받아오기 3번에 한번씩 줄 변경하기 --%>
<%
MysqlService mysqlService=MysqlService.getInstance();
mysqlService.connection();
String query="SELECT * FROM `used_goods` AS A JOIN `seller` AS B ON A.sellerId=B.id";
ResultSet res=mysqlService.select(query);

boolean run=true;
int count=0;

%>
<section>

<%--https://www.namdokorea.com/site/jeonnam/tour/images/noimage.gif --%>
<%--3번에 1번 돌도록 --%>
<%
while(res.next()){
if(count==0){%>
<div class="d-flex big-box">
<%--3번씩 돌도록 --%> 
<%}
String temp=res.getString("A.picture");
if(temp==null){
	temp="https://www.namdokorea.com/site/jeonnam/tour/images/noimage.gif";
}
%>
	<div class="goods-item mt-3 p-2 mr-3">
		<img src="<%=temp%>" alt="" width="235px" height="164px"/>
		<div class="font-weight-bold mt-2 mb-2 h6"><%=res.getString("A.title")%></div>
		<div class="text-secondary"><%=res.getInt("A.price")%>원</div>
		<div class="user-name"><%=res.getString("B.nickname") %></div>
	</div>
<%count++;
if(count==3){%>
</div>
<%} if(count==3){count=0;}}
if(count!=0){%></div><%}%>

</section>