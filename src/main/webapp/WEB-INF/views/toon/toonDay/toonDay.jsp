<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<c:import url="../../fragments/bootstrap.jsp"></c:import>
<link rel="stylesheet" href="../../css/header.css">
<link rel="stylesheet" href="../../css/toonDay.css">
</head>

<body>
<c:import url="../../fragments/header.jsp"></c:import>
<sec:authorize access="isAuthenticated()"> 
   <input name="username" value="<sec:authentication property="principal.username"/>" hidden="hidden" readonly="readonly"/>
</sec:authorize>


   <div class="view_type">   
   <table>
      <tr>
         <td><button type="button" class="btn btn-outline-primary" onclick="location.href='toonDay'">조회순</button></td>
         <td><button type="button" class="btn btn-outline-info" onclick="location.href='toonDayRecent'">업데이트순</button></td>
         <td><button type="button" class="btn btn-outline-dark""   onclick="location.href='toonDayAver'">별점순</button></td>
      </tr>
   </table>
   </div>
   
   <br>
   <br>
   <br>

 <div class="area-heading">
                    <h3>이번주 인기 웹툰</h3>
                    <p>올 여름을 강타할 짜릿짜릿한 에어컨같은 웹툰들을 만나보아요:)</p>
                </div>

      <!-- 월요일 ------------------------------------------------------>      
      <div class="mon"><a class="m" href="/toon/toonDay/toonDaySelect"><h1>월요일</h1></a>
      <br>
         <ul>
      <c:forEach items="${mt}" var="mt">
         <li><a href="/toon/eachEpList?toonNum=${mt.toonNum}"> <img width=100px height=100px src=${mt.titleImg}></a></li>
         <li>${mt.toonTitle}</li><p>   
      </c:forEach>
      </ul>
      </div>

      <!-- 화요일 ------------------------------------------------------>
      <div class="tue"><h1>화요일</h1>
      <br>
         <ul>
      <c:forEach items="${tt}" var="tt">
         <li><a href="/toon/eachEpList?toonNum=${tt.toonNum}"> <img width=100px height=100px src=${tt.titleImg}></a></li>
         <li>${tt.toonTitle} </li><p>   
      </c:forEach>
      </ul>
      </div>   
      
      
      <!-- 수요일 ------------------------------------------------------>
      <div class="wen"><h1>수요일</h1>
      <br>
         <ul>
      <c:forEach items="${wt}" var="wt">
         <li><a href="/toon/eachEpList?toonNum=${wt.toonNum}"> <img width=100px height=100px src=${wt.titleImg}></a></li>
         <li>${wt.toonTitle} </li><p>   
      </c:forEach>
      </ul>
      </div>
      
      
      <!-- 목요일 ------------------------------------------------------>
      <div class="thu"><h1>목요일</h1>
      <br>
         <ul>
      <c:forEach items="${tt2}" var="tt2">
         <li><a href="/toon/eachEpList?toonNum=${tt2.toonNum}"> <img width=100px height=100px src=${tt2.titleImg}></a></li>
         <li>${tt2.toonTitle}</li><p>   
      </c:forEach>
      </ul>
      </div>
      
      
      <!-- 금요일 ------------------------------------------------------>
      <div class="fri"><h1>금요일</h1>
      <br>
         <ul>
      <c:forEach items="${ft}" var="ft">
         <li><a href="/toon/eachEpList?toonNum=${ft.toonNum}"> <img width=100px height=100px src=${ft.titleImg}></a></li>
         <li>${ft.toonTitle} </li><p>   
      </c:forEach>
      </ul>
      </div>
      
      
      <!-- 토요일 ------------------------------------------------------>
      <div class="sat"><h1>토요일</h1>
      <br>
         <ul>
      <c:forEach items="${st}" var="st">
         <li><a href="/toon/eachEpList?toonNum=${st.toonNum}"> <img width=100px height=100px src=${st.titleImg}></a></li>
         <li>${st.toonTitle} </li><p>   
      </c:forEach>
      </ul>
      </div>
      
      
      <!-- 일요일 ------------------------------------------------------>
      <div class="sun"><h1>일요일</h1>
      <br>
         <ul>
      <c:forEach items="${st2}" var="st2">
         <li><a href="/toon/eachEpList?toonNum=${st2.toonNum}"> <img width=100px height=100px src=${st2.titleImg}></a></li>
         <li>${st2.toonTitle}</li><p>   
      </c:forEach>
      </ul>
      </div>
      


   </div>


</body>
</html>