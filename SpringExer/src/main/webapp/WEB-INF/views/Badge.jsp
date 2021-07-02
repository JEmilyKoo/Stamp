<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!-- badge.jsp는 개개별 뱃지의 상세를 보여주는 view
돌아가기 버튼을 누르면 프로필 메인으로 이동한다 12312

BADGELIST라는 테이블에서 
bgid : 뱃지 아이디 -> ${BADGELIST.bgid}
id : 사용자의 아이디 -> ${BADGELIST.id}
bgDate : 획득 날짜 -> ${BADGELIST.bgDate}


====추가로 필요한 처리 ==== 

1) 로그인 받아오는 세션 처리
2) BADGELIST의 dto와 dao 작성
3)뱃지 아이디의 하위 테이블 BADGE을 새로 생성해서 뱃지 아이디에 해당하는 제목과 설명을 호출해야 함

	뱃지 제목 -> ${BADGELIST.title}
	뱃지 설명 -> ${BADGELIST.content}




 -->
<!-- 스크롤 하기 -->
<html class="enable-scroll" lang="ko">
	<!-- head는 건드릴 것 없음 -->
	<head>
		<!-- jsp 기본 viewport 설정 -->
		<meta name="viewport" content="width=device-width, initial-scale=1" id="wixDesktopViewport">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!-- css 설정  -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css.css">
		<!-- 폰트 설정 -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
		<!-- 타이틀 설정 -->
		<title>숲 뱃지 | 찍GO</title>
		
	<style type="text/css">
	
	</style>
	</head>
	<!-- body 시작 -->
	<body>
	
	<jsp:include page="/WEB-INF/views/templates/Top.jsp"/>
	<!-- MeshContainer는 Mesh방식으로 보여주는 컨테이너 -->
	<div class="meshContainer">
		<!------ 뱃지 로고 시작 ------>
		<div class="badgeLogo"> 

			<!-- 이미지를 주소로 저장해 그 주소에 맞는 이미지를 호출하는 방식을 사용 : 예시
			<img src="${pageContext.request.contextPath}/images/profile/badge/badge${BADGELIST.bgid}.png" alt="뱃지" style="width: 400px; height: 400px; object-fit: cover; object-position: 50% 50%;">
			 -->
			<img src="${pageContext.request.contextPath}/images/profile/badge/badge1.png" alt="뱃지" style="width: 400px; height: 400px; object-fit: cover; object-position: 50% 50%;">
		</div>
		<!-- 뱃지 로고 종료 -->
		
		<!------ 뱃지 제목 시작 ------>
		<!-- MeshContainerDiv는 각 항목을 적당히 띄우는 역할 -->
		<div class="meshContainerDiv titleClass">
		
			<!-- 뱃지 제목을 호출 : 예시
			<h1 class="h1Class">${BADGELIST.title}</h1> 
			 -->
			<h1 class="h1Class">숲 뱃지</h1> 
        </div>
        <!-- 뱃지 제목 종료 -->
       
        <!------  뱃지 내용 시작 ------>
		<div class="meshContainerDiv contentClass">
		
			<!-- 
			font_8은 폰트가 1번부터 15번까지 있는데 그중 8번 폰트라는 뜻
			
			
			뱃지 설명을 호출 예시:
			<p class="font_8"> ${BADGELIST.content}</p>
			 
			 -->
			<p class="font_8"> 숲 많이 가서 획득함 </p>
		</div>
        <!-- 뱃지 내용 종료 -->
       
        <!------ 뱃지 획득일 시작 ------>
		<div class="meshContainerDiv dateClass">
		
			<!--
			 font_9는 폰트가 1번부터 15번까지 있는데 그중 8번 폰트라는 뜻
			
			뱃지 획득일을 호출 예시:
			<p class="font_8"> 획득일 ${BADGELIST.bgDate}</p>
			 -->
			<p class="font_9"> 획득일 2021. 06. 10 </p>
		</div>
		
		<div id="oneButtonId" aria-disabled="false" class="oneButton">
		    <!-- 누르면 프로필 메인 페이지로 돌아감 -->
			<a href="<c:url value="/Profile/Main.do"/>" class="oneButtonLinkClass">
			 <span class="oneButtonSpanClass">돌아가기</span> </a>
		</div>
	</div>
			
</body>
</html>