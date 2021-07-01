<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- ================ start footer Area ================= -->
<footer class="footer-area">
	<div class="container">
		<div class="row">

			<div class="col-lg-3 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
				<h4>회사 소개</h4>
				<p>SH엔터테인먼트는 모두가 즐거운 세상을 꿈꿉니다. 웹툰을 보다 다양한 콘텐츠로의 확장, 서비스 역량을
					더욱 강화하여 이용자들에게 즐거움을 드리고 싶습니다</p>

			</div>

			<div class="col-lg-3 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
				<h4>회사 위치</h4>
					<div class="footer-address">
						<a href="${pageContext.request.contextPath}/companyMap"
						target="_blank"> 주소 고양시 덕양구 행신동 소원로 157, Gyeonggi-do,
						Deokyang-gu, Korea</a><br><br> 
						
					<span>대표번호 : 031-811-1385 </span>
				</div>
			</div>


			<div class="col-lg-3 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
				<h4>공지/문의/자유게시판</h4>
				<ul>
					<li><a
						href="${pageContext.request.contextPath}/notice/noticeList"
						>공지사항</a></li>
					<li><a href="${pageContext.request.contextPath}/qna/qnaList"
						>질의응답</a></li>
					<li><a href="${pageContext.request.contextPath}/free/freeList"
						>자유게시판</a></li>	
				</ul>
			</div>

	</div>
	
	<p class="copyright_law">본 콘텐츠의 저작권은 저자 또는 제공처에 있으며, 이를 무단 이용하는 경우 저작권법 등에 따라 법적 책임을 질 수 있습니다.</p>
	
	<div class="col-lg-3 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
		<img src="${pageContext.request.contextPath}/images/logo.png" alt="">
	</div>
	<div class=container>
		Copyright &copy;
		<script>document.write(new Date().getFullYear());</script>
		All rights reserved SH entertainment
	</div>

</div>
</footer>
<!-- ================ End footer Area ================= -->