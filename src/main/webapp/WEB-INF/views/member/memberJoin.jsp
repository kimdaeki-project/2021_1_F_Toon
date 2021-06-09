<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<c:import url="../fragments/bootstrap.jsp"></c:import>
<title>회원가입</title>
<link rel="stylesheet" href="style.css">
<script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css2?family=Alata&display=swap" rel="stylesheet">
<c:import url="../fragments/bootstrap.jsp"></c:import>
<link rel="stylesheet" href="/css/header.css">
<link rel="stylesheet" href="/css/join.css">

</head>
<body>

<form:form id="joinForm" modelAttribute="memberVO" action="./join" method="post" enctype="multipart/form-data">
    <div class="page-container">
    
        <div class="login-form-container shadow">
        
            <div class="login-form-right-side">
         	
                <div class="login-input-container">
                	<h3 class="fas fa-user"> JOIN PAGE</h3>
                	
                    <div class="login-input-wrap input-id">
                        <i class="far fa-envelope"></i>
                        <form:input placeholder="Username" type="text" id="id" path="username"></form:input>
                      	<center><h5 id="idCheckResult"></h5></center>
						<center><h5 id="idResult"></h5></center>
						<form:errors path="username" class="c1"></form:errors>
                    </div>
                    
                    <div class="login-input-wrap input-password">
                        <i class="fas fa-key"></i>
                        <input placeholder="Password" type="password" id="pw" path="password" />
                        <center><h5 id="pwResult"></h5></center>
						<form:errors path="password" class="c1"></form:errors>
                    </div>
                    
                     <div class="login-input-wrap input-password">
                        <i class="fas fa-key"></i>
                        <form:password placeholder="Password" id="pw2" path="password"/>
                        <center><h5 id="pwResult2"></h5></center>
                    </div>
                    
                    <div class="login-input-wrap input-password">
                        <i class="fas fa-user-circle"></i>
                        <form:input placeholder="name" id="name" path="name"/>
                        <form:errors path="name" class="c1"></form:errors>
                    </div>	
                    
                </div>
                <p>.</p>
                <P></P>
            </div>
            
            <div class="login-form-left-side">
            	
<!--                 <div class="login-top-wrap"> -->
                
<!--                 </div> -->
              
                <div class="login-input-container">
            
                    <div class="login-input-wrap input-id">
                        <i class="far fa-id-badge"></i>
                        <form:input placeholder="NickName" type="text" id="nickname" path="nickname"/>
                        <form:errors path="nickname" class="c1"></form:errors>
                    </div>
      
                    <div class="login-input-wrap input-password">
                        <i class="fas fa-phone"></i>
                        <form:input placeholder="Phone" id="phone" path="phone"/>
                        <form:errors path="phone" class="c1"></form:errors>
                    </div>
                        
                    <div class="login-input-wrap input-password">
                        <i class="fas fa-indent"></i>
                        <form:input placeholder="E-mail" id="email" path="email"/> <button id = "CheckMail" type="button" class="sendMail" onclick="sendMail()" style="border: 1px solid blue;">Certification Number</button>
                        <form:errors path="email" class="c1"></form:errors>
                    </div>
                    
                    <div class="login-input-wrap input-password">
                        <i class="fas fa-indent"></i>
                        <form:input placeholder="Certification Number"  id="emailNum" type="text"  path="emailNum"/>
                        <button type="button" class="emailCheck"  onclick="emailCheck()" style="border: 1px solid blUE;" >Authentication Check</button> 
           				<form:errors path="emailNum" class="c1"></form:errors>    
                    </div>
                   
                    <div class="login-input-wrap input-password">
                        <i class="fas fa-file"></i>
                        <input type="file" placeholder="Photo Registration(Selection)"  id="avatar" name="avatar" >
                    </div>
                    
			</div>
                    
                   <div class="login-btn-wrap">
                		<input type="button" value="JOIN" class="login-btn" id="join_btn">	
                	</div>
	
                </div>  
            </div>
        </div>
    </div>
	</form:form>
	
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