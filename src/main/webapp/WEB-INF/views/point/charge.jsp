<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<!-- iamport 스크립트 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<!--CSS관련 부트 스트랩  -->
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS 5.0 -->
    <title>point charge Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body>

<div class="container">
  <div class="row justify-content-md-center">
    <div class="col"></div>
    <div class="col-6"><!-- col2시작 -->
    <form>
    
    <!-- username -->
	    <input id="user-name" value="<sec:authentication property="principal.username" />" readonly="readonly" hidden="hidden"/><!-- hidden="hidden" 추가 할 것 -->
	    
	    <!-- 유저이름 -->
	    <input  value="<sec:authentication property="principal.name"/>"  readonly="readonly" hidden="hidden"/>
	    
	    <!-- 유저 이메일 -->
	    <input id="user-email" value="<sec:authentication property="principal.email"/>" readonly="readonly" hidden="hidden"/>
	    
	     <!-- 유저 전화번호 -->
	    <input id="user-phone" value="<sec:authentication property="principal.phone"/>" readonly="readonly" hidden="hidden"/>
    
     <h1  class="display-3 text-center">Point Charge Page</h1>
     <div id="before" class="card card-body">
	     <div class="row">
	     	<div><p class="fs-5 text-start" >내 포인트</p></div>
	     	<div>
	     	 	<input id ="cur-point" value="<sec:authentication property="principal.point"/>" hidden="hidden">
	     	 	<p class="col text-end fs-4"> <sec:authentication property="principal.point"/> P </p>
	     	</div>
	     </div>
	    
	 </div><!-- end Before-Charge -->
	 
	 <span class="fs-5">충전 금액 선택하기 </span>
     <div class="charge-select-area list-group list-group-flush">
	 <ul>
    	<li class="list-group-item">
    		<div class="form-check card-body">
	  	 		<input class="form-check-input" id="case1" type="radio" name="point" value="3000" checked>
	  	  		<label class="form-check-label" for="case1"> 3000P </label>
			</div>
    	</li>
    	<li class="list-group-item">
    		<div class="form-check card-body">
		  	  <input class="form-check-input" id="case2" type="radio" name="point" value="1000">
		  	  <label class="form-check-label" for="case2">1000P</label>
			</div>
		</li>
    	<li class="list-group-item">
    		<div class="form-check card-body">
			  <input class="form-check-input" id="case3" type="radio" name="point" value="2000">
		  	  <label class="form-check-label" for="case3">2000P</label>
		</div>
    	</li>
    	<li class="list-group-item">
    		<div class="form-check card-body">
			  <input class="form-check-input" id="case4" type="radio" name="point" value="3000">
		  	  <label class="form-check-label" for="case4">3000P</label>
		</div>
    	</li>
    	<li class="list-group-item">
    		<div class="form-check card-body">
		  	  <input class="form-check-input" id="case5" type="radio" name="point" value="5000">
	  	  	  <label class="form-check-label" for="case5">5000P</label>
			</div>
    	</li>
    	<li class="list-group-item">
    		<div class="form-check card-body">
		 	 <input class="form-check-input" id="case6" type="radio" name="point" value="10000">
	  	  	 <label class="form-check-label" for="case6">10,000P</label>
		    </div>
    	</li>
    	<li class="list-group-item">
    		<div class="form-check card-body">
		  	  <input class="form-check-input" id="case7" type="radio" name="point" value="30000">
	  	      <label class="form-check-label" for="case7">30,000P</label>
			</div>
    	</li>
    	<li class="list-group-item">
    		<div class="form-check card-body">
		      <input class="form-check-input" id="case8" type="radio" name="point" value="50000">
	  	      <label class="form-check-label" for="case8">50,000P</label>
			</div>
    	</li>
    	<li class="list-group-item">
    		<div class="form-check card-body">
		      <input class="form-check-input" id="case9" type="radio" name="point" value="100000">
	  	      <label class="form-check-label" for="case9">100,000P</label>
			</div>
    	</li>
    	</ul><!--END CHARGE CHECKBOX -->
    	<!-- 결제 버튼 -->
	</div> <!-- 선택하기 끝-->
	<!-- START TOTAL PRICE  -->
	<div class="col card card-body" id="total-price">
    	<div><p class="fs-5 text-start">충전 뒤 포인트</p></div>
    	<div><p class="fs-4 text-end" id="total-point"> <sec:authentication property="principal.point"/> P</p></div><!-- 오른쪽 아래 정렬 -->
    </div>
	<!--  END TOTAL PRICE -->
	
    <!-- 결제동의 DIV 시작 -->
    <div class="card card-body form-check" >
   	  <input class="card-body form-check-input text-start" type="checkbox" id="agree-charge" />
	  <label class="form-check-label fs-5 text-end" for="agree-charge">구입 약관에 대해 동의합니다 </label>
    </div>
    <!-- 결제동의 DIV 끝 -->
    <button id="start-charge" class="btn btn-primary" type="button" disabled>포인트 충전하기</button>
    
	</form>
    
    </div><!-- 2col 끝 -->
    <div class="col"></div><!-- 3번째 col END-->
  </div><!-- container끝 -->
</div>

<script type="text/javascript" src ="../../js/pay/iamport.js"></script>

</body>
</html>