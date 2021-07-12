<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html class="no-js h-100" lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>관리자 페이지</title>
    <meta name="description" content="A high-quality &amp; free Bootstrap admin dashboard template pack that comes with lots of templates and components.">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
	<script src="https://unpkg.com/shards-ui@latest/dist/js/shards.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Sharrre/2.0.1/jquery.sharrre.min.js"></script>
	
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" id="main-stylesheet" data-version="1.1.0" href="<c:url value="/resources/styles/shards-dashboards.1.1.0.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/styles/extras.1.1.0.min.css"/>">
    <script async defer src="https://buttons.github.io/buttons.js"></script>
  </head>
  <body class="h-100">
    <div class="color-switcher-toggle animated pulse infinite">
      <i class="material-icons">settings</i>
    </div>
    <div class="container-fluid">
      <div class="row">
        <!-- Main Sidebar -->
        <jsp:include page="/WEB-INF/views/adminTemplates/Left.jsp"/>
        <!-- End Main Sidebar -->
        <jsp:include page="/WEB-INF/views/adminTemplates/Top.jsp"/>
          <!-- / .main-navbar -->
          <div class="main-content-container container-fluid px-4">
            <!-- Page Header -->
            <div class="page-header row no-gutters py-4">
              <div class="col-12 col-sm-4 text-center text-sm-left mb-0">
                <span class="text-uppercase page-subtitle">리뷰,댓글,좋아요 관리</span>
                <h3 class="page-title">리뷰 관리 페이지</h3>
              </div>
            </div>
            
            
            <!-- End Page Header -->
            <div class="row">
            
            <!-- 예시 만들기 -->
            <div class="col-lg-3 col-md-6 col-sm-12 mb-4">
                <div class="card card-small card-post card-post--1">
                  <div class="card-post__image" style="background-image: url('images/content-management/1.jpeg');">
                    <a href="#" class="card-post__category badge badge-pill badge-dark">이미지</a>
                    <div class="card-post__author d-flex">
                      <a href="#" class="card-post__author-avatar card-post__author-avatar--small" style="background-image: url('images/avatars/0.jpg');">Written by Anna Kunis</a>
                    </div>
                  </div>
                  <div class="card-body">
                    <h5 class="card-title">
                    	<th class="text-center"><a class="text-fiord-blue" href="#">제목</a></th>
                    </h5>
                    <table
					class="table table-bordered table-hover table-condensed text-center">
					<!-- 테이블 컬럼폭은 col-*-*계열로 설정 -->
					<tr>
						<th class="col-md-1 text-center">번호</th>
						<th class="col-md-1 text-center">아이디</th>
						<th class="col-md-1 text-center">작성자</th>
						<th class="col-md-1 text-center">좋아요</th>
					</tr>
					<!-- 
						<tr>
							<td colspan="4">등록된 게시물이 없어요</td>
						</tr>
					 -->
						<c:forEach items="${list}" var="item">
							<tr>
								<td>${item.rvNo}</td>								
								<td class="text-left"><a href="<c:url value="/Review/View.do?rvNo=${item.rvNo }"/>">${item.rvTitle }</a></td>
								<td><a href="<c:url value="/Member/Mypage.do?id=${item.id }"/>">${item.id }</a></td>
								<td>${item.name }</td>
								<td>${item.rvLikeCnt }</td>
							</tr>
						</c:forEach>
					
				</table>
                  </div>
                </div>
              </div>
            
            
            <div class="row">
              <div class="col-lg-6 col-sm-12 mb-4">
              
                <div class="card card-small card-post card-post--aside card-post--1">
                  <div class="card-post__image" style="background-image: url('images/content-management/5.jpeg');">
                    <a href="#" class="card-post__category badge badge-pill badge-info">Travel</a>
                    <div class="card-post__author d-flex">
                      <a href="#" class="card-post__author-avatar card-post__author-avatar--small" style="background-image: url('images/avatars/0.jpg');">Written by Anna Ken</a>
                    </div>
                  </div>
                  <div class="card-body">
                    <h5 class="card-title">
                      <a class="text-fiord-blue" href="#">게시물 불러오기</a>
                    </h5>
                    <p class="card-text d-inline-block mb-3">Conviction up partiality as delightful is discovered. Yet jennings resolved disposed exertion you off. Left did fond drew fat head poor jet pan flying over...</p>
                    <span class="text-muted">29 February 2019</span>
                  </div>
                </div>
              </div>
              </div>
            </div>
            
            
            
            
            
            
           <jsp:include page="/WEB-INF/views/adminTemplates/Footer.jsp"/>
        </main>
        </div>
    </div>
    
  </body>
</html>