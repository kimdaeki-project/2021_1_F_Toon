<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- BootStrap -->    
<!--     <link rel="icon" href="images/favicon.png" type="image/png">  위에 로고-->
    <c:import url="../fragments/bootstrap.jsp"></c:import>
    <title>WebToon</title>
   
    <link rel="stylesheet" href="/css/header.css">
	
</head>
<body>
	<c:import url="../fragments/header.jsp"></c:import>
	<H2>ID찾기</H2>
	<h3>회원정보에 등록한 이름과 휴대번호를 입력해 멍충아 </h3>
	
	<form id="frm" action="./searchId" method="post">
			<div class="form-group">
				<label for="name">이름</label> 
				<input type="text" class="form-control etc"	id="name" name="name">
		
			</div>	
			
			<div class="form-group">
				<label for="phone">Phone</label> 
				<input type="text" class="form-control etc"	id="phone" name="phone" placeholder="- 제외 하고 입력하세요">
			</div>		
			
				<input type="submit" id="btn" value="아이디 찾기" class="btn btn-primary" >
	</form>

</body>
</html>