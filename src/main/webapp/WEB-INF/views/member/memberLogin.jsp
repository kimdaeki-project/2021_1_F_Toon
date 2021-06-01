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
    
    <script type="text/javascript">
		
		if('${messageType}' == 'Y'){
			alert('${msg}');
		}
		
	</script>
</head>
<body>
	<c:import url="./../fragments/header.jsp"></c:import>
	<h1>로그인 페이지</h1>
	
	<form action="./login"  method="post">
			<div class="form-group">
				<label for="id">ID</label> 
				<input type="text" class="form-control" id="id" name="username"
					aria-describedby="idlHelp"> 
					<small id="idlHelp"	class="form-text text-muted">
						We'll never share your email with anyone else.
					</small>
			</div>
			<div class="form-group">
				<label for="pw">Password</label> 
				<input type="password" class="form-control" id="pw" name="password">
			</div>
			<div class="form-group form-check">
				<input type="checkbox" class="form-check-input" id="exampleCheck1">
				<label class="form-check-label" for="exampleCheck1">Check me out</label>
			</div>
			<button type="submit" class="btn btn-primary">로그인</button>
		</form>
		
		<a href="/member/searchId">ID 찾기</a> <a href="/member/searchPw">비밀번호 찾기</a> <a href="/member/memberJoinCheck">회원가입</a>

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