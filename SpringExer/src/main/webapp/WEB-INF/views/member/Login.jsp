<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1"
	id="wixDesktopViewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--내가 추가한 코드-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/css.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/common-site-members-dialogs.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">


<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/common-site-members-dialogs.css">

<!-- 부트스트랩 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">


<title>로그인하기 | 찍GO</title>


<style>
#마스터페이지 { -
	-pinned-layers-in-page: 0
}

#pageBackground_ldtv2 { -
	-bg-position: absolute; -
	-bg-overlay-color: rgb(var(- -color_11)); -
	-fill-layer-background-overlay-color: transparent; -
	-fill-layer-background-overlay-position: absolute
}
</style>
</head>
<body class="blockSiteScrolling"
	style="-blocked-site-scroll-margin-top: 0.5px;">

	<div id="SITE_CONTAINER">
		<div id="main_MF">
			<div id="site-root">
				<div class="_11F4V" data-testid="siteMembersDialogLayout"
					data-layout="fullscreen">
					<div class="WmezM" data-testid="siteMembersDialogBlockingLayer"></div>
					<div role="dialog" tabindex="-1"
						aria-labelledby="signUpHeadline_SM_ROOT_COMP12" class="akXcv"
						data-dialogposition="start">
						<button onclick="goBack()" class="_8vZ-e" data-testid="xButton"
							aria-label="닫기" type="button">
							<svg width="24" height="24" viewBox="0 0 24 24">
							 
								<defs>
								
								<filter id="close_svg__a" width="136.7%" height="135.5%"
									x="-18.3%" y="-17.8%" filterUnits="objectBoundingBox">

<feMorphology in="SourceAlpha" operator="dilate" radius="9"
									result="shadowSpreadOuter1"></feMorphology>

<feOffset dx="2" dy="12" in="shadowSpreadOuter1"
									result="shadowOffsetOuter1"></feOffset>
								<feGaussianBlur in="shadowOffsetOuter1"
									result="shadowBlurOuter1" stdDeviation="14"></feGaussianBlur>

<feColorMatrix in="shadowBlurOuter1" result="shadowMatrixOuter1"
									values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.15 0"></feColorMatrix>
<feMerge>
								<feMergeNode in="shadowMatrixOuter1"></feMergeNode>
								<feMergeNode in="SourceGraphic"></feMergeNode></feMerge>
								
								</filter> </defs>
								
								<g fill-rule="evenodd" filter="url(#close_svg__a)"
									transform="translate(-421 -24)">
								<path
									d="M439.77 28l1.23 1.23-6.77 6.77 6.77 6.77-1.23 1.23-6.77-6.77-6.77 6.77-1.23-1.23 6.769-6.77L425 29.23l1.23-1.23 6.77 6.769L439.77 28z"></path></g></svg>

						</button>

		<c:if test="${! empty NotMember }">﻿
			<div class="row">
				<div class="col-xs-offset-1 col-xs-6 alert alert-warning fade in">
					<button class="close" data-dismiss="alert">
						<span>×</span>
					</button>
					${NotMember }
				</div>
			</div>
		</c:if>

<div id="SM_ROOT_COMP12" class="_2nKSe">
					<h1 id="signUpHeadline_SM_ROOT_COMP12" class="_15DDX"
						data-testid="signUp.headline">로그인</h1>
					<div class="_6UDPd _14jSF _2QSEv">
						<div class="_1axeK"></div>
		<div class="row">
			<c:if test="${not empty sessionScope.id }" var="isLogin">
				<div class="col-xs-offset-1 col-xs-6 alert alert-success">${sessionScope.id }님
					즐겁게 여행하세요</div>
			</c:if>

			<c:if test="${not isLogin }">
				<!--로그인하면 이 화면을 뿌려주어야 함-->
				

						<form id="myform" method="post"
							class="form-horizontal"
							action="<c:url value='/Member/Login.do'/>">


							<div class="aonqC">

								<div class="MQAj0">
									<div id="idDiv" class="_1ggNP">
										<div id="idInput" class="_1FsS0 _36G3j _19QH-">
											<label for="id" class="_1qrSw">아이디</label>
											<div class="ABx0f">
												<input id="id" name="id" class="_3rh7f has-custom-focus"
													type="text" required autocomplete="off"
													style="font-size: 14px">
											</div>
										</div>
									</div>
								</div>


								<div class="_1RlXb">
									<div id="pwdDiv" class="_1ggNP"
										data-testid="siteMembers.container">
										<div id="pwdInput" class="_1FsS0 _36G3j _19QH-">
											<label for="pwd" class="_1qrSw">비밀번호</label>
											<div class="ABx0f">
												<input id="pwd" name="pwd" class="_3rh7f has-custom-focus"
													type="password" required autocomplete="off" value=""
													style="font-size: 14px">
											</div>
										</div>
									</div>
								</div>


							</div>

							<div class=" _2KYMK">
								<div id="okButton_SM_ROOT_COMP12" aria-disabled="false"
									class="oneButton">
									<button type="submit" class="oneButtonLinkClass boxButton">
										<span class="oneButtonSpanClass">로그인하기</span>
									</button>
								</div>
							</div>
							

						</form>

			</c:if>
		</div>
		

	<!-- 새 폼 끝-->

						<div>
							<div class="_1q-e7 _3fqFH">
								<span>SNS 계정으로 로그인</span>
							</div>
							<!-- 카카오 로그인 창 -->
							<div>
								<a href="https://kauth.kakao.com/oauth/authorize?client_id=0e3ca3b3a449e6e1a12a17795f6d775b&redirect_uri=http://localhost:9090/exer/Member/KakaoLogin.do
									&response_type=code">
									<img
									src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg"
									width="222" />
								</a>
							</div>
							
							<div>
								<!-- 네이버 로그인 창 -->
								<a href="https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=OKVhsE6FDsMVPSDUedj7&state=STATE_STRING&redirect_uri=http://localhost:9090/exer/Member/NaverLogin.do">
									<img src="<c:url value="/images/naver.png"/>" width="222" /> 
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div></div>
		</div>
	</div></div></div>
	<script>
		function goBack() {
			window.history.back();
		}
	</script>



</body>
</html>