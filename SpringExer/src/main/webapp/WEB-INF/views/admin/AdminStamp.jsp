<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js h-100" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>관리자 페이지</title>
<meta name="description"
	content="A high-quality &amp; free Bootstrap admin dashboard template pack that comes with lots of templates and components.">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
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

<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" id="main-stylesheet" data-version="1.1.0"
	href="<c:url value="/resources/styles/shards-dashboards.1.1.0.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/styles/extras.1.1.0.min.css"/>">
<script async defer src="https://buttons.github.io/buttons.js"></script>
</head>
<body class="h-100">
	<div class="color-switcher-toggle animated pulse infinite">
		<i class="material-icons">settings</i>
	</div>
	<div class="container-fluid">
		<div class="row">
			<!-- Main Sidebar -->
			<jsp:include page="/WEB-INF/views/adminTemplates/Left.jsp" />
			<!-- End Main Sidebar -->
			<jsp:include page="/WEB-INF/views/adminTemplates/Top.jsp" />
			<!-- / .main-navbar -->
			<div class="main-content-container container-fluid px-4">
				<!-- Page Header -->
				<div class="page-header row no-gutters py-4">
					<div class="col-12 col-sm-4 text-center text-sm-left mb-0">
						<span class="text-uppercase page-subtitle">Admin</span>
						<h3 class="page-title">스탬프 관리</h3>
					</div>
				</div>
				<!-- End Page Header -->
				<div class="col-lg col-md-6 col-sm-6 mb-4">
					<div class="stats-small stats-small--1 card card-small">
						<div class="card-body p-0 d-flex">
							<div class="d-flex flex-column m-auto">
								<table
									class="table table-bordered table-hover table-condensed text-center">
									<tr>
										<th class="col-md-1 text-center">스탬프번호</th>
										<th class="col-md-1 text-center">리뷰글번호</th>
										<th class="col-md-3 text-center">스탬프 등록일</th>
										<th class="col-md-0.5 text-center">만료 유무</th>
										<th class="col-md-3.5 text-center">수정, 삭제</th>
									</tr>
									<c:if test="${empty dto }" var="isEmpty">
										<tr>
											<td colspan="5">스탬프가 없어요</td>
										</tr>
									</c:if>
									<c:if test="${not isEmpty }">
										<c:forEach items="${dto }" var="item" varStatus="loop">
											<tr>

												<td>${item.stNo }</td>
												<td><a id=""
													href="<c:url value="/AdminStamp?rvNo=${item.rvNo }"/>">${item.rvNo }
												</a></td>
												<td>${item.stDate }</td>
												<td>${item.stIsExpired }</td>
												<td>
													<button class="float-right">
														<a
															href="<c:url value="/Stamp/deleteAdminStamp.do?stNo=${item.stNo }"/>">삭제</a>
													</button>&nbsp;
													<button class="float-right">
														<a
															href="<c:url value="/Stamp/updateAdminStamp.do?stNo=${item.stNo }"/>">수정</a>
													</button>
												</td>
											</tr>
										</c:forEach>
									</c:if>
								</table>
							</div>
						</div>
					</div>


				</div>
			</div>

			<!-- End Top Referrals Component -->
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/adminTemplates/Footer.jsp" />
	</main>
	</div>
	</div>


</body>
</html>