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
	<h2>수정ㅋ</h2>
	<form action="memberUpdate" method="post">
		ID <input type="text" name="username" readonly="readonly" value="${member.username}"><br>
		<c:if test="${member.joinFileVO.fileName eq null}"><img alt="" src="../images/member.jpg"></c:if>
		<c:if test="${member.joinFileVO.fileName ne null}"><h3><img alt="" src="../upload/member/${member.joinFileVO.fileName}"></h3></c:if>
		<input type="file" class="form-control etc"	id="avatar" name="avatar" >
		PW <input type="password" name="password" value="${member.password}"><br>
		Name <input type="text" name="name" value="${member.name}"><br>
		닉네임 <input type="text" name="nickname" value="${member.nickname}"><br>
		Phone <input type="text" name="phone" value="${member.phone}"><br>
		Email <input type="text" name="email" value="${member.email}"><br>
		
		<button class="btn btn-info">Update</button>
	</form>
	
	
	
</body>
</html>