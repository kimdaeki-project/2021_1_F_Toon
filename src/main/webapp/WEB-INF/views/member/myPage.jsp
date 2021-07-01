<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
 <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
    <c:import url="../fragments/bootstrap.jsp"></c:import>
    <title>MYPAGE</title>
   
    <link rel="stylesheet" href="/css/header.css">
     <!-- plugins:css -->
    <link rel="stylesheet" href="../assets/vendors/iconfonts/mdi/css/materialdesignicons.css">
    <!-- endinject -->
    <!-- vendor css for this page -->
    <!-- End vendor css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="/css/mypage/style.css">
    <!-- Layout style -->
    <link rel="shortcut icon" href="../asssets/images/favicon.ico" />
    <link rel="stylesheet" href="/css/myPage.css">
</head>
<body>
	<c:import url="../fragments/header.jsp"></c:import>	

    <!-- partial -->
    <div class="page-body">
      <!-- partial:partials/_sidebar.html -->
      <div class="sidebar">
        <div class="user-profile">
          <div class="display-avatar animated-avatar">
            <c:if test="${memberVO.joinFileVO.fileName eq null}"><img id="image" width=180px height=200px alt="" src="../images/member.jpg"></c:if>
			<c:if test="${memberVO.joinFileVO.fileName ne null}"><img id="image" width=180px height=200px alt="" src="../upload/member/${memberVO.joinFileVO.fileName}"></c:if>
          </div>
          
          <div class="info-wrapper">
          
          	<form id="formId">
      		
          	<div class="filebox"> 
          	<label for="avatar">사진 선택</label> 
          	<input id="avatar" name="avatar" type="file">
          	</div>
          	
          	<button onclick="upload()" class="btn btn-outline-info">업로드</button>
          	<button onclick="delete1()" class="btn btn-outline-danger">삭제</button>
          	</form>
          	
            <p class="user-name">${memberVO.name}님</p>
            <h6 class="display-income">${memberVO.point}point</h6>
          </div>

        </div>
        <ul class="navigation-menu">
          <li class="nav-category-divider">MAIN</li>
          
           <li>
            <a href="#sample-pages" data-toggle="collapse" aria-expanded="false">
              <h4><span class="link-title">내 정보</span></h4>
              <i class="mdi mdi-flask link-icon"></i>
            </a>
            <ul class="collapse navigation-submenu" id="sample-pages">
              <li>
                <a href="/member/myPage">내 정보 조회</a>
              </li>
              
               <li>
                <a href="/member/changePassword">비밀번호 변경</a>
              </li>
              
            </ul>
          </li>
         
          <li>
            <a href="#ui-elements" data-toggle="collapse" aria-expanded="false">
              <h4><span class="link-title">웹툰</span></h4>
              <i class="mdi mdi-bullseye link-icon"></i>
            </a>
            <ul class="collapse navigation-submenu" id="ui-elements">
              <li>
                <a href="${pageContext.request.contextPath}../mypage/recentToon/?username=${memberVO.username}">최근 본 웹툰</a>
                
              </li>
              <li>
                <a href="${pageContext.request.contextPath}../mypage/favoriteToon/?username=${memberVO.username}">관심 웹툰</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath}../mypage/useToon/?username=${memberVO.username}">소장 웹툰</a>
              </li>
            </ul>
          </li>
          
      	 <li>
            <a href="#sales_inquiry" data-toggle="collapse" aria-expanded="false">
             <h4> <span class="link-title">포인트 관리</span></h4> 
              <i class="mdi mdi-clipboard-outline link-icon"></i>
            </a>
             <ul class="collapse navigation-submenu" id="sales_inquiry">
              <li>
                <a href="/mypage2/pointCharge">포인트 충전 내역 조회</a>
              </li>
              <li>
                <a href="mypage2/pointUse">포인트 사용 내역 조회</a>
              </li>
            </ul>
          </li>
          
          <li>
            <a href="#payment_manage" data-toggle="collapse" aria-expanded="false">
             <h4>  <span class="link-title">소장권 관리</span></h4>
              <i class="mdi mdi-clipboard-outline link-icon"></i>
            </a>
             <ul class="collapse navigation-submenu" id="payment_manage">
              <li>
                <a href="pages/sample-pages/login_1.html">소장권 구매 내역 조회</a>
              </li>
              <li>
                <a href="pages/sample-pages/error_2.html">소장권 사용 내역 조회</a>
              </li>
            </ul>
          </li>
          
            <li>
            	<a href="${pageContext.request.contextPath}../mypage/review/?username=${memberVO.username}">
             	<h4> <span class="link-title">내 댓글</span></h4>
            	  <i class="mdi mdi-clipboard-outline link-icon"></i>
            	</a>
          	 </li>
          
          
          <li>
            <a href="${pageContext.request.contextPath}/point/charge">
             <h4> <span class="link-title">충전하기</span></h4>
              <i class="mdi mdi-clipboard-outline link-icon"></i>
            </a>
          </li>
          
 
        </ul>
        
      </div>
      <!-- partial -->
      <div class="page-content-wrapper">
           <center><h2><회원정보></h2></center>
    <sec:authorize access="isAuthenticated()">       	
	
	<fieldset disabled>
    
    <div class="form-group">
      <label for="disabledTextInput">아이디</label>
      <input type="text" id="disabledTextInput" class="form-control" placeholder=<sec:authentication property="principal.username"/>>
    </div>
    
     <div class="form-group">
      <label for="disabledTextInput">이름</label>
      <input type="text" id="disabledTextInput" class="form-control" placeholder=${memberVO.name}>
    </div>
    
     <div class="form-group">
      <label for="disabledTextInput">닉네임</label>
      <input type="text" id="disabledTextInput" class="form-control" placeholder=${memberVO.nickname}>
    </div>
    
     <div class="form-group">
      <label for="disabledTextInput">핸드폰</label>
      <input type="text" id="disabledTextInput" class="form-control" placeholder=${memberVO.phone}>
    </div>
    
    <div class="form-group">
      <label for="disabledTextInput">E-mail</label>
      <input type="text" id="disabledTextInput" class="form-control" placeholder=${memberVO.email}>
    </div>
    
    <div class="form-group">
      <label for="disabledTextInput">내 포인트</label>
      <input type="text" id="disabledTextInput" class="form-control" placeholder=${memberVO.point}point>
    </div>
    
    
  </fieldset>
  <br><br>
	
	</sec:authorize>
	

	<sec:authorize access="isAuthenticated()">
		<center><a href="./memberUpdate" class="btn btn-info" 
		role="button" onclick="if(!confirm('내 정보를 수정 하시겠습니까?')){return false;}">내 정보 수정</a></center>
	</sec:authorize>
	</p>
        <div class="page-content-wrapper-inner">
          <div class="content-viewport">
            <div class="row">
              <div class="col-12 py-5">
                <p class="text-gray">
           
              </div>
            </div>
      </div>
      </div>
    </div>
    <script src="../assets/vendors/js/core.js"></script>
    <script src="../assets/vendors/apexcharts/apexcharts.min.js"></script>
    <script src="../assets/vendors/chartjs/Chart.min.js"></script>
    <script src="../assets/js/charts/chartjs.addon.js"></script>
    <script src="../assets/js/template.js"></script>
    <script src="../assets/js/dashboard.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript" src="../js/mypage.js"></script>
    <script type="text/javascript">
    $(function() {
    	
        $("#avatar").on('change', function(){
            readURL(this);
        });
    });
    
    function readURL(input) {
        if (input.files && input.files[0]) {
           var reader = new FileReader();
           reader.onload = function (e) {
              $('#image').attr('src', e.target.result);
           }
           reader.readAsDataURL(input.files[0]);
        }
        
    }

    function delete1(){
       if(confirm("사진을 삭제하시겠습니까?") == true){
       $.ajax({
          type : 'POST',
          url : '../member/delImage',
          data : {
             
          },
       
          dataType :'text',

          success : function(message) {
                 alert(message);
                location.href="../member/myPage";
              },
              error:function(requeest, status, error){
                 alert(error);
              },
       })
    }
   }


    //왜 여기안타지?
    function upload(){
    	   var form = $('#formId')[0];
    	   var formData = new FormData(form);
;
    	   $.ajax({
    	      type:"post",
    	      enctype:'multipart/form-data',
    	       url:'../member/setImage',
    	       data:formData,
    	       dataType :'text',
    	       processData:false,
    	       contentType:false,
    	       cache:false,
    	       success : function(message) {
    	            alert(message);

			          location.href="../member/myPage";
    	          },
    	       error:function(e){
    	           alert("error : ", e);
    	       },
    	   });
    	}
       
    function check(){
    	location.reload(); 
    }
    </script>
	
	
</body>
</html>