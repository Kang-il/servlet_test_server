<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section>

<%--아이디 선택 창 
제목창 내용창 이미지 url 창 저장
 --%>
 <%
 MysqlService mysqlService=MysqlService.getInstance();
 mysqlService.connection();
 String query="SELECT * FROM `seller`;";
 ResultSet res=mysqlService.select(query);
 Map<String,Integer> memberMap=new HashMap<String,Integer>();
 %>
 
 
 <div>
 	<div></div>
 	<%--TODO:::::: action넣기 --%>
 	<form id="myForm" method="post" action="/lesson04/db/quiz04_insert_item">
 		<p class="display-4 ml-5 my-5 text-secondary">물건올리기</p>
 		<div class="d-flex justify-content-center">
 		
	 		<select name="userId" id="userId" class="form-select form-control col-3 mr-4 bg-secondary text-white" aria-label="Default select example">
	 			<option value="-1">아이디 선택</option>
	 			<%while(res.next()){%>
	 			<option value=<%=res.getInt("id") %>><%=res.getString("nickname")%></option>
	 			<%} mysqlService.disconnect();%>
	 		</select>
	 		
 			<input type="text" name="title" id="title" placeholder="제목" class="form-control col-5 mr-4"/>
 			
	 		<div class="d-flex price-tag">
		 		<input type="text" name="price" id="price" placeholder="가격" class="form-control col-10"/>
		 		<span class="input-group-text" id="basic-addon1">원</span>
	 		</div>
	 		
 		</div>
 		
 		<div class="d-flex justify-content-center">
 			<textarea rows="5" cols="70" class="form-control col-11 mt-3" name="description" id="description"></textarea>
 		</div>
 		
 		<div class="d-flex justify-content-center mt-3">
		 		<span class="input-group-text col-2 text-center font-weight-bold " id="basic-addon1">이미지 url</span>
 				<input type="text" name="imageUrl" id="imageUrl" class="form-control col-9"/>
 		</div>
 		
 		<div class="d-flex justify-content-center">
 			<input type=submit class="form-control bg-light font-weight-bold col-11 mt-3" id="submit" value="저장"/>
 		</div>
 		
 	</form>
 
 </div>
 
</section>

<script type="text/javascript">

	$(document).ready(function(){
		$('#submit').on('click',function(){
			var id=$('#userId option:selected').val();
			var title=$('#title').val();
			var price=$('#price').val();
			var description=$("#description").val();
			
			if(id==-1){ 
				alert('아이디를 선택 해 주세요');
				return;
			}
			if(title==''){
				alert('제목을 입력 해 주세요');
				return;
			}
			if(price=='' || typeof price != 'number'){
				alert('가격을 입력 해 주세요');
				return;
			}
			if(description==''){
				alert('설명을 입력 해 주세요');
				return;
			}
			

			
		});
		
		
	});

</script>

