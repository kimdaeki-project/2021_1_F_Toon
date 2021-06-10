<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- i'mport  결제   -->
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>

<h1>Pay Charge Page</h1>

<form id="kakaoPay" method="post" action="./pay/kakaoPay">
    <button>카카오페이로 결제하기 </button>
</form>

<!-- jquery사용 용도 -->
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<!-- <script type="text/javascript" src="../js/pay/kakaoPay.js"></script> -->

<script type="text/javascript" src ="../js/pay/iamport.js" ></script>
</body>
</html>