<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- alert창 꾸미기 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

<title>찍GO</title>
<meta name="description"
	content="Demo of the tutorial on how to re-create a similar effect of the takeitapp.co website." />
<meta name="keywords"
	content="responsive, grid, polaroid, animation, intro, web design, tutorial, responsive images, srcset" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="favicon.ico">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/css.css">
<link href='https://fonts.googleapis.com/css?family=Caveat:400,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/normalize.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/square-loader.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/demo.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/component.css" />


<script>
	document.documentElement.className = 'js';
</script>
</head>
<body style="overflow-x:hidden;">

	<jsp:include page="/WEB-INF/views/templates/Top.jsp" />
	<div class="view">
		<header class="header"> </header>
		<section class="page page--mover">
			<div class="la-square-loader">
				<div></div>
			</div>
		</section>
		<div class="title-wrap">
			<div class="title title--main">
				<img src="${pageContext.request.contextPath}/images/main/logo.png"
					width="300px" alt="Some image" />

			</div>
			<p class="title title--sub">스탬프로 여행하세요</p>
		</div>
		<section class="page page--static">
			<div class="page__title">
				<h2 class=" font_5 page__title-main color_5">추천 리뷰</h2>
				<p class="page__title-sub font_7">
					카테고리별 <a href="<c:url value="/Review/TripBoard.do"/>">인기 리뷰</a>를 확인하세요
				</p>
			</div>
			<ul class="grid">

				<!-- 카드 시작 -->
				<li class="grid__item">
					<div class="grid__link">
						<div class="mainImg">
							
<a target="_top" style="text-decoration: none;"
														href="<c:url value="/Review/ForumPost.do?rvNo=501"/>">
									 <img
								class="grid__img" id="imgHover"
								src="${pageContext.request.contextPath}/images/main/photos/1.jpg" /></a>
						</div>

						<div class="mainImgTop" style="height:30px">
							<div style="position: relative; bottom: 250px; left: 120px">
								<div class="_33LjI avatar">

									<a target="_top" href="<c:url value="/Profile/Main/NickName.do?nickName=구구구구"/>"
										style="text-decoration: none; vertical-align: top; color: white">
											<span class="_2iDLv avatar-image "> <!-- 아래 url 교체하면 프로필에 맞는 프사 획득 가능 -->
											<div class="_1wPNJ fluid-avatar-image topImage"
												style=" vertical-align: top; 	background-image: url('${pageContext.request.contextPath}/images/profile/icon/icon1.jpg');">
											</div>
									</span><span
										style="vertical-align: top; position: relative; left: 10px">구구구</span>
									</a>
								</div>
							</div>

							<div class="mainStamp">
								<img
									src="${pageContext.request.contextPath}/images/main/stamp.png"
									width="24px" height="24px" />245
							</div>


						</div>
<a target="_top" style="text-decoration: none;" href="<c:url value="/Review/ForumPost.do?rvNo=501"/>">
													
								<div class="grid__item-title"
									style="position: relative; bottom: 35px;">
									<h2 class="font_11">북한산 등반기</h2>
							</a>
							<div class="mainHashTagDiv">
								<a href="<c:url value="/Stamp/MapSearch.do"/>">
									<h3>#서울</h3>
								</a> <a href="<c:url value="/Stamp/MapSearch.do"/>">
									<h3>#산</h3>
								</a>
							</div>


					</div>
				</li>

				<!-- 카드 끝 -->
				
				<!-- 카드 시작 -->
				<li class="grid__item">
					<div class="grid__link">
						<div class="mainImg">
							<a target="_top" style="text-decoration: none;" href="<c:url value="/Review/ForumPost.do?rvNo=502"/>">
 <img
								class="grid__img" id="imgHover"
								src="${pageContext.request.contextPath}/images/main/photos/2.jpg" /></a>
						</div>

						<div class="mainImgTop" style="height:30px">
							<div style="position: relative; bottom: 250px; left: 120px">
								<div class="_33LjI avatar">

									<a target="_top" href="<c:url value="/Profile/Main/NickName.do?nickName=현정이"/>"
										style="text-decoration: none; vertical-align: top; color: white">
										<span class="_2iDLv avatar-image "> <!-- 아래 url 교체하면 프로필에 맞는 프사 획득 가능 -->
											<div class="_1wPNJ fluid-avatar-image topImage"
												style=" vertical-align: top; 	background-image: url('${pageContext.request.contextPath}/images/profile/icon/icon1.jpg');">
											</div>
									</span><span
										style="vertical-align: top; position: relative; left: 10px">현정이</span>
									</a>
								</div>
							</div>

							<div class="mainStamp">
								<img
									src="${pageContext.request.contextPath}/images/main/stamp.png"
									width="24px" height="24px" />311
							</div>


						</div>

					<a target="_top" style="text-decoration: none;" href="<c:url value="/Review/ForumPost.do?rvNo=502"/>">

								<div class="grid__item-title"
									style="position: relative; bottom: 35px;">
									<h2 class="font_11">영종도 바다 여행기</h2>
							</a>
							<div class="mainHashTagDiv">
								<a href="<c:url value="/Stamp/MapSearch.do"/>">
									<h3>#인천</h3>
								</a> <a href="<c:url value="/Stamp/MapSearch.do"/>">
									<h3>#바다</h3>
								</a>
							</div>


					</div>
				</li>

				<!-- 카드 끝 -->
				<!-- 카드 시작 -->
				<li class="grid__item">
					<div class="grid__link">
						<div class="mainImg">
							<a target="_top" style="text-decoration: none;" href="<c:url value="/Review/ForumPost.do?rvNo=503"/>">
<img
								class="grid__img" id="imgHover"
								src="${pageContext.request.contextPath}/images/main/photos/3.jpg" /></a>
						</div>

						<div class="mainImgTop" style="height:30px">
							<div style="position: relative; bottom: 250px; left: 120px">
								<div class="_33LjI avatar">

									<a target="_top" href="<c:url value="/Profile/Main/NickName.do?nickName=대민"/>"
										style="text-decoration: none; vertical-align: top; color: white">
										<span class="_2iDLv avatar-image "> <!-- 아래 url 교체하면 프로필에 맞는 프사 획득 가능 -->
											<div class="_1wPNJ fluid-avatar-image topImage"
												style=" vertical-align: top; 	background-image: url('${pageContext.request.contextPath}/images/profile/icon/icon1.jpg');">
											</div>
									</span><span
										style="vertical-align: top; position: relative; left: 10px">대민</span>
									</a>
								</div>
							</div>

							<div class="mainStamp">
								<img
									src="${pageContext.request.contextPath}/images/main/stamp.png"
									width="24px" height="24px" />324
							</div>


						</div>

							<a target="_top" style="text-decoration: none;" href="<c:url value="/Review/ForumPost.do?rvNo=503"/>">

								<div class="grid__item-title"
									style="position: relative; bottom: 35px;">
									<h2 class="font_11">임진강에 다녀와서</h2>
							</a>
							<div class="mainHashTagDiv">
								<a href="<c:url value="/Stamp/MapSearch.do"/>">
									<h3>#경기</h3>
								</a> <a href="<c:url value="/Stamp/MapSearch.do"/>">
									<h3>#강</h3>
								</a>
							</div>


					</div>
				</li>

				<!-- 카드 끝 -->
				<!-- 카드 시작 -->
				<li class="grid__item">
					<div class="grid__link">
						<div class="mainImg">
							<a target="_top" style="text-decoration: none;" href="<c:url value="/Review/ForumPost.do?rvNo=504"/>">
 <img
								class="grid__img" id="imgHover"
								src="${pageContext.request.contextPath}/images/main/photos/4.jpg" /></a>
						</div>

						<div class="mainImgTop" style="height:30px">
							<div style="position: relative; bottom: 250px; left: 120px">
								<div class="_33LjI avatar">

									<a target="_top" href="<c:url value="/Profile/Main/NickName.do?nickName=쏭"/>"
										style="text-decoration: none; vertical-align: top; color: white">
										<span class="_2iDLv avatar-image "> <!-- 아래 url 교체하면 프로필에 맞는 프사 획득 가능 -->
											<div class="_1wPNJ fluid-avatar-image topImage"
												style=" vertical-align: top; 	background-image: url('${pageContext.request.contextPath}/images/profile/icon/icon1.jpg');">
											</div>
									</span><span
										style="vertical-align: top; position: relative; left: 10px">쏭</span>
									</a>
								</div>
							</div>

							<div class="mainStamp">
								<img
									src="${pageContext.request.contextPath}/images/main/stamp.png"
									width="24px" height="24px" />653
							</div>


						</div>

						<a target="_top" style="text-decoration: none;" href="<c:url value="/Review/ForumPost.do?rvNo=504"/>">

								<div class="grid__item-title"
									style="position: relative; bottom: 35px;">
									<h2 class="font_11">광화문에 가다</h2>
							</a>
							<div class="mainHashTagDiv">
								<a href="<c:url value="/Stamp/MapSearch.do"/>">
									<h3>#서울</h3>
								</a> <a href="<c:url value="/Stamp/MapSearch.do"/>">
									<h3>#유적지</h3>
								</a>
							</div>


					</div>
				</li>

				<!-- 카드 끝 -->
				<!-- 카드 시작 -->
				<li class="grid__item">
					<div class="grid__link">
						<div class="mainImg">
						<a target="_top" style="text-decoration: none;" href="<c:url value="/Review/ForumPost.do?rvNo=505"/>">
<img
								class="grid__img" id="imgHover"
								src="${pageContext.request.contextPath}/images/main/photos/5.jpg" /></a>
						</div>

						<div class="mainImgTop" style="height:30px">
							<div style="position: relative; bottom: 250px; left: 120px">
								<div class="_33LjI avatar">

									<a target="_top" href="<c:url value="/Profile/Main/NickName.do?nickName=상경"/>"
										style="text-decoration: none; vertical-align: top; color: white">
										<span class="_2iDLv avatar-image "> <!-- 아래 url 교체하면 프로필에 맞는 프사 획득 가능 -->
											<div class="_1wPNJ fluid-avatar-image topImage"
												style=" vertical-align: top; 	background-image: url('${pageContext.request.contextPath}/images/profile/icon/icon1.jpg');">
											</div>
									</span><span
										style="vertical-align: top; position: relative; left: 10px">상경 </span>
									</a>
								</div>
							</div>

							<div class="mainStamp">
								<img
									src="${pageContext.request.contextPath}/images/main/stamp.png"
									width="24px" height="24px" />442
							</div>


						</div>

						<a target="_top" style="text-decoration: none;" href="<c:url value="/Review/ForumPost.do?rvNo=505"/>">

								<div class="grid__item-title"
									style="position: relative; bottom: 35px;">
									<h2 class="font_11">차이나 타운 맛집 인정</h2>
							</a>
							<div class="mainHashTagDiv">
								<a href="<c:url value="/Stamp/MapSearch.do"/>">
									<h3>#인천</h3>
								</a> <a href="<c:url value="/Stamp/MapSearch.do"/>">
									<h3>#도심</h3>
								</a>
							</div>


					</div>
				</li>

				<!-- 카드 끝 -->
				<!-- 카드 시작 -->
				<li class="grid__item">
					<div class="grid__link">
						<div class="mainImg">
							<a target="_top" style="text-decoration: none;" href="<c:url value="/Review/ForumPost.do?rvNo=506"/>">
 <img
								class="grid__img" id="imgHover"
								src="${pageContext.request.contextPath}/images/main/photos/6.jpg" /></a>
						</div>

						<div class="mainImgTop" style="height:30px">
							<div style="position: relative; bottom: 250px; left: 120px">
								<div class="_33LjI avatar">

									<a target="_top" href="<c:url value="/Profile/Main/NickName.do?nickName=범이"/>"
										style="text-decoration: none; vertical-align: top; color: white">
										<span class="_2iDLv avatar-image "> <!-- 아래 url 교체하면 프로필에 맞는 프사 획득 가능 -->
											<div class="_1wPNJ fluid-avatar-image topImage"
												style=" vertical-align: top; 	background-image: url('${pageContext.request.contextPath}/images/profile/icon/icon1.jpg');">
											</div>
									</span><span
										style="vertical-align: top; position: relative; left: 10px"> 범이</span>
									</a>
								</div>
							</div>

							<div class="mainStamp">
								<img
									src="${pageContext.request.contextPath}/images/main/stamp.png"
									width="24px" height="24px" />231
							</div>


						</div>

							<a target="_top" style="text-decoration: none;" href="<c:url value="/Review/ForumPost.do?rvNo=506"/>">
">
								<div class="grid__item-title"
									style="position: relative; bottom: 35px;">
									<h2 class="font_11">서울랜드 야경포인트</h2>
							</a>
							<div class="mainHashTagDiv">
								<a href="<c:url value="/Stamp/MapSearch.do"/>">
									<h3>#경기</h3>
								</a> <a href="<c:url value="/Stamp/MapSearch.do"/>">
									<h3>#야경</h3>
								</a>
							</div>


					</div>
				</li>

				<!-- 카드 끝 -->
				

			</ul>

		</section>
		<div class="device">
			<div class="device__screen"></div>
		</div>
		<button id="showgrid" class="button button--view"
			aria-label="Show me more">
			<svg width="100%" height="100%" viewBox="0 0 310 177"
				preserveAspectRatio="xMidYMid meet">
					<path fill="#FFFFFF"
					d="M159.875,174.481L306.945,27.41c2.93-2.929,2.93-7.678,0-10.606L292.803,2.661c-1.406-1.407-3.314-2.197-5.303-2.197c-1.989,0-3.896,0.79-5.303,2.197L154.572,130.287L26.946,2.661c-1.406-1.407-3.314-2.197-5.303-2.197c-1.989,0-3.897,0.79-5.303,2.197L2.197,16.804C0.733,18.269,0,20.188,0,22.107s0.732,3.839,2.197,5.303l147.071,147.071C152.197,177.411,156.945,177.411,159.875,174.481L159.875,174.481z" />
				</svg>
		</button>

	</div>
	<!-- /view -->
	<script src="${pageContext.request.contextPath}/js/classie.js"></script>
	<script src="${pageContext.request.contextPath}/js/dynamics.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/imagesloaded.pkgd.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/main.js"></script>
	
</body>	
</html>
