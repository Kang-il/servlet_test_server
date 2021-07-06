<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="d-flex align-items-center">
	<%--로고영역 --%>
	<div class="logo"> 
		<h3><a class="text-success" href="quiz02Rv_template.jsp">Melong</a></h3>
	</div>
	<%--검색영역 --%>
	<div class="search">
	
	<%--TODO::::::액션 채우기 --%>
	<div class="search-bar">
		<form method="get" action="quiz02Rv_info_template.jsp">
			<div class="input-group">
				<input type="text" class="form-control" name="search"/>
				<div class="input-group-append">
					<input type="submit" class="btn btn-info" value="검색"/>
				</div>	
			</div>
		</form>
	</div>
	
	</div>
</header>