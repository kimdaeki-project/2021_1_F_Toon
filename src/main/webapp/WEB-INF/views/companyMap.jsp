<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<c:import url="./fragments/bootstrap.jsp"></c:import>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a20cd5f8a90665593bce8fe4ee970b80"></script>

<title></title>
<style type="text/css">

</style>

</head>
<body>
	
<c:import url="./fragments/header.jsp"></c:import>


<div class="container">
<h2>회사 위치</h2>
<div id="map" style="width:600px;height:500px;"></div>
</div>

<script type="text/javascript">
	
	getMap(37.612139, 126.834139);
	
	function getMap(lat, lng) {
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center: new kakao.maps.LatLng(lat, lng), //지도의 중심좌표.
			level: 3 //지도의 레벨(확대, 축소 정도)
		};
		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	}
	
</script>

<c:import url="./fragments/footer.jsp"></c:import>

</body>
</html>