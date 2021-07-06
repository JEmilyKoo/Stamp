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

<Style>
@media all and (min-width:768px) {
	.profileCard {
		 
   
		width: 250px;
		height: 235px;
		box-sizing: border-box;
		background-color: rgb(255, 255, 255);
		border-width: 1px;
		border-color: rgba(0, 0, 0, 0.2);
		border-style: solid;
		pointer-events: none;
		min-width: 250px;
		z-index: -332;
		positon: flex;
		display: opacity;
		justify-content: center;
		margin : 0px 30px 30px 0px;
		position: sticky;
  		 top: 90px;
  		 z-index: 100;
	}
	.profileCardImage {
		box-sizing: border-box;
		outline: 0;
		border-color: rgb(255, 255, 255);
		width: 90px;
		height: 90px;
		min-width: 90px;
		min-height: 90px;
		margin: auto;
		z-index: 1;
		border-radius: 50%;
		overflow: hidden;
		positon: relative;
	}
	li{
	style="padding:0px 5px 10px 20px"
	}
	ul{
	}
	.sideMenu{
	
		position: sticky;
  		 top: 380px;
  		 z-index: 100;
	}
}
/* 모바일 가로, 모바일 세로 (해상도 480px ~ 767px)*/
@media all and (max-width:767px) {
	profileCard {
		box-sizing: border-box;
		background-color: white;
		border-color: rgba(0, 0, 0, 0.2);
		border-style: solid;
		pointer-events: none;
		margin : 30px 30px 30px 30px;
	}
	.profileCardImage {
		box-sizing: border-box;
		outline: 0;
		border-color: rgb(255, 255, 255);
		width: 90px;
		height: 90px;
		min-width: 90px;
		min-height: 90px;
		margin: auto;
		z-index: 1;
		border-radius: 50%;
		overflow: hidden;
		positon: relative;
	}
}
</Style>
</head>
<body>
	<div class=" profileCard comp-kpndp2z9 _1rug6 osdAp"  dir="ltr">
		<div
			style="flex-direction: column; padding: 30px; position: alsolute; min-height: 37px; z-index: 30">
			<div class="profileCardImage">

				<img
					src="${pageContext.request.contextPath}/images/profile/icon/icon1.webp"
					alt="프사"
					style="width: 100px; height: 100px; object-fit: cover; object-position: 50% 50%;">
			</div>

			<div style="justify-content: center;">
				<span class=" _3AkkR _2_TEk _2xV_H kl2Hr">${sessionScope.otherProfile.id}</span>
				<div class="_2XRvR" style="justify-content: center;">
					<button class="  _18463 _2rBmt _3y1t9" type="button" tabindex="0">
						<span>0</span>
						<div class="_3TgFJ">팔로워</div>
					</button>

					<div class="_25aDC"></div>
					<button class="_2rBmt _2QmZl" type="button" tabindex="0">
						<span>0</span>
						<div class="_3TgFJ">팔로잉</div>
					</button>
				</div>
			</div>
		</div>
	</div>
	<!--  style="height: auto;position: absolute; left:200px; top:380px" -->


	<nav id="comp-kpndp7iz" class="_3rKL6 _25-B7 sideMenu"
		style="background-color: white; width:100%; postion:flex; z-index:4; margin=30px">
		<ul class="-SaFH" style=" padding:30px 0px 30px 0px">
			<li ><a
				href="https://jemilykoo.wixsite.com/website/profile/userID/profile"
				target="_self" class="XOxx5  _3Cpo0 _16rQy _3VyKd" >▽프로필ㅁㅁㅁㅁㅁㅁ설정</a></li>
			<li><a
				href="https://jemilykoo.wixsite.com/website/profile/userID/blog-comments"
				target="_self" class=" _3Cpo0 _16rQy _3VyKd">ㅁㅁ스탬프</a></li>
			<li><a
				href="https://jemilykoo.wixsite.com/website/profile/userID/blog-comments"
				target="_self" class="XOxx5  _3Cpo0 _16rQy _3VyKd" >ㅁㅁ업적
			</a></li>
			<li><a
				href="https://jemilykoo.wixsite.com/website/profile/userID/blog-comments"
				target="_self" class="XOxx5  _3Cpo0 _16rQy _3VyKd" >ㅁㅁ뱃지</a></li>


			<li><a
				href="https://jemilykoo.wixsite.com/website/profile/userID/forum-posts"
				target="_self" class=" XOxx5  _3Cpo0 _16rQy _3VyKd"
				style="background-color: white">올린 리뷰<span
					class="_3JSHe">(1)</span>
			</a></li>
			<li><a
				href="https://jemilykoo.wixsite.com/website/profile/userID/forum-comments"
				target="_self" class="XOxx5  _3Cpo0_16rQy _3VyKd" >올린
					댓글<span class="_3JSHe">(2)</span>
			</a></li>
			<li><a
				href="https://jemilykoo.wixsite.com/website/profile/userID/blog-likes"
				target="_self" class=" XOxx5 _3Cpo0 _16rQy  _3VyKd">즐겨찾기<span
					class="_3JSHe">(1)</span>
			</a></li>
			<li><a
				href="https://jemilykoo.wixsite.com/website/account/notifications"
				target="_self" class="XOxx5  _3Cpo0 _3MLhF _16rQy _3VyKd"
				>알림ㅁㅁㅁㅁㅁㅁㅁㅁ설정</a></li>


		</ul>
	</nav>

</body>

</html>