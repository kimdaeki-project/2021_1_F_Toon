<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<c:import url="../fragments/bootstrap.jsp"></c:import>
<title>회원가입</title>

<!--     summer note -->
<!-- 	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet"> -->
<!-- 	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script> -->
<!-- 	<!-- ----------- -->
-->

<link rel="stylesheet" href="/css/header.css">


<style type="text/css">
.r1 {
	color: red;
}

.r2 {
	color: blue;
}

.c1 {
	color:red;
}
</style>

</head>
<body>
	<c:import url="../fragments/header.jsp"></c:import>
	<div class="container mt-2">

		<h2 class="mt-4">회원가입</h2>

		<form:form id="joinForm" modelAttribute="memberVO" action="./join" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<label for="id">ID</label> 
				<form:input class="form-control" id="id" path="username"></form:input>
				<h4 id="idCheckResult"></h4>
				<h4 id="idResult"></h4>
				<form:errors path="username" class="c1"></form:errors>
				<!-- ID 는 6글자 이상 -->
			</div>

			<div class="form-group">
				<label for="pw">Password</label> 
				<input type="password" class="form-control" id="pw" path="password" />
				<h4 id="pwResult"></h4>
				<form:errors path="password" class="c1"></form:errors>
				<!-- PW는 8글자 이상 -->
			</div>

			<div class="form-group">
				<label for="pw">Password 확인</label> 
				<form:password class="form-control" id="pw2" path="password"/>
				<h4 id="pwResult2"></h4>
				<!-- PW 두개는 일치 -->
			</div>

			<div class="form-group">
				<label for="name">이름</label> 
				<form:input class="form-control etc" id="name" path="name"/>
				<form:errors path="name" class="c1"></form:errors>
			</div>

			<div class="form-group">
				<label for="nickname">닉네임</label> 
				<form:input class="form-control etc" id="nickname" path="nickname"/>
				 <form:errors path="nickname" class="c1"></form:errors>
			</div>


			<div class="form-group">
				<label for="phone">Phone</label> 
				<form:input class="form-control etc" id="phone" path="phone" placeholder="- 제외 하고 입력하세요"/>
				 <form:errors path="phone" class="c1"></form:errors>
			</div>

			<div class="form-group">
            <label for="email">이메일</label> 
            <form:input class="form-control" id="email" path="email"/>
            <button id = "CheckMail" type="button" class="sendMail" onclick="sendMail()" style="border: 1px solid black;">인증번호받기</button>                               
            <form:errors path="email" class="c1"></form:errors>
            
           <div class="form-group">
            <label for="emailNum">인증번호</label><br>
            <form:input id="emailNum" type="text"  path="emailNum"/>
            <button type="button" class="emailCheck"  onclick="emailCheck()" style="border: 1px solid black;">인증확인</button> 
            <form:errors path="emailNum" class="c1"></form:errors>                                                            
           
            <!-- 비어 있으면 X -->
         </div>
			<div class="form-group">
				<label for="avatar">사진 등록(선택)</label> 
				<input type="file" class="form-control etc" id="avatar" name="avatar">
			</div>
			
				<input type="button" value="JOIN" id="join_btn" class="btn btn-primary">		
		</form:form>

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
	<script type="text/javascript" src="../js/memberJoin.js"></script>
	<script type="text/javascript">
	var isCertification = false;
	 $("#join_btn").click(function(){
		  
		   if(isCertification==false){
		      swal("메일 인증이 되지않았습니다.","You clicked the button!" , "warning");
		   }
		   else{
		      $("#joinForm").submit();
		     }
		}); 
	</script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
</body>
</html>