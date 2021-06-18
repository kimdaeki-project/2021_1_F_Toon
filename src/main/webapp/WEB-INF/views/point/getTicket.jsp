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
    <title>Purchase Toon Ticket Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body>

<div class="container">
  <div class="row justify-content-md-center">
    <div class="col"></div>
    <!-- col2시작 -->
    <div class="col-6">
    	<form id="" action="" method="post">
    		<div class="card">
    		
    		<label id="username"> 사용자 username </label>
    		<input id="username" name="username" value="${memberVO.username}" readonly="readonly"/>
    		
    		<label id="username"> 사용자 보유 point </label>
    		<input id="point" name="point" value="${memberVO.point}" readonly="readonly"/>
    		
    		<label id="toonNum"> 구입하려는 ToonNum </label>
    		<input id="toonNum" name="toonNum" value="${usePoint.toonNum}" readonly="readonly"/>
    		
    		<label id="stock"> 현재 가지고 있는 웹툰 소장권 갯수 </label>
    		<input id="stock" name="stock" value="${usePoint.stock}" readonly="readonly"/>
    		
    		<label id="stock"> 포인트 사용 뒤 보유할 소장권 갯수 </label>
    		<input id="stock" name="stock" value="${usePoint.stock}" readonly="readonly"/>
    		</div>
    		
    		<!-- 구입할 소장권 갯수 선택 -->
    		<div class="charge-select-area list-group list-group-flush card">
			 <ul>
		    	<li class="list-group-item">
		    		<div class="form-check card-body">
			  	 		<input class="form-check-input" id="case1" type="radio" name="point" value="3000" checked>
			  	  		<label class="form-check-label" for="case1"> 1개 </label>
					</div>
		    	</li>
		    	<li class="list-group-item">
		    		<div class="form-check card-body">
				  	  <input class="form-check-input" id="case2" type="radio" name="point" value="1000">
				  	  <label class="form-check-label" for="case2">10개</label>
					</div>
				</li>
		    	<li class="list-group-item">
		    		<div class="form-check card-body">
					  <input class="form-check-input" id="case3" type="radio" name="point" value="2000">
				  	  <label class="form-check-label" for="case3">20개</label>
				</div>
		    	</li>
		    	<li class="list-group-item">
		    		<div class="form-check card-body">
					  <input class="form-check-input" id="case4" type="radio" name="point" value="3000">
				  	  <label class="form-check-label" for="case4">30개</label>
					</div>
		    	</li>
		    </ul><!--END CHARGE CHECKBOX -->
    		<!-- 결제 버튼 -->
    		</div>
    		<button type="submit" disabled="disabled">소장권 구매하기</button>
    	</form>
    </div><!-- 2col 끝 -->
    <div class="col"></div><!-- 3번째 col END-->
  </div><!-- container끝 -->
</div>

<script type="text/javascript" src ="../../js/pay/iamport.js"></script>

</body>
</html>