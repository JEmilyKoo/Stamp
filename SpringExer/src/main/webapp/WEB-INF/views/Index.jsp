<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Polaroid Stack to Grid Intro Animation | Demo: Default |
	Codrops</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/normalize.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/square-loader.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/demo.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/component.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/css.css" />
<script>
	document.documentElement.className = 'js';
</script>
</head>
<body>
	
	<div class="view">
		<header class="header"> </header>
		<section class="page page--mover">
			<div class="la-square-loader">
				<div></div>
			</div>
		</section>
		<div class="title-wrap">
			<img src="${pageContext.request.contextPath}/images/main/logo.png"
				width="300px" alt="Some image" />
			<p class=" font_0">스탬프로 여행하세요</p>
		</div>
		<section class="page page--static">
			<div class="page__title">
				<h2 class="page__title-main">지역/성향 카테고리</h2>
				<p class="page__title-sub">
					카테고리별 <a href="http://www.takeitapp.co/en">추천 리뷰</a>를 확인하세요
				</p>
			</div>
			<ul class="grid">
				<li class="grid__item"><a class="grid__link" href="#"> <img
						class="grid__img"
						src="${pageContext.request.contextPath}/images/main/photos/1.jpg"
						alt="Some image" />
						<div
							style="position: relative; bottom: 350px; left: 130px; font-size: 28px; vertical-align: baseline;">
							<img
								src="${pageContext.request.contextPath}/images/main/stamp.png"
								width="24px" height="24px" alt="Some image"
								style="opacity: 0.5; padding: 1px;" />090
						</div>
						<h2 class="font_8">광화문에 가다</h2>
						<h3 class="font_8">#서울 #해치</h3>

				</a></li>
				<li class="grid__item"><a class="grid__link" href="#"> <img
						class="grid__img"
						src="${pageContext.request.contextPath}/images/main/photos/2.jpg"
						alt="Some image" />
						<div
							style="position: relative; bottom: 350px; left: 130px; font-size: 24px;">
							<img
								src="${pageContext.request.contextPath}/images/main/stamp.png"
								width="24px" height="24px" alt="Some image"
								style="opacity: 0.5;" />100
						</div>
						<h2>광화문에 가다</h2>
						<h3 class="grid__item-title">#서울 #해치</h3>
				</a></li>
				<li class="grid__item"><a class="grid__link" href="#"> <img
						class="grid__img"
						src="${pageContext.request.contextPath}/images/main/photos/3.jpg"
						alt="Some image" />
						<h3 class="grid__item-title">That special blur</h3>
				</a></li>
				<li class="grid__item"><a class="grid__link" href="#"> <img
						class="grid__img"
						src="${pageContext.request.contextPath}/images/main/photos/4.jpg"
						alt="Some image" />
						<h3 class="grid__item-title">Drama where you need it</h3>
				</a></li>
				<li class="grid__item"><a class="grid__link" href="#"> <img
						class="grid__img"
						src="${pageContext.request.contextPath}/images/main/photos/5.jpg"
						alt="Some image" />
						<h3 class="grid__item-title">Realistic depth</h3>
				</a></li>
				<li class="grid__item"><a class="grid__link" href="#"> <img
						class="grid__img"
						src="${pageContext.request.contextPath}/images/main/photos/6.jpg"
						alt="Some image" />
						<h3 class="grid__item-title">The common, but special</h3>
				</a></li>
				<li class="grid__item"><a class="grid__link" href="#"> <img
						class="grid__img"
						src="${pageContext.request.contextPath}/images/main/photos/7.jpg"
						alt="Some image" />
						<h3 class="grid__item-title">Natural saturation effects</h3>
				</a></li>
				<li class="grid__item"><a class="grid__link" href="#"> <img
						class="grid__img"
						src="${pageContext.request.contextPath}/images/main/photos/8.jpg"
						alt="Some image" />
						<h3 class="grid__item-title">That special blur</h3>
				</a></li>
				<li class="grid__item"><a class="grid__link" href="#"> <img
						class="grid__img"
						src="${pageContext.request.contextPath}/images/main/photos/9.jpg"
						alt="Some image" />
						<h3 class="grid__item-title">Auto-color and light</h3>
				</a></li>
				<li class="grid__item"><a class="grid__link" href="#"> <img
						class="grid__img"
						src="${pageContext.request.contextPath}/images/main/photos/1.jpg"
						alt="Some image" />
						<h3 class="grid__item-title">Natural saturation effects</h3>
				</a></li>
				<li class="grid__item"><a class="grid__link" href="#"> <img
						class="grid__img"
						src="${pageContext.request.contextPath}/images/main/photos/2.jpg"
						alt="Some image" />
						<h3 class="grid__item-title">Auto-color and light</h3>
				</a></li>
				<li class="grid__item"><a class="grid__link" href="#"> <img
						class="grid__img"
						src="${pageContext.request.contextPath}/images/main/photos/3.jpg"
						alt="Some image" />
						<h3 class="grid__item-title">That special blur</h3>
				</a></li>
			</ul>
			<button class="button button--load" aria-label="Load more images">
				<svg class="polaroid" width="100%" height="100%"
					viewBox="0 0 220 243" preserveAspectRatio="xMidYMid meet">
						<rect class="polaroid__base" x="0" y="0" width="220" height="243"
						rx="5"></rect>
						<rect class="polaroid__inner" x="16" y="20" width="189"
						height="149"></rect>
						<g class="polaroid__loader">
							<circle cx="61.5" cy="94.5" r="17.5"></circle>
							<circle cx="110.5" cy="94.5" r="17.5"></circle>
							<circle cx="159.5" cy="94.5" r="17.5"></circle>
						</g>
					</svg>
				<span class="button__text">Load more</span>
			</button>
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
		<!-- Related demos -->
	</div>
	<!-- /view -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<script src="${pageContext.request.contextPath}/js/classie.js"></script>
	<script src="${pageContext.request.contextPath}/js/dynamics.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/imagesloaded.pkgd.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/main.js"></script>

</body>
</html>