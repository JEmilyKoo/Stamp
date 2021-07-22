<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" id="wixDesktopViewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/DM/sceneary.svg" />
<title>DM</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/DMreset.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/DMmain.css">
</head>
<style>
div.left {
	float: left;
	box-sizing: border-box;
	border: 1px solid black;
}

div.right {
	float: right;
	box-sizing: border-box;
}
</style>
<body>
	<jsp:include page="/WEB-INF/views/templates/Top.jsp" />
	<div class="body-container" style="border: 1px solid black">
		<div class="left">
			<header class="header">
				<div class="header-items"></div>
				<div class="header-items user">
					<p class="user-name" style="text-align: center">${sessionScope.nickName }</p>
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
						<div style="margin-top: 15px; margin-bottom: 15px; margin-left: 1px; margin-right: 1px; border: 1px solid black;">
							<img src="${pageContext.request.contextPath}/images/DM/smile.svg" alt="" class="profileIcon" style="width: 32px; height: 32px">
							<a id="enterWServer" href="<c:url value="/DM/DMChatBox.do?nickName=${item.nickName }&DMToNickName=${item.DMToNickName }"/>"> ${item.DMToNickName == sessionScope.nickName?item.nickName:item.DMToNickName }</a>
							${item.DMCtt } -
							<fmt:formatDate value="${item.DMDate }" pattern="a HH:mm" /> -------------- 
							<c:if test="${item.DMToNickName == sessionScope.nickName }">
								새로운 메세지 ${item.cntNewDM }
							</c:if>
							
						</div>
					</c:forEach>
				</div>
			</c:if>
		</div>
		<div class="right">
			<div class="main">
				<img src="${pageContext.request.contextPath}/images/DM/backarrow.svg" alt="" class="back-arrow">
				<h2 style="text-align: center">새로운 메세지</h2>
				<button>메세지 보내기</button>
				<h2 style="text-align: center">(버튼 눌렀을 때 선택 목록 )</h2>
			</div>
		</div>
	</div>
</body>
</html>