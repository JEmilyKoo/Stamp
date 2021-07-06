<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/normalize.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/square-loader.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/demo.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/component.css" />
	
		<script src="${pageContext.request.contextPath}/js/classie.js"></script>
		<script src="${pageContext.request.contextPath}/js/dynamics.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/imagesloaded.pkgd.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/main.js"></script>
		
		
<style>


.homeBody {
	overflow: auto;
}
/*
.homeContainer {
	display: flex;
	flex-direction: column;
	justify-content: center;
	background-color: red;
	text-align: center;
	margin-bottom: 60px;
	display: flex;
}

.homeContainerMenu {
	display: flex;
	flex-direction: row;
}

.homeContainer.child {
	
}

.himeContainerItem {
	align-items: center;
	margin: 0 auto:      
	flex: 1 1 0;
}

.customoverlay {
	position: relative;
	bottom: 85px;
	border-radius: 6px;
	border: 1px solid #ccc;
	border-bottom: 2px solid #ddd;
	float: left;
}

.customoverlay:nth-of-type(n) {
	border: 0;
	box-shadow: 0px 1px 2px #888;
}

.customoverlay a {
	display: block;
	text-decoration: none;
	color: #000;
	text-align: center;
	border-radius: 6px;
	font-size: 14px;
	font-weight: bold;
	overflow: hidden;
	background: #d95050;
	background: #d95050
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png)
		no-repeat right 14px center;
}

.customoverlay .title {
	display: block;
	text-align: center;
	background: #fff;
	margin-right: 35px;
	padding: 10px 15px;
	font-size: 14px;
	font-weight: bold;
}

.customoverlay:after {
	content: '';
	position: absolute;
	margin-left: -12px;
	left: 50%;
	bottom: -12px;
	width: 22px;
	height: 12px;
	background:
		url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
}

body {
	background: #eee;
}

h3 {
	font-size: 20px;
	text-align: center;
	padding: 10px 0;
	margin-top: 20px;
}

.photo_container {
	margin: 0 auto;
}

.photo_list {
	display: flex;
	border: 3px solid #000;
	align-content: space-around;
	justify-content: space-around;
}

.photo_list.column {
	flex-flow: row wrap;
}

.photo_box {
	display: flex;
	flex-direction: column;
	width: 250px;
	height: 180px;
	background: #fff;
	margin: 10px
}

.photo {
	width: 100%;
	height: 120px;
	background-color: gray;
}

.description {
	flex: auto;
}

.gnb, .logo, .search {
	flex: none;
}

.gnb {
	margin-left: auto;
}

.logo, .gnb {
	padding: 10px 10px;
	background-color: rgba(0, 0, 0, .4);
}

.search {
	display: flex;
	padding: 10px 0;
	margin-left: 10px;
}
*/
</style>

<script>
	document.documentElement.className = 'js';
</script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(function() {
		//페이지 최초 로드시 내용 숨기기]
		$(".siteMap").hide();
		$(".moreButton").click(function() {
			console.log($(this).next().css('display'));
			//클릭한 제목의 내용이 숨겨져 있다면
			if ($(this).next().css('display') == 'none') {
				$(".actions").fadeOut(200);//열린 모든 내용 숨기기
				$(this).next().fadeIn(200);//해당 제목의 내용 보이기

			} else {
				$(this).next().fadeOut(200);
			}
		});

	});
</script>
</head>

<body class="homeBody">
	<jsp:include page="/WEB-INF/views/templates/Top.jsp" />
	<!-- 메인페이지에만 있는 사이트맵 -->
	
		<jsp:include page="/WEB-INF/views/templates/TopMain.jsp" />
	
<!-- 
	<div class="homeContainer">
		<div class="homeContainerMenu">

			<div class="photo_container" style="width: 1090px">
				<div class="photo_list column" style="width: 100%">
					<div class="logo">
						<p class="font_8 color_5" style="text-align: center;">추천 리뷰</p>
					</div>
					<div class="search"></div>
					<div class="gnb">
						<p class="font_9 color_5" style="text-align: center;">더보기</p>
					</div>
				</div>
			</div>

		</div>

		<div class="homeContainerMenu"
			style="flex-wrap: wrap; background-color: yellow; justify-content: space-around;">
			<div class="ui_box">
				<div class="photo_container" style="max-width: 1190px">
					<ul class="photo_list column">
						<li class="photo_box">
							<div class="photo"></div>
							<div class="description">Title1</div>
						</li>
						<li class="photo_box">
							<div class="photo"></div>
							<div class="description">Title2</div>
						</li>
						<li class="photo_box">
							<div class="photo"></div>
							<div class="description">Title3</div>
						</li>
						<li class="photo_box">
							<div class="photo"></div>
							<div class="description">Title4</div>
						</li>
					</ul>
				</div>
			</div>

		</div>


		<div class="homeContainerItem"
			style="background-color: yellow; height: 60px">빈칸</div>
		<div class="homeContainerItem" style="background-color: yellow">카테고리보기
 -->
<!-- 카테고리시작 -->
<!-- 카테고리끝 
		
		<div class="homeContainerItem"
			style="background-color: yellow; height: 60px">빈칸</div>
	
-->
</body>
</html>
