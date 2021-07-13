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
                <span class="text-uppercase page-subtitle">팔로우,스탬프,게시글 관리</span>
                <h3 class="page-title">회원정보 관리 페이지</h3>
              </div>
            </div>
            
            
            <!-- End Page Header -->
            <div class="row">
            
            <!-- 예시 만들기 -->
            
                    <tbody>
				<c:if test="${empty dto }" var="isEmpty">
					<tr class="row">
						<th colspan="12">회원정보가 없어요</th>
					</tr>
				</c:if>
				<c:if test="${not isEmpty }">
					<c:forEach items="${dto }" var="item" varStatus="loop">
						<tr>
						<div class="col-lg-3 col-md-6 col-sm-12 mb-4">
                <div class="card card-small card-post card-post--1">
                  
                  <div class="card-body">
							<td class="col-md-2 text-center">프로필 이미지${item.prfImage }</td><br>
							<th scope="row" class="col-md-2 text-center">아이디:${item.id }</th><br>
							<!--  누르면 프로필 페이지 보기?
							<td class="col-md-2 text-center"><a id=""
								href="<c:url value="/MemberMNG?rvid=${item.id }"/>">${item.id }
							</a></td> 
							 -->
							<td class="col-md-2 text-center">닉네임:${item.nickName }</td><br>
							<td class="col-md-2 text-center">이메일:${item.mail }</td><br>
							<td class="col-md-1 text-center">성별:${item.gender }</td><br>
							<td class="col-md-2 text-center">생일:${item.birth }</td><br>
							<td class="col-md-2 text-center">전환번호:${item.phone }</td><br>
							<td class="col-md-1 text-center">여행성향:${item.trvprpns }</td>
							<td class="col-md-1 text-center">
									<a href="<c:url value="/Member/deleteAdminMember.do?id=${item.id }"/>"><button>삭제</button></a>
								
							</td>
							</div>
                </div>
              </div>
							
						</tr>
					</c:forEach>
				</c:if>
				</tbody>

<!--  --------------------------------------------------------------------------------------------------------- -->


                              
            <table
				class="table table-hover table-bordered table-condensed text-center" >
				<thead>
				<tr>
					<th class="col-md-1 text-center">프로필 이미지</th>
					<th class="col-md-2 text-center">아이디</th>
					<th class="col-md-2 text-center">닉네임</th>
					<th class="col-md-2 text-center">이메일</th>
					<th class="col-md-1 text-center">성별</th>
					<th class="col-md-2 text-center">생일</th>
					<th class="col-md-2 text-center">폰번호</th>
					<th class="col-md-1 text-center">여행성향</th>
				</tr>
				</thead>
				
				<tbody>
				<c:if test="${empty dto }" var="isEmpty">
					<tr class="row">
						<th colspan="12">회원정보가 없어요</th>
					</tr>
				</c:if>
				<c:if test="${not isEmpty }">
					<c:forEach items="${dto }" var="item" varStatus="loop">
						<tr>
							<td class="col-md-2 text-center">${item.prfImage }</td>
							<th scope="row" class="col-md-2 text-center">${item.id }</th>
							<!--  누르면 프로필 페이지 보기?
							<td class="col-md-2 text-center"><a id=""
								href="<c:url value="/MemberMNG?rvid=${item.id }"/>">${item.id }
							</a></td> 
							 -->
							<td class="col-md-2 text-center">${item.nickName }</td>
							<td class="col-md-2 text-center">${item.mail }</td>
							<td class="col-md-1 text-center">${item.gender }</td>
							<td class="col-md-2 text-center">${item.birth }</td>
							<td class="col-md-2 text-center">${item.phone }</td>
							<td class="col-md-1 text-center">${item.trvprpns }</td>
							<td class="col-md-1 text-center">
									<a href="<c:url value="/Member/deleteAdminMember.do?id=${item.id }"/>"><button>삭제</button></a>
								
							</td>
						</tr>
					</c:forEach>
				</c:if>
				</tbody>
				
			</table>
            
          </div>
          <jsp:include page="/WEB-INF/views/adminTemplates/Footer.jsp"/>
        </div>
    </div>
    
  </body>
</html>
