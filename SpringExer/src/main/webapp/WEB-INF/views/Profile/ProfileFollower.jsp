<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="enable-scroll" lang="ko">
<head>
</head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1"
	id="wixDesktopViewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--내가 추가한 코드-->
<!--내가 추가한 코드-->

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/css.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/profileSetting.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- render-head end   style="height: auto;position: absolute; left:200px; top:80px "-->



</head>
<body>
	<jsp:include page="/WEB-INF/views/templates/Top.jsp" />
	<!-- 메인페이지에만 있는 사이트맵 -->
<div class="profileContainer">
<div class="profileSideBar">
<jsp:include page="/WEB-INF/views/templates/ProfileSideBar.jsp" />
</div>
		


<h2 class="font_4 color_32"
				style="padding: 30px; text-align: center;">팔로우 리스트</h2>
			<p class="font_8 color_5"
				style="text-align: center; margin: 0px 0px 600px 0px">나를 팔로우한 사람을 확인하세요</p>
				
				
	<div class=" profileCard3 comp-kpndp2z9 _1rug6 osdAp profileFollow" dir="ltr">
		<div
			style="flex-direction: column; padding: 30px; position: alsolute; min-height: 37px; z-index: 30">
			<div class="profileCardImage">

				<img
					src="${pageContext.request.contextPath}/images/profile/icon/icon1.webp"
					alt="프사"
					style="width: 100px; height: 100px; object-fit: cover; object-position: 50% 50%;">
			</div>

			<div style="justify-content: center;">
				<span class=" _3AkkR _2_TEk _2xV_H kl2Hr">KOO</span>
				<div class="_2XRvR" style="justify-content: center;">
					
					<a href="<c:url value="/Profile/Follower.do"/>" class=" _18463 _2rBmt _3y1t9">
						<span>2</span>
						<div class="_3TgFJ">팔로워</div>
					</a>
					<div class="_25aDC"></div>
					
					<a href="<c:url value="/Profile/Following.do"/>">
					<button class="_2rBmt _2QmZl" type="button" tabindex="0">
						<span>2</span>
						<div class="_3TgFJ">팔로잉</div>
					</button>
					</a>
					
				</div>
			</div>
		</div>
	</div>
	
	<div class=" profileCard3 comp-kpndp2z9 _1rug6 osdAp profileFollow" dir="ltr">

		<div
			style="flex-direction: column; padding: 30px; position: alsolute; min-height: 37px; z-index: 30">
			<div class="profileCardImage">

				<img
					src="${pageContext.request.contextPath}/images/profile/icon/icon1.webp"
					alt="프사"
					style="width: 100px; height: 100px; object-fit: cover; object-position: 50% 50%;">
			</div>

			<div style="justify-content: center;">
				<span class=" _3AkkR _2_TEk _2xV_H kl2Hr">LEE</span>
				<div class="_2XRvR" style="justify-content: center;">
					
					<a href="<c:url value="/Profile/Follower.do"/>" class=" _18463 _2rBmt _3y1t9">
						<span>2</span>
						<div class="_3TgFJ">팔로워</div>
					</a>
					<div class="_25aDC"></div>
					
					<a href="<c:url value="/Profile/Following.do"/>">
					<button class="_2rBmt _2QmZl" type="button" tabindex="0">
						<span>2</span>
						<div class="_3TgFJ">팔로잉</div>
					</button>
					</a>
					
					
				</div>
			</div>
		</div>
	</div>
	
	
	
	
</div>

</body>
	
</html>