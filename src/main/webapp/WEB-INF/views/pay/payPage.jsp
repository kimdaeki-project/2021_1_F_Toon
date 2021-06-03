<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Pay Charge Page</h1>

<form method="post" action="/pay/kakaoPay">
    <button>카카오페이로 결제하기</button>
</form>
<!-- jquery사용 용도 -->
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- 카카오 페이요청 넣기 -->
<script type="text/javascript" src="../js/pay/kakaoPay.js"></script>

</body>
</html>