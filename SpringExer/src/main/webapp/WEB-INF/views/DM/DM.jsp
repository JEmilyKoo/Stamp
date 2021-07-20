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
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/images/DM/sceneary.svg" />
<title>DM</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/DMreset.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/DMmain.css">
</head>
<body>

	<jsp:include page="/WEB-INF/views/templates/Top.jsp" />
	<div class="body-container">
		<div>
			<!-- -여기에 팔로워 들어감 -->
			팔로워들어갈 창
			현재 UI적용하려고 기능테스트 중입니다
			 ${finalDMLists }
			<c:if test="${ empty finalDMLists }" var="val">
		없대
		</c:if>
			<!-- 챗박스 -->
			<form id="myform" name='homeForm' method="post"
				class="form-horizontal" action="<c:url value="/DM/DMChatBox.do"/>">
				<div class="aonqC">

					<div class="MQAj0">
						<div id="nickNameDiv" class="_1ggNP">
							<div id="nickNameInput" class="_1FsS0 _36G3j _19QH-">
								<label for="nickName" class="_1qrSw">닉네임</label>
								<div class="ABx0f">
									<input id="nickName" name="nickName"
										class="_3rh7f has-custom-focus" type="text" required
										autocomplete="off" style="font-size: 14px">
								</div>

							</div>
						</div>
					</div>

<div class="MQAj0">
						<div id="DMToNickNameDiv" class="_1ggNP">
							<div id="DMToNickNameInput" class="_1FsS0 _36G3j _19QH-">
								<label for="DMToNickName" class="_1qrSw">사람 하나더</label>
								<div class="ABx0f">
									<input id="DMToNickName" name="DMToNickName"
										class="_3rh7f has-custom-focus" type="text" required
										autocomplete="off" style="font-size: 14px">
								</div>

							</div>
						</div>
					</div>


					




				</div>

				<button type="submit" class="oneButtonLinkClass boxButton">
					<span class="oneButtonSpanClass">확인하기</span>
				</button>

			</form>

			<!-- 센드디엠 -->

			<form id="myform" name='homeForm' method="post"
				class="form-horizontal" action="<c:url value="/DM/sendDM"/>">
				<div class="aonqC">

					

					<div class="MQAj0">
						<div id="DMCttDiv" class="_1ggNP">
							<div id="DMCttInput" class="_1FsS0 _36G3j _19QH-">
								<label for="DMCtt" class="_1qrSw">내용물</label>
								<div class="ABx0f">
									<input id="DMCtt" name="DMCtt" class="_3rh7f has-custom-focus"
										type="text" required autocomplete="off"
										style="font-size: 14px">
								</div>

							</div>
						</div>
					</div>


					<div class="MQAj0">
						<div id="DMToNickNameDiv" class="_1ggNP">
							<div id="DMToNickNameInput" class="_1FsS0 _36G3j _19QH-">
								<label for="DMToNickName" class="_1qrSw">사람 하나더</label>
								<div class="ABx0f">
									<input id="DMToNickName" name="DMToNickName"
										class="_3rh7f has-custom-focus" type="text" required
										autocomplete="off" style="font-size: 14px">
								</div>

							</div>
						</div>
					</div>


					<div class="MQAj0">
						<div id="DMCheckedDiv" class="_1ggNP">
							<div id="DMCheckedInput" class="_1FsS0 _36G3j _19QH-">
								<label for="DMChecked" class="_1qrSw">체크어쩌고</label>
								<div class="ABx0f">
									<input id="DMChecked" name="DMChecked"
										class="_3rh7f has-custom-focus" type="text" 
										autocomplete="off" style="font-size: 14px">
								</div>

							</div>
						</div>
					</div>



				</div>

				<button type="submit" class="oneButtonLinkClass boxButton">
					<span class="oneButtonSpanClass">송신하기</span>
				</button>

			</form>

			<c:if test="${! empty cntNewDMs }" var="val">
		있다고는 함 
		</c:if>
		
		
		
			${cntNewDMs }
		</div>


		<div>
			<!--  여기에 디엠 들어감 -->
			<header class="header">
				<div class="header-items">
					<img
						src="${pageContext.request.contextPath}/images/DM/backarrow.svg"
						alt="" class="back-arrow">
				</div>
				<div class="header-items user">
					<img src="${pageContext.request.contextPath}/images/DM/user1.jpg"
						alt="" class="user-img">
					<p class="user-name">Michelle</p>
				</div>
				<div class="header-items">
					<img
						src="${pageContext.request.contextPath}/images/DM/video-camera.svg"
						alt="" class="video-call">
				</div>
				<div class="header-items">
					<img src="${pageContext.request.contextPath}/images/DM/info.svg"
						alt="" class="info">
				</div>
			</header>
			<div class="main">
				<div class="main-window">

					<div class="r-msg-box">
						<p class="r-msgs">Hello, how are you?</p>
					</div>

					<div class="l-msg-box">
						<img src="${pageContext.request.contextPath}/images/DM/user1.jpg"
							alt="" class="l-user-img">
						<p class="l-msgs">I am very well. Thanks for asking.</p>
					</div>
					<div class="r-msg-box">
						<p class="r-msgs">Hello, how are you?</p>
					</div>
					<div class="l-msg-box">
						<img src="${pageContext.request.contextPath}/images/DM/user1.jpg"
							alt="" class="l-user-img"> <img
							src="${pageContext.request.contextPath}/images/DM/laptop.jpg"
							alt="" class="l-msgs">
					</div>
					<div class="r-msg-box">
						<p class="r-msgs">Hello, how are you?</p>
					</div>
					<div class="r-msg-box">
						<p class="r-msgs">Hello, how are you?</p>
					</div>
					<div class="l-msg-box">
						<img src="${pageContext.request.contextPath}/images/DM/user1.jpg"
							alt="" class="l-user-img">
						<p class="l-msgs">I am very well. Thanks for asking.</p>
					</div>
					<div class="r-msg-box">
						<p class="r-msgs">Hello, how are you?</p>
					</div>
					<div class="l-msg-box">
						<img src="${pageContext.request.contextPath}/images/DM/user1.jpg"
							alt="" class="l-user-img">
						<p class="l-msgs">I am very well. Thanks for asking. This is a
							test message for multi-line text.</p>
					</div>
					<div class="r-msg-box">
						<p class="r-msgs">Hello, how are you?</p>
					</div>
					<div class="l-msg-box">
						<img src="${pageContext.request.contextPath}/images/DM/user1.jpg"
							alt="" class="l-user-img">
						<p class="l-msgs">I am very well. Thanks for asking.</p>
					</div>
					<div class="r-msg-box">
						<p class="r-msgs">Hello, how are you? This is a test message
							for multi-line text.</p>
					</div>
					<div class="l-msg-box">
						<img src="${pageContext.request.contextPath}/images/DM/user1.jpg"
							alt="" class="l-user-img">
						<p class="l-msgs">I am very well. Thanks for asking.</p>
					</div>
				</div>

				<div class="input-container">
					<div class="input-bar">
						<img src="${pageContext.request.contextPath}/images/DM/camera.jpg"
							class="input-bar-items icon-camera"> <input type="text"
							placeholder="메시지를 입력하세요..." class="input-bar-items input-message">
						<img
							src="${pageContext.request.contextPath}/images/DM/microphone.svg"
							class="input-bar-items icon-microphone"> <img
							src="${pageContext.request.contextPath}/images/DM/sceneary.svg"
							class="input-bar-items icon-photo"> <img
							src="${pageContext.request.contextPath}/images/DM/smile.svg"
							class="input-bar-items icon-gif">
					</div>
				</div>

			</div>
		</div>
	</div>

</body>
</html>