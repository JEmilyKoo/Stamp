<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1"
	id="wixDesktopViewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/DM/sceneary.svg"/>
		<title>DM</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/DMreset.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/DMmain.css">
	</head>
	<body>
	
	<jsp:include page="/WEB-INF/views/templates/Top.jsp" />
		<div class="body-container" >
		<div><!-- -여기에 팔로워 들어감 -->팔로워들어갈 창</div>
		<div> <!--  여기에 디엠 들어감 -->
			<header class="header">
				<div class="header-items">
					<img src="${pageContext.request.contextPath}/images/DM/backarrow.svg" alt="" class="back-arrow">
				</div>
				<div class="header-items user">
					<img src="${pageContext.request.contextPath}/images/DM/user1.jpg" alt="" class="user-img">
					<p class="user-name">Michelle</p>
				</div>
				<div class="header-items">
					<img src="${pageContext.request.contextPath}/images/DM/video-camera.svg" alt="" class="video-call">
				</div>
				<div class="header-items">
					<img src="${pageContext.request.contextPath}/images/DM/info.svg" alt="" class="info">
				</div>
			</header>
			<div class="main">
				<div class="main-window">
				
					<div class="r-msg-box">
						<p class="r-msgs">Hello, how are you?</p>
					</div>
					
					<div class="l-msg-box">
						<img src="${pageContext.request.contextPath}/images/DM/user1.jpg" alt="" class="l-user-img">
						<p class="l-msgs">I am very well. Thanks for asking.</p>
					</div>
					<div class="r-msg-box">
						<p class="r-msgs">Hello, how are you?</p>
					</div>
					<div class="l-msg-box">
						<img src="${pageContext.request.contextPath}/images/DM/user1.jpg" alt="" class="l-user-img">
						<img src="${pageContext.request.contextPath}/images/DM/laptop.jpg" alt="" class="l-msgs">
					</div>
					<div class="r-msg-box">
						<p class="r-msgs">Hello, how are you?</p>
					</div>
					<div class="r-msg-box">
						<p class="r-msgs">Hello, how are you?</p>
					</div>
					<div class="l-msg-box">
						<img src="${pageContext.request.contextPath}/images/DM/user1.jpg" alt="" class="l-user-img">
						<p class="l-msgs">I am very well. Thanks for asking.</p>
					</div>
					<div class="r-msg-box">
						<p class="r-msgs">Hello, how are you?</p>
					</div>
					<div class="l-msg-box">
						<img src="${pageContext.request.contextPath}/images/DM/user1.jpg" alt="" class="l-user-img">
						<p class="l-msgs">I am very well. Thanks for asking. This is a test message for multi-line text.</p>
					</div>
					<div class="r-msg-box">
						<p class="r-msgs">Hello, how are you?</p>
					</div>
					<div class="l-msg-box">
						<img src="${pageContext.request.contextPath}/images/DM/user1.jpg" alt="" class="l-user-img">
						<p class="l-msgs">I am very well. Thanks for asking.</p>
					</div>
					<div class="r-msg-box">
						<p class="r-msgs">Hello, how are you? This is a test message for multi-line text.</p>
					</div>
					<div class="l-msg-box">
						<img src="${pageContext.request.contextPath}/images/DM/user1.jpg" alt="" class="l-user-img">
						<p class="l-msgs">I am very well. Thanks for asking.</p>
					</div>
				</div>
	
				<div class="input-container">
					<div class="input-bar">
						<img src="${pageContext.request.contextPath}/images/DM/camera.jpg" class="input-bar-items icon-camera">
						<input type="text" placeholder="메시지를 입력하세요..." class="input-bar-items input-message">
						<img src="${pageContext.request.contextPath}/images/DM/microphone.svg" class="input-bar-items icon-microphone">
						<img src="${pageContext.request.contextPath}/images/DM/sceneary.svg" class="input-bar-items icon-photo">
						<img src="${pageContext.request.contextPath}/images/DM/smile.svg" class="input-bar-items icon-gif">
					</div>
				</div>
	
			</div>
		</div></div>
		
	</body>
</html>