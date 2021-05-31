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

	<h1>회원정보</h1>
	<c:if test="${member.joinFileVO.fileName eq null}"><img alt="" src="../images/member.jpg"></c:if>
	<c:if test="${member.joinFileVO.fileName ne null}"><h3><img alt="" src="../upload/member/${member.joinFileVO.fileName}"></h3></c:if>
	<h1>${member.joinFileVO.fileName}</h1>
	<h3>아이디: ${member.username}</h3>
	<h3>이름: ${member.name}</h3>
	<h3>닉네임: ${member.nickname}</h3>
	<h3>핸드폰: ${member.phone}</h3>
	<h3>이메일: ${member.email}</h3>
	<h3>내 포인트: ${member.point}point</h3>
	
	<a href="./memberUpdate" class="btn btn-info" role="button">내 정보 수정</a>
	<a href="./memberDelete" class="btn btn-danger" role="button">회원 탈퇴</a>

</body>
</html>