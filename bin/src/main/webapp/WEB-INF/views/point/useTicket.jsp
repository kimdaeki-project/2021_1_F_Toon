<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<!--CSS관련 부트 스트랩  -->
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS 5.0 -->
    <title>Ticket Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body>

<div class="container">
  <div class="row justify-content-md-center">
    <div class="col"></div><!-- 1번째 col END-->
    <!-- col2시작 -->
    <div class="col-6">
    	<form id="" action="" method="post">
    		<label id="toonNum"> 구입위한 ToonNum </label>
    		<input id="toonNum" name="toonNum" readonly="readonly">
    		
    		<label id="username"> 사용자 username </label>
    		<input id="username" name="username" readonly="readonly">
    		
    		<input id="">
    		<button type="submit" disabled="disabled">소장권 구매하기</button>
    	</form>
    </div><!-- 2col 끝 -->
    <div class="col"></div><!-- 3번째 col END-->
  </div><!-- container끝 -->
</div>

</body>
</html>