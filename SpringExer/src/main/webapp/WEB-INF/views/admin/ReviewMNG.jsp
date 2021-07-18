<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js h-100" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>관리자 페이지</title>


	<jsp:include page="/WEB-INF/views/adminTemplates/Left.jsp" />

	<jsp:include page="/WEB-INF/views/adminTemplates/Top.jsp" />
	<main
		class="main-content col-lg-10 col-md-9 col-sm-12 p-0 offset-lg-2 offset-md-3">
		<div class="color-switcher-toggle animated pulse infinite">
			<i class="material-icons">settings</i>
		</div>
		<div class="container-fluid">
			<div class="row">
				<!-- Main Sidebar -->
				<!-- End Main Sidebar -->
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


						<!-- 테이블 컬럼폭은 col-*-*계열로 설정 -->

						<!-- 
						<tr>
							<td colspan="4">등록된 게시물이 없어요</td>
						</tr>
					 -->
						<c:if test="${empty list }" var="isEmpty">
							<th colspan="12">게시글이 없어요</th>
						</c:if>
						<c:if test="${not isEmpty }">

							<c:forEach items="${list }" var="item" varStatus="loop">

								<div class="col-lg-4 col-md-12 col-sm-6">
									<div class="card card-small card-post card-post--1">

										<div class="card-post__image"
											style="background-image: url('images/content-management/1.jpeg');">
											
											<div class="card-post__author d-flex">
												
											</div>
										</div>

										<div class="card-body">

											<h5 class="card-title">
												<th class="text-center"><a class="text-fiord-blue"
													href="<c:url value="/Review/TripBoard.do?rvNo=${item.rvNo }"/>">
														${item.rvTitle }</a></th>
											</h5>

											<h5 class="card-title">
												<th class="text-center"><a class="text-fiord-blue"
													href="<c:url value="/Review/TripBoard.do?rvNo=${item.rvNo }"/>">
														${item.rvCtt }</a></th>
											</h5>


											<table
												class="table table-bordered table-hover table-condensed text-center">

												<tr>
													<th class="col-md-1 text-center">번호</th>
													<th class="col-md-1 text-center">닉네임</th>
													<th class="col-md-1 text-center">좋아요</th>
													<th class="col-md-1 text-center">태그</th>
													<th class="col-md-1 text-center">작성일</th>
												</tr>

												<tbody>
													<tr>
														<td class="text-left"><a
															href="<c:url value="/Review/ForumPost.do?rvNo=${item.rvNo }"/>">${item.rvNo }
														</a></td>
														<td>${item.nickName }</td>
														<td>${item.rvLikeCnt }</td>
														<td>${item.rvCategory1 },${item.rvCategory2 }</td>
														<td>${item.rvDate }</td>
													</tr>
												</tbody>


											</table>
										</div>

									</div>
								</div>

							</c:forEach>
						</c:if>





						
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
</html>