<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
    <c:import url="./../fragments/bootstrap.jsp"></c:import>
    <title>WebToon</title>
     
    <link rel="stylesheet" href="../css/header.css">

    
    <link rel="stylesheet" href="../css/mypage/style.css">
    
</head>
<body class="header-fixed">
<!-- start Header -->
<c:import url="../fragments/header.jsp"></c:import>
<!-- content-div -->
<h1>Writer Apply Form</h1>
<div class="col-lg-12">
		                <div class="grid">
		                  <p class="grid-header">writer Form</p>
		                  <div class="grid-body">
		                    <div class="item-wrapper">
		                      <div class="row mb-3">
		                        <div class="col-md-8 mx-auto">
		                          
		                          <div class="form-group row showcase_row_area">
		                            <div class="row-md-3 showcase_text_area">
		                              <label for="inputType1">작가 닉네임</label>
		                            </div>
		                            <div class="row-md-9 showcase_content_area">
		                              <input type="text" class="form-control" id="inputType1" value="Sara Watson">
		                            </div>
		                          </div>
		                          
		                          <div class="form-group row showcase_row_area">
		                            <div class="row-md-3 showcase_text_area">
		                              <label for="inputType12">이메일</label>
		                            </div>
		                            <div class="row-md-9 showcase_content_area">
		                              <input type="email" class="form-control" id="inputType2" value="asfabiv@rud.eu">
		                            </div>
		                          </div>
		                          
		                           
		                            
		                          <div class="form-group row showcase_row_area">
		                            <div class="col-md-3 showcase_text_area">
		                              <label for="inputType12">SNS</label>
		                            </div>
		                           
		                            <div class="col-md-9 showcase_content_area">
		                              <input type="email" class="form-control" id="inputType2" value="asfabiv@rud.eu">
		                            </div>
		                            
		                          </div>
		                          
		                          <div class="form-group row showcase_row_area">
		                            <div class="col-md-3 showcase_text_area">
		                              <label for="inputType1">핸드폰</label>
		                            </div>
		                            <div class="col-md-9 showcase_content_area">
		                              <input type="number" class="form-control" id="inputType4" value="83393922">
		                            </div>
		                          </div>
		                          
		                          <div class="form-group row showcase_row_area">
		                            <div class="col-md-3 showcase_text_area">
		                              <label for="inputType5">Disabled</label>
		                            </div>
		                            <div class="col-md-9 showcase_content_area">
		                              <input type="text" class="form-control" id="inputType5" value="Hulda Stevenson" disabled>
		                            </div>
		                          </div>
		                          
		                          <div class="form-group row showcase_row_area">
		                            <div class="col-md-3 showcase_text_area">
		                              <label for="inputType7">Placeholder</label>
		                            </div>
		                            <div class="col-md-9 showcase_content_area">
		                              <input type="text" class="form-control" id="inputType7" placeholder="Placeholder Text">
		                            </div>
		                          </div>
		                          
		                          <div class="form-group row showcase_row_area">
		                            <div class="col-md-3 showcase_text_area">
		                              <label for="inputType8">Read-only</label>
		                            </div>
		                            <div class="col-md-9 showcase_content_area">
		                              <input type="text" class="form-control" id="inputType8" readonly="readonly" value="Hulda Stevenson">
		                            </div>
		                          </div>
		                          
		                        </div>
		                      </div>
		                    </div>
		                  </div>
		                </div>
		              </div>
<!-- start footer -->
  </body>
</html>