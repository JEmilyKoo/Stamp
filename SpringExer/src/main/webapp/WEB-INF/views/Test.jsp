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
	href="${pageContext.request.contextPath}/css/css.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/commons.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
</style>
</head>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<title>여행 게시판 | 찍GO</title>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/tripboard.css">

<script type="text/javascript">
	var bodyCacheable = true;
	var exclusionReason = {
		"shouldRender" : true,
		"forced" : false
	};
	var ssrInfo = {
		"renderBodyTime" : 1412,
		"renderTimeStamp" : 1624436335025
	}
</script>
<body>

	<jsp:include page="/WEB-INF/views/templates/TopTripBoard.jsp" />
	<div class="TripBoardContainer">
		<div style="padding: 0px">

			<div class="TitleBoardHeader"
				style="color: red; margin: auto; position: relative; background-color: green">
				<img
					src="${pageContext.request.contextPath}/images/tripboard/header_city1.jpg" />
				<!--타이틀 이미지 들어감-->
			</div>

		</div>
		<div class="TripBoardContent" style="background-color: ivory">
			
			<div class="TripBoardMain"
				style="display: flex; justify-content: center; flex-flow: wrap; gap: 10px; background-color: red">
				<!-- 메인 -->
				<div style="width: 300px; height: 300px; background-color: blue">d</div>
				<div style="width: 300px; height: 300px; background-color: blue">d</div>
				<div style="width: 300px; height: 300px; background-color: blue">d</div>
				<div style="width: 300px; height: 300px; background-color: blue">d</div>
				<div style="width: 300px; height: 300px; background-color: blue">d</div>
				<div style="width: 300px; height: 300px; background-color: blue">d</div>
				<!-- 갯수 맞추기 위해 있어야 하는 코드 시작 -->
				<!-- 갯수 맞추기 위해 있어야 하는 코드 끝 -->


			</div>
		</div>
	</div>
</body>
</html>
