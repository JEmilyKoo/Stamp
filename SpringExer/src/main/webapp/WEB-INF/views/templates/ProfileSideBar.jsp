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
	style="padding:0px 5px 13px 20px"
	
	}
	ul{
	}
	.sideMenu{
	
		position: sticky;
  		 top: 380px;
  		 z-index: 100;
	}
	
	.profileSettingButton{
	position: fixed;
  		 top: 415px; left:510px;
  		 z-index: 100;"
	
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
<a href="<c:url value="/Profile/AlarmSetting.do"/>">
	<button class="profileSettingButton"  >
  		 <svg width="24" height="24" xmlns="http://www.w3.org/2000/svg" fill-rule="evenodd" clip-rule="evenodd"><path d="M12 8.666c-1.838 0-3.333 1.496-3.333 3.334s1.495 3.333 3.333 3.333 3.333-1.495 3.333-3.333-1.495-3.334-3.333-3.334m0 7.667c-2.39 0-4.333-1.943-4.333-4.333s1.943-4.334 4.333-4.334 4.333 1.944 4.333 4.334c0 2.39-1.943 4.333-4.333 4.333m-1.193 6.667h2.386c.379-1.104.668-2.451 2.107-3.05 1.496-.617 2.666.196 3.635.672l1.686-1.688c-.508-1.047-1.266-2.199-.669-3.641.567-1.369 1.739-1.663 3.048-2.099v-2.388c-1.235-.421-2.471-.708-3.047-2.098-.572-1.38.057-2.395.669-3.643l-1.687-1.686c-1.117.547-2.221 1.257-3.642.668-1.374-.571-1.656-1.734-2.1-3.047h-2.386c-.424 1.231-.704 2.468-2.099 3.046-.365.153-.718.226-1.077.226-.843 0-1.539-.392-2.566-.893l-1.687 1.686c.574 1.175 1.251 2.237.669 3.643-.571 1.375-1.734 1.654-3.047 2.098v2.388c1.226.418 2.468.705 3.047 2.098.581 1.403-.075 2.432-.669 3.643l1.687 1.687c1.45-.725 2.355-1.204 3.642-.669 1.378.572 1.655 1.738 2.1 3.047m3.094 1h-3.803c-.681-1.918-.785-2.713-1.773-3.123-1.005-.419-1.731.132-3.466.952l-2.689-2.689c.873-1.837 1.367-2.465.953-3.465-.412-.991-1.192-1.087-3.123-1.773v-3.804c1.906-.678 2.712-.782 3.123-1.773.411-.991-.071-1.613-.953-3.466l2.689-2.688c1.741.828 2.466 1.365 3.465.953.992-.412 1.082-1.185 1.775-3.124h3.802c.682 1.918.788 2.714 1.774 3.123 1.001.416 1.709-.119 3.467-.952l2.687 2.688c-.878 1.847-1.361 2.477-.952 3.465.411.992 1.192 1.087 3.123 1.774v3.805c-1.906.677-2.713.782-3.124 1.773-.403.975.044 1.561.954 3.464l-2.688 2.689c-1.728-.82-2.467-1.37-3.456-.955-.988.41-1.08 1.146-1.785 3.126"/></svg>	 
  	</button> <!-- 프로필 설정 -->
 </a> 
  	<button style=" position: fixed;
  		 top: 650px; left:510px;
  		 z-index: 100;" >
  		 <svg width="24" height="24" xmlns="http://www.w3.org/2000/svg" fill-rule="evenodd" clip-rule="evenodd"><path d="M12 8.666c-1.838 0-3.333 1.496-3.333 3.334s1.495 3.333 3.333 3.333 3.333-1.495 3.333-3.333-1.495-3.334-3.333-3.334m0 7.667c-2.39 0-4.333-1.943-4.333-4.333s1.943-4.334 4.333-4.334 4.333 1.944 4.333 4.334c0 2.39-1.943 4.333-4.333 4.333m-1.193 6.667h2.386c.379-1.104.668-2.451 2.107-3.05 1.496-.617 2.666.196 3.635.672l1.686-1.688c-.508-1.047-1.266-2.199-.669-3.641.567-1.369 1.739-1.663 3.048-2.099v-2.388c-1.235-.421-2.471-.708-3.047-2.098-.572-1.38.057-2.395.669-3.643l-1.687-1.686c-1.117.547-2.221 1.257-3.642.668-1.374-.571-1.656-1.734-2.1-3.047h-2.386c-.424 1.231-.704 2.468-2.099 3.046-.365.153-.718.226-1.077.226-.843 0-1.539-.392-2.566-.893l-1.687 1.686c.574 1.175 1.251 2.237.669 3.643-.571 1.375-1.734 1.654-3.047 2.098v2.388c1.226.418 2.468.705 3.047 2.098.581 1.403-.075 2.432-.669 3.643l1.687 1.687c1.45-.725 2.355-1.204 3.642-.669 1.378.572 1.655 1.738 2.1 3.047m3.094 1h-3.803c-.681-1.918-.785-2.713-1.773-3.123-1.005-.419-1.731.132-3.466.952l-2.689-2.689c.873-1.837 1.367-2.465.953-3.465-.412-.991-1.192-1.087-3.123-1.773v-3.804c1.906-.678 2.712-.782 3.123-1.773.411-.991-.071-1.613-.953-3.466l2.689-2.688c1.741.828 2.466 1.365 3.465.953.992-.412 1.082-1.185 1.775-3.124h3.802c.682 1.918.788 2.714 1.774 3.123 1.001.416 1.709-.119 3.467-.952l2.687 2.688c-.878 1.847-1.361 2.477-.952 3.465.411.992 1.192 1.087 3.123 1.774v3.805c-1.906.677-2.713.782-3.124 1.773-.403.975.044 1.561.954 3.464l-2.688 2.689c-1.728-.82-2.467-1.37-3.456-.955-.988.41-1.08 1.146-1.785 3.126"/></svg>
  	 </button><!--  알림 설정 -->
	<nav id="comp-kpndp7iz" class="_3rKL6 _25-B7 sideMenu"
		style="background-color: white; width:100%; postion:flex; z-index:4; margin=30px">
		<ul class="-SaFH" style=" padding:30px 0px 30px 0px">
			<li ><a
				href="https://jemilykoo.wixsite.com/website/profile/userID/profile"
				target="_self" class="XOxx5  _3Cpo0 _16rQy _3VyKd" style="font:var(--font_7)" >▽프로필</a></li>
			<li><a
				href="https://jemilykoo.wixsite.com/website/profile/userID/blog-comments"
				target="_self" class=" _3Cpo0 _16rQy _3VyKd"  style="font:var(--font_7)">ㅁㅁ스탬프</a></li>
			<li><a
				href="https://jemilykoo.wixsite.com/website/profile/userID/blog-comments"
				target="_self" class="XOxx5  _3Cpo0 _16rQy _3VyKd" style="font:var(--font_7)" >ㅁㅁ업적
			</a></li>
			<li><a
				href="https://jemilykoo.wixsite.com/website/profile/userID/blog-comments"
				target="_self" class="XOxx5  _3Cpo0 _16rQy _3VyKd"  style="font:var(--font_7)" >ㅁㅁ뱃지</a></li>


			<li><a
				href="https://jemilykoo.wixsite.com/website/profile/userID/forum-posts"
				target="_self" class=" XOxx5  _3Cpo0 _16rQy _3VyKd"
				  style="font:var(--font_7)">올린 리뷰<span
					class="_3JSHe">(1)</span>
			</a></li>
			<li><a
				href="https://jemilykoo.wixsite.com/website/profile/userID/forum-comments"
				target="_self" class="XOxx5  _3Cpo0_16rQy _3VyKd"  style="font:var(--font_7)" >올린
					댓글<span class="_3JSHe">(2)</span>
			</a></li>
			<li><a
				href="https://jemilykoo.wixsite.com/website/profile/userID/blog-likes"
				target="_self" class=" XOxx5 _3Cpo0 _16rQy  _3VyKd"  style="font:var(--font_7)">즐겨찾기<span
					class="_3JSHe">(1)</span>
			</a></li>
			<li><a
				href="https://jemilykoo.wixsite.com/website/account/notifications"
				target="_self" class="XOxx5  _3Cpo0 _3MLhF _16rQy _3VyKd"  style="font:var(--font_7)"
				>알림</a></li>


		</ul>
	</nav>

</body>

</html>