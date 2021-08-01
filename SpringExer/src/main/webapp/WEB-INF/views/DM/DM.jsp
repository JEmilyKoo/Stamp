<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
	
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<style>
div.left {
	float: left;
	box-sizing: border-box;
	border: 1px solid #CCCCCC;
}

div.right {
	float: right;
	box-sizing: border-box;
}
</style>

<style>
요소 {
	height: 100%;
}

.nGS-Y {
	padding-bottom: 24px;
	padding-top: 24px;
}

.T9mq- {
	padding-left: 24px;
	padding-right: 24px;
}

._4EzTm {
	-webkit-box-flex: 0;
	-webkit-flex: 0 0 auto;
	-ms-flex: 0 0 auto;
	flex: 0 0 auto;
}

.YBx95 {
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
}

.rBNOH {
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
}

.Igw0E {
	-webkit-align-content: stretch;
	-ms-flex-line-pack: stretch;
	align-content: stretch;
	-webkit-box-align: stretch;
	-webkit-align-items: stretch;
	-ms-flex-align: stretch;
	align-items: stretch;
	border: 0 solid #000;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
	-webkit-flex-shrink: 0;
	-ms-flex-negative: 0;
	flex-shrink: 0;
	margin: 0;
	padding: 0;
	position: relative;
}


body, button, input, textarea {
	color: #262626;
	color: rgba(var(- -i1d, 38, 38, 38), 1);
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		Helvetica, Arial, sans-serif;
	font-size: 14px;
	line-height: 18px;
}

body {
	line-height: 1;
}

.sDN5V { -
	-i1d: 38, 38, 38; -
	-edc: 199, 199, 199; -
	-f75: 38, 38, 38; -
	-fe0: 0, 55, 107; -
	-d87: 255, 255, 255; -
	-b3f: 250, 250, 250; -
	-bb2: 239, 239, 239; -
	-f23: 255, 255, 255; -
	-b38: 219, 219, 219; -
	-b6a: 219, 219, 219; -
	-ca6: 219, 219, 219; -
	-cdd: 38, 38, 38; -
	-e22: 199, 199, 199; -
	-e62: 245, 251, 255; -
	-b2f: 88, 195, 34; -
	-c8c: 168, 168, 168; -
	-ce3: 239, 239, 239; -
	-jd9: 0, 0, 0; -
	-j64: 54, 54, 54; -
	-a97: 243, 243, 243; -
	-d20: 38, 38, 38;
}

.ekjoN, .sDN5V { -
	-f52: 142, 142, 142; -
	-h1d: 255, 255, 255; -
	-de5: 255, 255, 255; -
	-d69: 0, 149, 246; -
	-b86: 88, 195, 34; -
	-i30: 237, 73, 86; -
	-d62: 255, 255, 255; -
	-e4f: 54, 54, 54; -
	-a72: 255, 255, 255; -
	-ie3: 142, 142, 142; -
	-c37: 237, 73, 86; -
	-f24: 0, 149, 246; -
	-jbb: 53, 121, 234; -
	-eca: 255, 255, 255; -
	-jb7: 0, 0, 0; -
	-fa7: 224, 241, 255; -
	-ba8: 168, 168, 168; -
	-eac: 237, 73, 86;
}

.glyphsSpriteDirect__outline__96 {
	height: 96px;
	width: 96px;
	background-image:
		url(/static/bundles/es6/sprite_glyphs_4a96eed31eb5.png/4a96eed31eb5.png);
}

.u-__7 {
	display: block;
}

.aGBdT {
	margin-top: 16px;
}

._4EzTm {
	-webkit-box-flex: 0;
	-webkit-flex: 0 0 auto;
	-ms-flex: 0 0 auto;
	flex: 0 0 auto;
}

.eGOV_ {
	-webkit-box-pack: start;
	-webkit-justify-content: flex-start;
	-ms-flex-pack: start;
	justify-content: flex-start;
}

.IwRSH {
	-webkit-box-align: stretch;
	-webkit-align-items: stretch;
	-ms-flex-align: stretch;
	align-items: stretch;
}

.Igw0E {
	-webkit-align-content: stretch;
	-ms-flex-line-pack: stretch;
	align-content: stretch;
}

body, button, input, textarea {
	color: #262626;
	color: rgba(var(- -i1d, 38, 38, 38), 1);
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		Helvetica, Arial, sans-serif;
	font-size: 14px;
	line-height: 18px;
}

.sDN5V { -
	-i1d: 38, 38, 38; -
	-edc: 199, 199, 199; -
	-f75: 38, 38, 38; -
	-fe0: 0, 55, 107; -
	-d87: 255, 255, 255; -
	-b3f: 250, 250, 250; -
	-bb2: 239, 239, 239; -
	-f23: 255, 255, 255; -
	-b38: 219, 219, 219; -
	-b6a: 219, 219, 219; -
	-ca6: 219, 219, 219; -
	-cdd: 38, 38, 38; -
	-e22: 199, 199, 199; -
	-e62: 245, 251, 255; -
	-b2f: 88, 195, 34; -
	-c8c: 168, 168, 168; -
	-ce3: 239, 239, 239; -
	-jd9: 0, 0, 0; -
	-j64: 54, 54, 54; -
	-a97: 243, 243, 243; -
	-d20: 38, 38, 38;
}

.ekjoN, .sDN5V { -
	-f52: 142, 142, 142; -
	-h1d: 255, 255, 255; -
	-de5: 255, 255, 255; -
	-d69: 0, 149, 246; -
	-b86: 88, 195, 34; -
	-i30: 237, 73, 86; -
	-d62: 255, 255, 255; -
	-e4f: 54, 54, 54; -
	-a72: 255, 255, 255; -
	-ie3: 142, 142, 142; -
	-c37: 237, 73, 86; -
	-f24: 0, 149, 246; -
	-jbb: 53, 121, 234; -
	-eca: 255, 255, 255; -
	-jb7: 0, 0, 0; -
	-fa7: 224, 241, 255; -
	-ba8: 168, 168, 168; -
	-eac: 237, 73, 86;
}

.l4b0S {
	text-align: center;
}

.uL8Hv {
	display: block;
}

.KV-D4 {
	color: #262626;
	color: rgba(var(- -i1d, 38, 38, 38), 1);
}

.yUEEX {
	font-weight: 300;
}

.x-6xq {
	font-size: 22px;
	line-height: 26px;
	margin: -4px 0 -5px;
}

button, input, textarea {
	color: #262626;
	color: rgba(var(- -i1d, 38, 38, 38), 1);
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		Helvetica, Arial, sans-serif;
	font-size: 14px;
	line-height: 18px;
}

.l4b0S {
	text-align: center;
}

.uL8Hv {
	display: block;
}

._0PwGv {
	color: #8e8e8e;
	color: rgba(var(- -f52, 142, 142, 142), 1);
}

.MMzan {
	font-weight: 400;
}

.xLCgt {
	font-size: 14px;
	line-height: 18px;
	margin: -3px 0 -4px;
}
</style>
<body>
	<jsp:include page="/WEB-INF/views/templates/Top.jsp" />
	<div class="body-container" style="border: 1px solid #CCCCCC">
		<div class="left">
			<header class="header">
				<div class="header-items"></div>
				<div class="header-items user" style="display:flex;justify-content:center	">
					<p class="user-name" style="text-align: center;">${sessionScope.nickName }</p>
				</div>
				<div class="header-items"></div>
				<div class="header-items"></div>
			</header>
			<c:if test="${empty finalDMLists }" var="isEmpty">
				<div>
					<div>대화상대가 없어요</div>
				</div>
			</c:if>
			<c:if test="${not isEmpty }">
				<div>
					<c:forEach items="${finalDMLists }" var="item" varStatus="loop">
						<div
							style="margin-top: 15px; margin-bottom: 15px; display: flex;margin-left: 1px; margin-right: 1px; ">
							<img src="${pageContext.request.contextPath}/images/profile/icon/icon${loop.index%3 }.jpg"
								alt="" class="profileIcon" style="width: 56px; height: 56px;margin-left:40px; margin-right:10px; margin-top:5px;">
							
							
							<div style="padding:5px">
							<a id="enterWServer"
								href="<c:url value="/DM/DMChatBox.do?nickName=${item.nickName }&DMToNickName=${item.DMToNickName }"/>">
								${item.DMToNickName == sessionScope.nickName?item.nickName:item.DMToNickName }</a>
							
							<div style="height:20px; overflow: hidden; text-overflow: ellipsis; ">
							
							${item.DMCtt }</div>
							
							<div style="color:gray">
							
							<fmt:formatDate value="${item.DMDate }" pattern="a HH:mm"  />
							</div>
							</div>
							<c:if test="${item.cntNewDM != '0' }">
								새로운 메세지 ${item.cntNewDM }
							</c:if>

						</div>
						
					</c:forEach>
				</div>
			</c:if>
		</div>
		<div class="right">
			<div class="main" style="display: flex; justify-content: center">
				<div class=" Igw0E   rBNOH     YBx95  _4EzTm T9mq-  nGS-Y   "
					style="height: 100%;">
					<div class=" Igw0E IwRSH eGOV_    _4EzTm   aGBdT   " style="  display:flex;justify-content:center;margin: 0 auto" >

						<img class="_7UhW9  x-6xq  yUEEX   KV-D4     uL8Hv     l4b0S    " src="${pageContext.request.contextPath}/images/main/logo.png"
							style="width: 250px; height: auto">

					</div>

					<div class=" Igw0E IwRSH eGOV_    _4EzTm   aGBdT   ">
						<h2 class="_7UhW9  x-6xq  yUEEX   KV-D4     uL8Hv     l4b0S    ">내
							메시지</h2>
					</div>
					<div class="Igw0E     IwRSH eGOV_    _4EzTm   aGBdT   ">
						<div class="_7UhW9   xLCgt MMzan   _0PwGv    uL8Hv     l4b0S    ">친구나
							그룹에 비공개 사진과 메시지를 보내보세요.<br/></div>
					</div>
					<div  style="  display:flex;justify-content:center;margin: 0 auto; padding:10px;margin-top:10px">
					
					<button class="w3-button w3-blue w3-border w3-border-white w3-round-large" style="padding:6px">
						 메시지 보내기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>