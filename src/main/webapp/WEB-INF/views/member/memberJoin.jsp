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
	<div class="container mt-2">
	
		<h2 class="mt-4">회원가입</h2>

		<form id="frm" action="./join" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<label for="id">ID</label> 
				<input type="text" class="form-control"	id="id" name="username">
				<h4 id="idCheckResult"></h4>
			
				<!-- ID 는 6글자 이상 -->			
			</div>
			
			<div class="form-group">
				<label for="pw">Password</label>
				 <input type="password"	class="form-control" id="pw" name="password1">
					<h4 id="pwResult"></h4>
					<!-- PW는 8글자 이상 -->
			</div>
			
			<div class="form-group">
				<label for="pw">Password</label> 
				<input type="password" class="form-control" id="pw2" name="password">
					<!-- PW 두개는 일치 -->
			</div>
			
			<div class="form-group">
				<label for="name">이름</label> 
				<input type="text" class="form-control etc"	id="name" name="name">
				<!-- 비어 있으면 X -->
			</div>	
			
			<div class="form-group">
				<label for="nickname">닉네임</label> 
				<input type="text" class="form-control etc"	id="nickname" name="nickname">
				<!-- 비어 있으면 X -->
			</div>	
			
		
			<div class="form-group">
				<label for="phone">Phone</label> 
				<input type="text" class="form-control etc"	id="phone" name="phone">
				<!-- 비어 있으면 X -->
			</div>			
			
			<div class="form-group">
				<label for="email">Email</label> 
				<input type="text" class="form-control etc"	id="email" name="email">
				<!-- 비어 있으면 X -->
			</div>
				
			<div class="form-group">
				<label for="avatar">사진 등록</label> 
				<input type="file" class="form-control etc"	id="avatar" name="avatar">
			</div>	
				
						
			<input type="submit" id="btn" value="JOIN" class="btn btn-primary" >
			
		</form>
		
	</div>

<script src="js/jquery-2.2.4.min.js"></script>
<script src="js/popper.js"></script>
<script src="js/bootstrap.min.js"></script>

<script src="js/stellar.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.ajaxchimp.min.js"></script>
<script src="js/waypoints.min.js"></script>
<script src="js/mail-script.js"></script>
<script src="js/contact.js"></script>
<script src="js/jquery.form.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/mail-script.js"></script>
<script src="js/theme.js"></script>
</body>
</html>