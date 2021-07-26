
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/common/IsLogin.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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



<!--  -->
<link
	href="https://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.0/jquery.js"></script>
<script
	src="https://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.js"
	defer></script>


<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script>
	function logout() {
		location.replace('<c:url value="/OneMemo/Auth/Logout.do"/>');
	}
</script>



<style>
#img {
	margin: 20px 0;
}
</style>
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
<style>
/* itrame 스타일 설정*/
/*1번*/
/*	iframe{
		width: 600px;
		height: 100px;
		border: 1px;
		border-style: solid;
	}
	*/

/*2번*/
.fileDrop {
	width: 600px;
	height: 200px;
	border: 1px dotted blue;
}

small {
	margin-left: 3px;
	font-weight: bold;
	color: gray;
}
</style>
</head>
<body>
	<form id="testForm" class="form-horizontal"
		enctype="multipart/form-data" method="post"
		action="<c:url value='/Review/Write.do'/>">


		<nav class="navbar navbar-default navbar-fixed-top "
			style="width: 100%">

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
                  onclick="w3_close()">카테고리 선택 &times;</button>


               
               
               
               <select name="rvCategory1" id="category1"  class="w3-blue categoryDropDown " style="border:none" >
               
               
                        <option value="" class="   w3-blue categoryDropDown  " style="padding: 10px"> 지역별  선택 </option>
                        <option  class="w3-white w3-bar-item w3-button w3-hover-blue" value="서울" name="rvCategory1"
                           <c:if test="${fn:contains(param.category,'서울') }">selected</c:if>>서울</option>
                        <option  class="w3-white w3-bar-item w3-button w3-hover-blue" value="인천" name="rvCategory1"
                           <c:if test="${fn:contains(param.category,'인천') }">selected</c:if>>인천</option>
                        <option  class="w3-white w3-bar-item w3-button w3-hover-blue"value="경기" name="rvCategory1"
                           <c:if test="${fn:contains(param.category,'경기') }">selected</c:if>>경기</option>
                     </select>
                     
                     
               <select name="rvCategory2" id="category2" class="w3-blue categoryDropDown " style="border:none">
                        <option value="" class="   w3-blue categoryDropDown  " style="padding: 10px" >여행지 선택</option>
                        <option value="산"  class="w3-white w3-bar-item w3-button w3-hover-blue" name="rvCategory2"
                           <c:if test="${fn:contains(param.category,'산') }">selected</c:if>>산</option>
                        <option value="바다"  class="w3-white w3-bar-item w3-button w3-hover-blue"  name="rvCategory2"
                           <c:if test="${fn:contains(param.category,'바다') }">selected</c:if>>바다</option>
                        <option value="강" class="w3-white w3-bar-item w3-button w3-hover-blue"  name="rvCategory2"
                           <c:if test="${fn:contains(param.category,'강') }">selected</c:if>>강</option>
                        <option value="유적지" class="w3-white w3-bar-item w3-button w3-hover-blue"  name="rvCategory2"
                           <c:if test="${fn:contains(param.category,'유적지') }">selected</c:if>>유적지</option>
                        <option value="도심" class="w3-white w3-bar-item w3-button w3-hover-blue"   name="rvCategory2"
                           <c:if test="${fn:contains(param.category,'도심') }">selected</c:if>>도심</option>
                        <option value="야경" class="w3-white w3-bar-item w3-button w3-hover-blue"   name="rvCategory2"
                           <c:if test="${fn:contains(param.category,'야경') }">selected</c:if>>야경</option>
                     </select>      
                     
               
               
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

								<div
									class="w3-button w3-white w3-border w3-border-blue w3-round-large">카테고리
									선택</div>

						</a></li>
					</ul>

					<!-- 프로필 그거 그대로 퍼옴 -->
					<ul class="nav navbar-nav navbar-trip  ">




						<!-- 게시물 작성하기 버튼 id값(id=tripBoardCreateButton) 을 받아오면 됨 -->
						<li><a
							href="<c:url value="/Review/Write.do?nickName=${sessionScope.nickName}"/>">

								<div class="_3SBFF undefined LTwPD sameS "
									style="max-width: 140px;">
									<button id=tripBoardCreateButton type="submit"
										class="w3-button w3-blue w3-border-white  w3-round-large"
										aria-label="게시물 작성하기" aria-haspopup="true"
										aria-expanded="false">등록하기</button>

								</div>
						</a></li>
					</ul>

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
					<li class="font_1"><a
						href="<c:url  value="/Profile/Main.do"/>">프로필</a></li>
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
					<li><a href="<c:url value="/Stamp/Test.do"/>">Test</a></li>

				</ul>
			</div>
		</nav>






		<!-- 네비게이션 시작 -->
		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a1543cd28a4530c70758ba5ea975b33a"></script>

		<script
			src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

		<!-- 네비게이션 끝 -->
		<!-- 실제 내용 시작 -->

		<div class="container" style="width: 1480px;">
			<div style="display: flex; padding-top: 80px">
				<div style="width: 500px;">
					<div id="map"
						style="width: 500px; height: 400px; background-color: yellow;"></div>
					<div id="clickLatlng"></div>
					<input type="hidden" name="rvLat" /> <input type="hidden"
						name="rvLng" />
					<!-- 씨큐리티 적용:csrf취약점 방어용 -->


				</div>

				<div
					style="width: 980px; padding-left: 20px; margin: auto 0; align-items: center;">
					<c:if test="${! empty noText }">
						<div class="col-xs-offset-1 col-xs-6 alert alert-warning fade in"
							style="z-index: 50">
							<button class="close" data-dismiss="alert">
								<span>×</span>
							</button>
							${noText }
						</div>
					</c:if>
					<div class="form-group" style="display: flex; flex: auto">
						<div
							style="max-width: 200px; min-width: 100px; height: 36px; margin: 5px;"
							class="w3-button w3-white w3-border w3-border-blue w3-round-large">제목</div>
						<div
							style="max-width: 700px; min-width: 400px; margin: 5px; flex: auto">
							<input type="text" class="form-control" name="rvTitle"
								placeholder="제목을 입력하세요">
						</div>
					</div>
					<div class="form-group" style="display: flex; flex: auto">
						<div
							style="max-width: 200px; min-width: 100px; margin: 5px; height: 36px"
							class="w3-button w3-white w3-border w3-border-blue w3-round-large">내용</div>
						<!-- 중첩 컬럼 사용 -->
						<div
							style="max-width: 700px; min-width: 400px; margin: 5px; flex: auto">
							<textarea id="summernote" class="form-control summernote"
								name="rvCtt" rows="5" placeholder="내용 입력하세요"></textarea>
						</div>


					</div>

					<!-- 중첩 컬럼 사용 -->


				</div>
			</div>







		</div>
		<!-- <form  action="/springBoard/file/upload.do" method="post"  enctype="multipart/form-data">
             <input type="file" name="file"/>
          -->


	</form>


	<!-- target을 지정한 곳으로 form data가 이동 -->
	<!--111 
<form id="form1" target="iframePhoto" action="<c:url value='/upload/uploadForm'/>" method="post" enctype="multipart/form-data">
	<input type="file" name="file" id="file">
				<input type="submit" value="업로드">
</form>
 -->


	<!--<div type="hidden" class="uploadedList"></div>-->
	<!-- form data가 이곳으로 이동 -->
	<!-- <iframe name="iframePhoto"></iframe> -->

	<!--  <h2>AJAx File Upload</h2>-->
	<!-- 파일을 업로드할 영역 -->
	<!-- <div  type="hidden" class="fileDrop"></div> -->
	<!-- 업로드된 파일 목록 -->
	<!--  <div class="uploadedList"></div>-->

	<script>
		/* 4444 번째
			$(document).ready(function() {
				$(".fileDrop").on("dragenter dragover",function(event){
					event.preventDefault();
				});
				$(".fileDrop").on("drop",function(event) {
					event.preventDefault();
					//드래그된 파일의 정보
					var files = event.originalEvent.dataTransfer.files;
					//첫번째 파일
					var file = files[0];
					//콘솔에서 파일정보 확인
					console.log(file);

					//ajax로 전달할 폼 객체
					var formData = new FormData();
					//폼 객체에 파일추가, append("변수명",값)
					formData.append("file", file);
					
					
					$.ajax({
						type : "post",
						url : "<c:url value="/upload/uploadAjax"/>",
						data : formData,
						//
						dataType : "text",
						processData : false,
						contentType : false,
						success : function(data) {
							alert(data);
						},
						error:function(){
			      			alert("에러발생");
						}
						
					});
				});
			});
		 */

		//파일업로드 썸네일 올린 거 뿌려주는거
		$(document)
				.ready(
						function() {
							$(".fileDrop").on("dragenter dragover",
									function(event) {
										event.preventDefault();
									});
							$(".fileDrop")
									.on(
											"drop",
											function(event) {
												event.preventDefault();
												//드래그된 파일의 정보
												var files = event.originalEvent.dataTransfer.files;
												//첫번째 파일
												var file = files[0];
												//콘솔에서 파일정보 확인
												console.log(file);

												//ajax로 전달할 폼 객체
												var formData = new FormData();
												//폼 객체에 파일추가, append("변수명",값)
												formData.append("file", file);

												$
														.ajax({
															type : "post",
															url : "<c:url value='/upload/uploadAjax'/>",
															data : formData,
															//
															dataType : "text",
															processData : false,
															contentType : false,
															//업로드 성공시
															success : function(
																	data) {
																alert(data);
																var str = "";
																// 이미지 파일이면 썸네일 이미지 출력
																if (checkImageType(data)) {
																	str = "<div><a href='<c:url value='/upload/displayFile?fileName="
																			+ getImageLink(data)
																			+ "'/>'>";
																	str += "<img src='<c:url value='/upload/displayFile?fileName="
																			+ data
																			+ "'/>'></a>";

																}
																//일반 파일이면 다운로드 링크
																else {
																	str = "<div><a href='<c:url value='/upload/displayFile?fileNAme="
																			+ data
																			+ "'/>'>"
																			+ getOriginalName(data)
																			+ "</a>";

																}
																//삭제 버튼
																str += "<span data-src="+data+">[삭제]</span></div>";
																$(
																		".uploadedList")
																		.append(
																				str);
															}
														});
											});
						});

		//파일관련 스크립트
		//원본파일 이름을 목록에 출력하기 위해
		function getOriginalName(fileName) {
			//이미지 파일이면
			if (checkImageType(fileName)) {
				return; //함수종료
			}
			//uuid를 제외한 원래 파일 이름을 리턴
			var idx = fileName.indexOf("_") + 1;
			return fileName.substr(idx);
		}

		//업로드된 파일이 이미지가 아닐 경우 업로드 파일 목록에 파일명을 출력해주기 위한 함수
		//이미지 파일 링크 - 클릭하면 원본 이미지를 출력해주기 위해
		function getImageLink(fileName) {
			//이미지 파일이 아니면
			if (!checkImageType(fileName)) {
				return; //함수 종료
			}
			//이미지 파일이면(썸네일이 아닌 원본이미지를 가져오기 위해)
			//썸네일 이미지 파일명 - 파일경로 + 파일명
			var front = fileName.substr(0, 12);//년월일 경로 추출
			var end = fileName.substr(14);//년월일 경로와 s_를 제거한 원본 파일명을 추출
			console.log(front); // /2017/03/09
			console.log(end) // 43...... .. .png
			//원본 파일명
			return front + end;//디렉토리를 포함한 원본파일명을 리턴
		}

		//이미지파일 형식을 체크하기 위해
		function checkImageType(fileName) {
			//
			var pattern = /jpg|gif|png|jpeg/i; //정규표현식
			return fileName.match(pattern);//규칙이 맞으면 true
		}

		/*

		 //업로드 파일 정보
		 function getFileInfo(fullName){
		 var fileName, imgsrc, getLink, fileLink;
		 //이미지 파일일 경우
		 if(checkImageType(fullName)){
		 //이미지 파일 경로(썸네일)
		 imgsrc = "/upload/displayFile?fileName="+fullName;
		 console.log("imgsrc : "+imgsrc);
		 //업로드 파일명
		 fileLink = fullName.substr(14);
		 console.log("fileLink : "+fileLink);
		 //날짜별 디렉토리 추출
		 var front = fullName.substr(0,12);
		 console.log("front : "+front);
		 //s_를 제거한 업로드 이미지 파일명
		 var end = fullName.substr(14);
		 console.log("end : "+end);
		 //원본이미지 파일 디렉토리
		 getLink = "/upload/displayFile?fileName="+front+end;
		 console.log("getLink : "+getLink);
		
		 }
		 //이미지 파일이 아닐 경우
		 else{
		 //UUID를 제외한 원본파일명
		 fileLink = fullName.substr(12);
		 console.log(fileLink);
		 //일반파일디렉토리
		 getLink = "/upload/displayFile?fileName="+fullName;
		 console.log(getLink);
		 }
		 //목록에 출력할 원본파일명 
		 fileName = fileLink.substr(fileLink.indexOf("_")+1);
		 console.log(fileName);
		 //{변수 : 값} json객체 리턴
		 return {fileName:fileName, imgsrc:imgsrc, getLink:getLink,fullName:fullName};
		
		 }

		 */

		/*
		 //파일업로드 쿼리랑 연결하기
		 $(document).ready(function() {
		 $(".fileDrop").on("dragenter dragover",function(event){
		 event.preventDefault();
		 });
		 $(".fileDrop").on("drop",function(event) {
		 event.preventDefault();
		 //드래그된 파일의 정보
		 var files = event.originalEvent.dataTransfer.files;
		 //첫번째 파일
		 var file = files[0];
		 //콘솔에서 파일정보 확인
		 console.log(file);

		 //ajax로 전달할 폼 객체
		 var formData = new FormData();
		 //폼 객체에 파일추가, append("변수명",값)
		 formData.append("file", file);
		
		
		
		 $.ajax({
		 type : "post",
		 url : "<c:url value='/upload/uploadAjax'/>",
		 data : formData,
		 //
		 dataType : "text",
		 processData : false,
		 contentType : false,
		 success : function(data) {
		 console.log("data : "+data);
		 //첨부파일의 정보
		 //var fileInfo = getFileInfo(data);
		 //하이퍼링크
		 //var html = "<a href='"+fileInfo.getLink+"'>"+fileInfo.fileName+"</a><br>";
		 //hidden태그 추가
		 //html += "<input type='hidden' class='file' value='"+fileInfo.fullName+"'>";
		 //div에 추가
		 //$("#uploadedList").append(html);
		 //$(".test1").append("<div name='fileName' value='"+data+"'></div>");
		
		
		 var str = "";
		 //이미지 파일이면 썸네일 이미지 출력
		 if(checkImageType(data)){
		 str = "<div><a href='<c:url value='/upload/displayFile?fileName="+getImageLink(data)+"'/>'>";
		 str += "<img src='<c:url value='/upload/displayFile?fileName="+data+"'/>'></a>";
		
		 }
		 //일반 파일이면 다운로드 링크
		 else{
		 str = "<div><a href='<c:url value='/upload/displayFile?fileNAme="+data+"'/>'>"+getOriginalName(data)+"</a>";
		
		 }
		
		
		
		 //삭제 버튼
		 str += "<span data-src="+data+">[삭제]</span></div>";
		 $("#uploadedList").append(str);
		 }
		 });
		 });
		 });
		 */

		//5번째거
		//파일삭제요청 처리
		$("#uploadedList").on("click", "span", function(event) {
			alert("이미지 삭제")
			var that = $(this); //여기서 this는 선택한 span태그
			$.ajax({
				url : "<c:url value='/upload/deleteFile'/>",
				type : "post",
				data : {
					fileName : $(this).attr("data-src")
				}, //json방식
				dataType : "text",
				success : function(result) {
					if (result == "deleted") {
						//클릭한 span 태그가 속한 div를 제거
						that.parent("div").remove();
					}
				}
			});
		});

		/*
		 function addFilePath(msg){
		 console.log(msg);//파일명 콘솔 출력
		 document.getElementById("form1").reset();
		 //ifream에 업로드 결과를 출력 후 form에 저장된 데이터 초기화
		 }
		 */
		//전체 페이지 파일 끌어 놓기 기본 이벤트 방지 : 지정된 영역외에 파일 드래그 드랍시 페이지 이동방지
		//$(".content-wrapper").on("dragenter dragover drop", function (event) { event.preventDefault(); });
		//$(document).ready(function(){
		/*
		$(".fileDrop").on("dragover dragover", function(event){
			event.preventDefault();//기본 효과를 막음
		});
		
		$(".fileDrop").on("dragend", function(event){
			event.preventDefault();//기본 효과를 막음
		});
		 */
		//});
	</script>




	<!-- 실제 내용 끝 -->
	<!--  푸터 시작 -->
	<jsp:include page="/WEB-INF/views/templates/Footer.jsp" />
	<!-- 푸터 끝 -->
	<script>
		if (navigator.geolocation) {//브라우저에 Geolocation 지원 여부 판단
			//PositionOptions객체 설정용]
			var options = {
				timeout : 3000,
				maxinumAge : 5000
			};
			//현재 위치 정보 딱 한번만 얻기
			navigator.geolocation.getCurrentPosition(successCallback);
		}
		//위치 정보를 얻었을 때 자동으로 호출되는 콜백 함수 : 인자는 Position객체
		function successCallback(position) {
			//위도/경도얻기
			var lat = position.coords.latitude;
			var lng = position.coords.longitude;
			//div에 지도 표시하기
			dispalyKakaomap(lat, lng);
		}///////successCallback
		function dispalyKakaomap(lat, lng) {

			var container = document.getElementById('map');
			var options = {
				center : new kakao.maps.LatLng(lat, lng),
				level : 5
			};
			var map = new kakao.maps.Map(container, options);

			var zoomControl = new kakao.maps.ZoomControl();
			map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

			// 지도를 클릭한 위치에 표출할 마커입니다
			var marker = new kakao.maps.Marker({
				// 지도 중심좌표에 마커를 생성합니다 
				position : map.getCenter()
			});
			// 지도에 마커를 표시합니다
			marker.setMap(map);

			// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다

			// 지도에 클릭 이벤트를 등록합니다
			// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
			kakao.maps.event.addListener(map, 'click', function(mouseEvent) {

				// 클릭한 위도, 경도 정보를 가져옵니다 
				var latlng = mouseEvent.latLng;

				// 마커 위치를 클릭한 위치로 옮깁니다
				marker.setPosition(latlng);

				var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
				message += '경도는 ' + latlng.getLng() + ' 입니다';

				var resultDiv = document.getElementById('clickLatlng');
				resultDiv.innerHTML = message;
				$("input[name=rvLat]").val(latlng.getLat());
				$("input[name=rvLng]").val(latlng.getLng());
			});
		}

		//썸머노트 구현중

		//여기 아래 부분

		//JQuery 충돌 처리를한다 (function( $ ) { })( jQuery );
		jQuery.noConflict();

		(function($) {
			$(document).ready(function() {
				$('#summernote').summernote({
					tabsize : 2,
					height : 300
				});
			});
		})(jQuery);

		$('#summernote').summernote(
				{
					height : 450,
					fontNames : [ '맑은고딕', 'Arial', 'Arial Black',
							'Comic Sans MS', 'Courier New', ],
					fontNamesIgnoreCheck : [ '맑은고딕' ],
					focus : true,

					callbacks : {
						onImageUpload : function(files, editor, welEditable) {
							for (var i = files.length - 1; i >= 0; i--) {
								//sendFile(files[i], this);
							}
						}
					}

				});

		//이미지 업ㄹ로드 구현중

		/*ajax참고용
		
		$("#like").click(function(){
		      		$.ajax({
		      			url:"<c:url value="/Review/Like.do"/>",
		      			type:"post",
		      			data:{nickName, rvNo},
		      			dataType:"text",
		      			success:function(data){
		      				if(data==0){
		      					$("#like").attr("src","../images/review/fullH.png");
		      					$("#likecount").html(++likecount);
		      				}
		      				else{
		      					$("#like").attr("src","../images/review/beanH.png");
		      					$("#likecount").html(--likecount);
		      				}
		      			},
		      			error:function(){
		      				alert("로그인 후 이용해주세요.");
		      			}
		      		});
		      	});
		
		 */
	</script>


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

</body>
</html>