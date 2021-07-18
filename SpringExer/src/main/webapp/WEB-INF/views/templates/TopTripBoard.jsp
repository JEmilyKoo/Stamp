<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--여기 시트 추가해야 함-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/css.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/NewPost.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/common-member-pages.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/member-likes-page.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script>
	function logout() {
		location.replace('<c:url value="/OneMemo/Auth/Logout.do"/>');
	}
</script>
<!-- 자바스크립트도 안 만들어놨다-->
<!-- 일단 시트를 여기에 만들었다-->
<style>
body {
	margin: 0;
	padding-top: 50px;
	text-decoration: none;
}

.navbar-default {
	min-height: 80px;
	max-height: 80px;
	vertical-align: middle;
	background-color: white;
	border: 0px;
}

.navbar-nav {
	display: flex;
	list-style: none;
	color: black;
	padding-left: 0;
	background-color: white;
}

.navbar-trip {
	display: flex;
	align-items: center;
	max-width: 100%;
}

.navbar-nav li {
	padding: 8px 12px;
}

.navbar-trip li {
	overflow: hidden;
	padding: 8px 0px;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.modal-content {
	width: 50vw;
	max-height: 100vw;
}

@media all and (max-width:920px) {
	.navbar-right li {
		padding: 8px 0px;
	}
	.naver-trip {
		color: red;
		padding: 0;
	}
	.navbar-trip li {
		overflow: hidden;
		padding: 8px 0px;
		text-overflow: ellipsis;
		white-space: nowrap;
	}
	.navbar-default {
		padding: 0px 0px;
	}
	.navbar-trip li:nth-child(even) {
		
	}
}

@media all and (max-width:768px) {
	.navbar-nav {
		padding: 0px 0px;
		margin: 0px 0px;
		width: 100vw;
	}
	.navbar-collapse {
		max-width: 100vw;
		padding: 0;
		margin: 0;
	}
}
</style>

<script>
	$(function() {
		//페이지 최초 로드시 내용 숨기기]
		$(".topActions").hide();
		$(".siteMapActions").hide();
		$(".moreButton").click(function() {
			console.log($(this).next().css('display'));
			//클릭한 제목의 내용이 숨겨져 있다면
			if ($(this).next().css('display') == 'none') {
				$(".dddd").css('transform', 'rotate(180deg)');//열린 모든 내용 숨기기
				$(".topActions").fadeOut(200);//열린 모든 내용 숨기기
				$(this).next().fadeIn(200);//해당 제목의 내용 보이기

			} else {
				$(".dddd").css('transform', 'rotate(0deg)');
				$(this).next().fadeOut(200);
			}
		});

		$(".siteMap").click(function() {
			console.log($(".siteMapActions").css('display'));
			//클릭한 제목의 내용이 숨겨져 있다면
			if ($(".siteMapActions").css('display') == 'none') {
				$(".siteMapActions").fadeIn(200);//해당 제목의 내용 보이기

			} else {
				$(".siteMapActions").fadeOut(200);
			}
		});

	});
</script>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top "
		style="width: 100%">
		<div>
			<div class="navbar-header">
				<!--화면 크기가 작을때 보여지는 네비게이션바(모바일용)  -->
				<button class="navbar-toggle collapsed" data-toggle="collapse"
					data-target="#collapse-menu">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

				<!-- CI표시 -->

				<!-- Sidebar -->
				<div class="w3-sidebar w3-bar-block w3-blue w3-animate-left"
					style="display: none; z-index: 5" id="mySidebar">

					<button class="w3-bar-item w3-button w3-xlarge categoryDropDown"
						onclick="w3_close()">카테고리 &times;</button>

					<div class="w3-white">
						<a href="#" class="w3-bar-item w3-button w3-hover-blue">서울</a> <a
							href="#" class="w3-bar-item w3-button w3-hover-blue">인천</a> <a
							href="#" class="w3-bar-item w3-button w3-hover-blue">경기</a> <a
							href="#" class="w3-bar-item w3-button w3-hover-blue">산</a> <a
							href="#" class="w3-bar-item w3-button w3-hover-blue">바다</a> <a
							href="#" class="w3-bar-item w3-button w3-hover-blue">강</a> <a
							href="#" class="w3-bar-item w3-button w3-hover-blue">유적지</a> <a
							href="#" class="w3-bar-item w3-button w3-hover-blue">도심</a> <a
							href="#" class="w3-bar-item w3-button w3-hover-blue">야경</a>
					</div>
				</div>

				<div class="w3-overlay" onclick="w3_close()" style="cursor: pointer"
					id="myOverlay"></div>




				<a class="navbar-brand" href="<c:url value="/"/>"> <img
					src="${pageContext.request.contextPath}/images/main/logo.png"
					width="auto" height="40px" />
				</a>
			</div>
			<!-- 화면 크기가 클때 상단에 보여지는 네비게이션바(데스크탑용) -->
			<div class="collapse navbar-collapse" id="collapse-menu">
				<!-- 네비게이션바에 폼 추가 -->

				<ul class="nav navbar-nav navbar-right ">

					<li><a href="#"><button class="siteMap">사이트맵</button></a>
					<li><a href="<c:url value="/Stamp/MapSearch.do"/>">지도 검색</a></li>

					<c:if test="${not empty sessionScope.id }" var="isLogin">
						<!-- 프로필 사진 시작 -->
						<div class="_33LjI avatar">

							<a target="_top" href="<c:url value="/Profile/Main.do"/>"
								style="text-decoration: none; vertical-align: top; color: white">
								<span class="_2iDLv avatar-image "> <!-- 아래 url 교체하면 프로필에 맞는 프사 획득 가능 -->
									<div class="_1wPNJ fluid-avatar-image topImage"
										style="background-image: url('${pageContext.request.contextPath}/images/profile/icon/icon${profile.openprf}.jpg');">
									</div>
							</span>
							</a>
						</div>

						<!--  세줄 버튼 선택 시작  -->
						<!--설명-->
						<div class="moreButtonDiv"
							style="postion: relative; top: 20px; left: 10px; padding-right: 20px">

							<button class="moreButton">
								<svg xmlns="http://www.w3.org/2000/svg" class="dddd" width="12"
									height="19" viewBox="0 0 19 19">
               <defs>
                  <path id="01.-default-down-a" class="ddd"
										d="M11.4964212,9.69999981 L6.06615558,14.8757976 C5.97794814,14.9598716 5.97794814,15.0961824 6.06615558,15.1802563 L6.54529666,15.6369443 C6.6335041,15.7210183 6.77651661,15.7210183 6.86472405,15.6369443 L12.9338444,9.85222916 C12.9779481,9.81019218 13,9.755096 13,9.69999981 C13,9.64490362 12.9779481,9.58980744 12.9338444,9.54777046 L6.86472405,3.76305527 C6.77651661,3.67898132 6.6335041,3.67898132 6.54529666,3.76305527 L6.06615558,4.21974331 C5.97794814,4.30381726 5.97794814,4.44012806 6.06615558,4.52420201 L11.4964212,9.69999981 Z"></path></defs>
                  <use xlink:href="#01.-default-down-a"
										transform="rotate(90, 9.5 9.5)"></use>
                  </svg>
							</button>


							<div class="topActions" role="menu">
								<div>
									<a style="text-decoration: none;"
										href="<c:url value="/Profile/Main.do"/>">

										<button class="actionButton" role="menuitem">
											<div
												style="display: grid; max-width: 500px; grid-template-columns: 1fr 180px; row-gap: 10px; column-gap: 10px;">
												<div style="text-align: left">Lv.
													${sessionScope.profile.lev}</div>
												<div>${sessionScope.nickName}님</div>
												<div style="text-align: left">${sessionScope.profile.exp}
													exp</div>
												<div>
													<progress id="bar" value="75" max="100"></progress>
												</div>
											</div>

										</button>
									</a> <a href="<c:url value="/Profile/Main.do"/>">
										<button class="actionButton" role="menuitem">
											<div class="postActions">
												<div class="icon">
													<svg xmlns="http://www.w3.org/2000/svg" width="24"
														height="24" viewBox="0 0 24 24">
                                          <path
															d="M15 21c0 1.598-1.392 3-2.971 3s-3.029-1.402-3.029-3h6zm.137-17.055c-.644-.374-1.042-1.07-1.041-1.82v-.003c.001-1.172-.938-2.122-2.096-2.122s-2.097.95-2.097 2.122v.003c.001.751-.396 1.446-1.041 1.82-4.668 2.709-1.985 11.715-6.862 13.306v1.749h20v-1.749c-4.877-1.591-2.193-10.598-6.863-13.306zm-3.137-2.945c.552 0 1 .449 1 1 0 .552-.448 1-1 1s-1-.448-1-1c0-.551.448-1 1-1zm-6.451 16c1.189-1.667 1.605-3.891 1.964-5.815.447-2.39.869-4.648 2.354-5.509 1.38-.801 2.956-.76 4.267 0 1.485.861 1.907 3.119 2.354 5.509.359 1.924.775 4.148 1.964 5.815h-12.903z" /></svg>
													<!--아이콘그림-->
												</div>
												<div class="ActionButtonText">알림</div>
											</div>
										</button>
									</a> <a href="<c:url value="/Profile/Main.do"/>">
										<button class="actionButton" role="menuitem">
											<div class="postActions">
												<div class="icon">
													<svg xmlns="http://www.w3.org/2000/svg" width="24"
														height="24" viewBox="0 0 24 24">
                                          <path
															d="M0 3v18h24v-18h-24zm6.623 7.929l-4.623 5.712v-9.458l4.623 3.746zm-4.141-5.929h19.035l-9.517 7.713-9.518-7.713zm5.694 7.188l3.824 3.099 3.83-3.104 5.612 6.817h-18.779l5.513-6.812zm9.208-1.264l4.616-3.741v9.348l-4.616-5.607z" /></svg>
												</div>
												<div class="ActionButtonText">DM</div>
											</div>
										</button>
									</a> <a href="<c:url value="/Profile/StampList.do"/>">
										<button class="actionButton" role="menuitem">
											<div class="postActions">
												<div class="icon">
													<svg xmlns="http://www.w3.org/2000/svg" width="24"
														height="24" viewBox="0 0 24 24">
                                          <path
															d="M13.931 10.245l2.021-2.042-2.778-.403-1.223-2.653-1.222 2.653-2.778.402 2.021 2.042-.492 2.903 2.471-1.391 2.472 1.391-.492-2.902zm-9.481 4.518c-.866-1.382-1.374-3.012-1.374-4.763 0-4.971 4.029-9 9-9s9 4.029 9 9c0 1.792-.53 3.458-1.433 4.861-.607-.31-1.228-.585-1.862-.819.812-1.143 1.295-2.536 1.295-4.042 0-3.86-3.141-7-7-7s-7 3.14-7 7c0 1.476.462 2.844 1.244 3.974-.636.225-1.26.488-1.87.789zm15.307 2.45l-2.334 3.322c-1.603-.924-3.448-1.464-5.423-1.473-1.975.009-3.82.549-5.423 1.473l-2.334-3.322c2.266-1.386 4.912-2.202 7.757-2.211 2.845.009 5.491.825 7.757 2.211zm4.243 2.787h-2.359l-.566 3c-.613-1.012-1.388-1.912-2.277-2.68l2.343-3.335c1.088.879 2.052 1.848 2.859 3.015zm-21.14-3.015l2.343 3.335c-.89.769-1.664 1.668-2.277 2.68l-.566-3h-2.36c.807-1.167 1.771-2.136 2.86-3.015z" /></svg>
												</div>
												<div class="ActionButtonText">스탬프 목록</div>
											</div>
										</button>
									</a> <a href="<c:url value="/Member/Logout.do"/>">
										<button class="actionButton" role="menuitem">
											<div class="postActions" data-hook="post-actions__report">
												<div class="icon">
													<svg xmlns="http://www.w3.org/2000/svg" width="24"
														height="24" viewBox="0 0 24 24">
                                          <path
															d="M14 19v-.083c-1.178.685-2.542 1.083-4 1.083-4.411 0-8-3.589-8-8s3.589-8 8-8c1.458 0 2.822.398 4 1.083v-2.245c-1.226-.536-2.576-.838-4-.838-5.522 0-10 4.477-10 10s4.478 10 10 10c1.424 0 2.774-.302 4-.838v-2.162zm4-9.592l2.963 2.592-2.963 2.592v-1.592h-8v-2h8v-1.592zm-2-4.408v4h-8v6h8v4l8-7-8-7z" /></svg>
												</div>
												<div class="ActionButtonText">로그아웃</div>
											</div>
										</button>
									</a>
								</div>
							</div>
						</div>
						<li></li>
						<!-- 세줄선택버튼 끝 -->
						<!--  프로필 사진 끝
            <li><a href="<c:url value="/Member/Logout.do"/>">Logout</a></li> -->
					</c:if>
					<c:if test="${not isLogin }">



						<li><a href="<c:url value="/Member/Login.do"/>">Login</a></li>
						<li><a href="<c:url value="/Member/Join.do"/>">JOIN</a></li>
					</c:if>


				</ul>
				<ul class="nav navbar-nav navbar-trip  ">

					<li><a href="<c:url value="/Review/TripBoard.do"/>">여행
							리뷰/정보</a></li>
					<li><span class="_3q5sF"> <img
							src="${pageContext.request.contextPath}/images/svg/arrow.svg" />
					</span></li>
					<li onclick="w3_open()"><a href="#">

							<button
								class="w3-button w3-white w3-border w3-border-blue w3-round-large">카테고리
								선택</button>



					</a></li>
				</ul>

				<!--  프로필 그거 그대로 퍼옴 -->

				<!-- 프로필 그거 그대로 퍼옴 -->
				<form class="form-inline navbar-trip" method="post"
					action="<c:url value='/Review/TripBoard.do'/>">
					<ul class="nav navbar-nav navbar-trip  ">

						<li>
							<!-- 아래 검색 -->





							<div class="form-group  ">
								<select name="searchColumn"
									style="background-color: white; border: none">
									<option value="title" class="w3-blue w3-hover-blue">제목</option>
									<option value="name" class="w3-blue w3-hover-white">작성자</option>
									<option value="content" class="w3-blue w3-hover-white">내용</option>
								</select>
							</div>
						</li>
						<li><input type="text" name="searchWord"
							class=" _1quPh  header-search-font   w3-border w3-round-large"
							style="padding: 8px 16px; width: 200px; position: relative;" />

						</li>
						<li>
							<button type="submit" class="searchButton">
								<img
									src="${pageContext.request.contextPath}/images/svg/search.svg" />
							</button>


						</li>

	
						<!-- 게시물 작성하기 버튼 id값(id=tripBoardCreateButton) 을 받아오면 됨 -->
						<li>
							<div
								class=" w3-button w3-blue w3-border-white  w3-round-large "
								style="max-width: 140px;">
								<a id=tripBoardCreateButton
									href="<c:url value="/Review/Write.do?nickName=${sessionScope.nickName}"/>">
									리뷰 작성 </a>
							</div>
						</li>
					</ul>
				</form>
			</div>
		</div>


		<div class="siteMapActions" role="menu" style="width: 100vw">





			<ul class="nav navbar-nav"
				style="background-color: white; width: 100%">

				<li><a href="<c:url value="/Stamp/CategoryEdit.do"/>">CategoryEdit</a></li>
				<li><a href="<c:url value="/Stamp/Category.do"/>">Category</a></li>
				<li><a href="<c:url value="/Stamp/CategoryCreate.do"/>">CategoryCreate</a></li>




			</ul>
			<ul class="nav navbar-nav"
				style="background-color: white; width: 100%">
				<li class="font_1"><a
					href="<c:url value="/Review/TripBoard.do"/>">TripBoard</a></li>
				<li><a href="<c:url value="/Review/ForumPost.do"/>">ForumPost</a></li>
				<li><a href="<c:url value="/Stamp/TripBoardEdit.do"/>">TripBoardEdit</a></li>
				<li><a href="<c:url value="/Stamp/TripBoardReport.do"/>">TripBoardReport</a></li>
				<li><a href="<c:url value="/Stamp/NewPost.do"/>">NewPost</a></li>
				<li><a href="<c:url value="/Stamp/ForumPostCreate.do"/>">ForumPostCreate</a></li>




			</ul>
			<ul class="nav navbar-nav "
				style="background-color: white; width: 100%">
				<li class="font_1"><a href="<c:url  value="/Profile/Main.do"/>">프로필</a></li>
				<li><a href="<c:url value="/Profile/StampList.do"/>">스탬프</a></li>
				<li><a href="<c:url value="/Stamp/Badge.do"/>">뱃지</a></li>
				<li><a href="<c:url value="/Profile/Insert.do"/>">프로필 생성하기</a></li>
				<li><a href="<c:url value="/Profile/Review.do"/>">올린 리뷰</a></li>
				<li><a href="<c:url value="/Profile/Comment.do"/>">올린 댓글</a></li>
				<li><a href="<c:url value="/Profile/Like.do"/>">즐겨 찾기</a></li>
				<li><a href="<c:url value="/Profile/Alarm.do"/>">알림</a></li>
				<li><a href="<c:url value="/Profile/AlarmSetting.do"/>">알림
						설정</a></li>
			</ul>

			<ul class="nav navbar-nav "
				style="background-color: white; width: 100%">
				<li class="font_1"><a
					href="<c:url value="/Admin/Admin.do?pageName=analysisPage"/> ">관리자페이지</a></li>
				<li><a href="<c:url value="/Stamp/guide.do"/>">Guide</a></li>
				<li><a href="<c:url value="/Stamp/Test.do"/>">Test</a></li>

			</ul>
		</div>
	</nav>




	<script>
		function w3_open() {
			document.getElementById("mySidebar").style.display = "block";
			document.getElementById("myOverlay").style.display = "block";
		}

		function w3_close() {
			document.getElementById("mySidebar").style.display = "none";
			document.getElementById("myOverlay").style.display = "none";
		}
	</script>

</body>
</html>