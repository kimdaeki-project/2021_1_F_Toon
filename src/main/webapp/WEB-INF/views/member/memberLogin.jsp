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
	 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Alata&display=swap" rel="stylesheet">
    <c:import url="../fragments/bootstrap.jsp"></c:import>
   
    <link rel="stylesheet" href="/css/header.css">
    <link rel="stylesheet" href="/css/login.css">
    
    <script type="text/javascript">
		
		if('${messageType}' == 'Y'){
			alert('${msg}');
		}
		
	</script>
</head>
<body>
	<form id="frm" action="./login"  method="post">
    <div class="page-container">
    
        <div class="login-form-container shadow">
        
            <div class="login-form-right-side">
            
                <div class="top-logo-wrap">
                    
                </div>
                <h1>How does a login system work?</h1>
                <p>In computer security, logging in is the process by which an individual gains access to a computer system by identifying and authenticating themselves.</p>
            </div>
            
            <div class="login-form-left-side">
            	
                <div class="login-top-wrap">
                	<a class="navbar-brand" href="${pageContext.request.contextPath}/"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
  					<path fill-rule="evenodd" d="M2 13.5V7h1v6.5a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5V7h1v6.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5zm11-11V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
  					<path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
					</svg></a>
                    <span>Do you want to find your ID?</span>
                    <button class="create-account-btn shadow-light"><a href="/member/searchId">Forgot ID?</a></button>
                </div>
                <div class="login-input-container">
                    <div class="login-input-wrap input-id">
                        <i class="far fa-envelope"></i>
                        <input placeholder="Username" type="text" id="id" value="ZZZZZZZZZ" name="username" aria-describedby="idlHelp">
                        <small id="idlHelp"	class="form-text text-muted">
							We'll never share your email with anyone else.
						</small>
                    </div>
                    <div class="login-input-wrap input-password">
                        <i class="fas fa-key"></i>
                        <input placeholder="Password" type="password" value="ZZZZZZZZ" id="pw" name="password">
                    </div>
                    <div class="form-group form-check">
						<input type="checkbox" class="form-check-input" id="exampleCheck1">
					<label class="form-check-label" for="exampleCheck1">Check me out</label>
					</div>
                    
                </div>
                <div class="login-btn-wrap">
                    <button type="submit" class="login-btn">Login</button>
                    <a href="/member/searchPw" >Forgot password?</a> <a href="/member/memberJoinCheck">Sign Up</a>
                </div>
            </div>
        </div>
    </div>
	</form>

</body>
</html>