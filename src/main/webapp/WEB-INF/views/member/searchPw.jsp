<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <c:import url="./../fragments/bootstrap.jsp"></c:import>
    <title>WebToon</title>
   
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/themify-icons.css">
    <link rel="stylesheet" href="../css/flaticon.css">
    <link rel="stylesheet" href="../css/all.min.css">
    <link rel="stylesheet" href="../css/animate.css">
    <link rel="stylesheet" href="../css/magnific-popup.css">
   
    <!-- main css -->
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/responsive.css">
	
</head>
<body>
	<c:import url="./../fragments/header.jsp"></c:import>
	<H2>PW찾기</H2>
	<h3>회원정보에 등록한 이름과 휴대번호를 입력해 비밀번호를 왜 까먹고 응? </h3>
	
	<form id="frm" action="./searchPw" method="post">
			<div class="form-group">
				<label for="name">이름</label> 
				<input type="text" class="form-control etc"	id="name" name="name">
		
			</div>	
			
			<div class="form-group">
				<label for="phone">Phone</label> 
				<input type="text" class="form-control etc"	id="phone" name="phone">
			</div>		
			
				<input type="submit" id="btn" value="비밀번호 찾기" class="btn btn-primary" >
	</form>

</body>
</html>