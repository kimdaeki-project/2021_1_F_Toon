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
    <title>JOINCHECK</title>
   
  	<link rel="stylesheet" href="/css/header.css">
  	
  	<style>
#container {
  display: grid;
  grid-template-columns: 1fr 3fr 1fr;
}
#box-left {
  
}
#box-center {
  
  text-align: left;
}
#box-right {
 
  text-align: right;
}
</style>
</head>
<body>
	
	<div id='container'>
    <div id='box-left'></div>
    <div id='box-center'>
    <h2>약관 동의</h2>
	
	<div class="form-check">
 		<label class="form-check-label">
   		<input type="checkbox" class="form-check-input" id="all" value="">전체동의
  		</label>
	</div>
	
	
	<div class="form-check">
 		<label class="form-check-label">
   		<input type="checkbox" class="form-check-input check" value="">동의
  		</label>
	</div>
	
	<div class="jumbotron">
  		<h3>제 1 장 환영합니다!</h3>
  		<p>주식회사 웹툰 홈페이지가 제공하는 서비스를 이용해 주셔서 감사합니다. 회사는 여러분이 다양한 인터넷과 모바일 서비스를 좀 더 편리하게 이용할 수 있도록 회사 또는 관계사의 개별 서비스에 모두 접속 가능한 통합로그인계정 체계를 만들고 그에 적용되는 '웹툰 약관(이하 '본 약관')을 마련하였습니다. 본 약관은 여러분이 서비스를 이용하는 데 필요한 권리, 의무 및 책임사항, 이용조건 및 절차 등 기본적인 사항을 규정하고 있으므로 조금만 시간을 내서 주의 깊게 읽어주시기 바랍니다.</p>
	</div>
		<div class="form-check">
 		<label class="form-check-label">
   		<input type="checkbox" class="form-check-input check" value="">동의
  		</label>
	</div>
	
	<div class="jumbotron">
  		<h3>제 2 장 웹툰 계정 이용계약</h3>
  		<p>① 웹툰계정 이용 신청은 개별 서비스 또는 웹툰계정 웹사이트 회원가입 화면에서 여러분이 웹툰계정 정보에 일정 정보를 입력하는 방식으로 이루어집니다.
		   ② 웹툰계정 이용계약은 여러분이 본 약관의 내용에 동의한 후 본 조 제1항에서 정한 이용신청을 하면 회사가 입력된 일정 정보를 인증한 후 가입을 승낙함으로써 체결됩니다. </p>
	</div>
	
	<div class="form-check">
 		<label class="form-check-label">
   		<input type="checkbox" class="form-check-input check" value="">동의
  		</label>
	</div>
	
	<div class="jumbotron">
  		<h3>제 3 장 웹툰 계정 이용</h3>
  		<p>① 회사가 개별 서비스와 연동하여 웹툰계정에서 제공하는 서비스(이하 “웹툰계정 서비스” 또는 “서비스”) 내용은 아래와 같습니다.
	 	1. 통합로그인 : 웹툰계정이 적용된 개별 서비스에서 하나의 웹툰계정과 비밀번호로 로그인할 수 있는 통합 회원 인증 서비스를 이용할 수 있습니다.
		2. SSO(Single Sign On): 웹브라우저나 특정 모바일 기기에서 웹툰계정 1회 로그인으로 여러분이 이용 중인 개별 서비스간 추가 로그인 없이 자동 접속 서비스를 이용할 수 있습니다.
		3. 웹툰계정 정보 통합 관리 : 개별 서비스 이용을 위해 웹툰계정 정보를 통합 관리합니다. 또한, 여러분이 이용하고자 하는 개별 서비스의 유형에 따라 전문기관을 통한 실명확인 및 본인인증을 요청할 수 있고, 이를 웹툰계정 정보로 저장합니다.</p>
	</div>
	
	<button class="btn btn-danger" id="btn">JOIN</button>
    </div>
    <div id='box-right'></div>
</div>
	
<script type="text/javascript" src="../js/memberJoinCheck.js"></script>
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