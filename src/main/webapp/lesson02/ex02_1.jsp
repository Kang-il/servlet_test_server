<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Method</title>
</head>
<body>
<%-- Response (서버) --%>
<%-- request객체는 jsp 에서 import없이 바로 사용할 수 있다. --%>
<strong>아이디 : <%=request.getParameter("user_id")%></strong>
<strong>이름 : <%=request.getParameter("name")%></strong>
<strong>나이 : <%=request.getParameter("age")%></strong>

</body>
</html>