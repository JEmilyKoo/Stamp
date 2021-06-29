<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script>
	function logout(){
		location.replace('<c:url value="/OneMemo/Auth/Logout.do"/>');
	}

</script>
<style>
body {
	margin : 0;
	padding-top: 80px;
	text-decoration:none;
	
}
.navbar-header{
	min-height: 80px;
}
.navbar-right{
	color: black;
	
}

.fontTitle{
	font: 700 22px/22px 'Noto Sans KR', sans-serif !important;
	color: DodgerBlue !important;
}

.fontSub{
	font: 300 15px/1.875em 'Noto Sans KR',sans-serif !important;
	text-align:left;
	line-height:1.875em;
}

</style>

<!-- 상단메뉴 시작 -->
<nav class="navbar navbar-default navbar-fixed-top ">	
	<div class="container-fluid">
		<div class="navbar-header">
			<!--화면 크기가 작을때 보여지는 네비게이션바(모바일용)  -->
			<button class="navbar-toggle collapsed" data-toggle="collapse"
				data-target="#collapse-menu">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<!-- CI표시 -->
			
			<a class="navbar-brand" href="<c:url value="/"/>">
				<span class="glyphicon glyphicon-map-marker"></span>
				<span class="fontTitle">찍GO</span>
				<br/>
				<p class="fontSub">지금 바로 떠나세요</p>
			</a>
		</div>
			<!-- 네비게이션바에 폼 추가 -->
			<ul class="nav navbar-nav navbar-right">
				<li><a href="<c:url value="/Stamp/Home.do"/>">메인</a></li>
				<li><a href="<c:url value="/BBS/List.do"/>">여행/리뷰정보</a></li>
				<li><a href="<c:url value="/Stamp/Home.do"/>">지도검색</a></li>
				<li><a href="<c:url value="/Stamp/Home.do"/>">가이드</a></li>
				<c:if test="${not empty sessionScope.id }" var="isLogin">
				
				<li><a href="<c:url value="/Member/Logout.do"/>">Logout</a></li>
				</c:if>
				<c:if test="${not isLogin }">					
				<li><a href="<c:url value="/Member/Login.do"/>">Login</a></li>
				<li><a href="<c:url value="/Member/Login2.do"/>">Login2</a></li>
				<li><a href="<c:url value="/Member/Join.do"/>">JOIN</a></li>
				<li><a href="<c:url value="/Member/Join2.do"/>">JOIN2</a></li>
				</c:if>
				
				
				
				<li><a href="<c:url value="/Stamp/Badge.do"/>">Badge</a></li>
				<li><a href="<c:url value="/Stamp/CatagoryEdit.do"/>">CatagoryEdit</a></li>
				<li><a href="<c:url value="/Stamp/Category.do"/>">Category</a></li>
				<li><a href="<c:url value="/Stamp/CategoryCreate.do"/>">CategoryCreate</a></li>
				<li><a href="<c:url value="/Stamp/ForumPost.do"/>">ForumPost</a></li>
				<li><a href="<c:url value="/Stamp/ForumPostCreate.do"/>">ForumPostCreate</a></li>
				<li><a href="<c:url value="/Stamp/guide.do"/>">guide</a></li>
				<li><a href="<c:url value="/Stamp/MapSearch.do"/>">MapSearch</a></li>
				
				<li><a href="<c:url value="/Stamp/NewPost.do"/>">NewPost</a></li>
				<li><a href="<c:url value="/Stamp/TripBoard.do"/>">TripBoard</a></li>
				<li><a href="<c:url value="/Stamp/TripBoardEdit.do"/>">TripBoardEdit</a></li>
				<li><a href="<c:url value="/Stamp/TripBoardReport.do"/>">TripBoardReport</a></li>
				<li><a href="<c:url value="/Stamp/Test.do"/>">Test</a></li>
				<li><a href="<c:url value="/Profile/StampList.do"/>">ProfileStampList</a></li>
				<li><a href="<c:url value="/Profile/Main.do"/>">ProfileMain</a></li>
				<li><a href="<c:url value="/Profile/Like.do"/>">ProfileLike</a></li>
				<li><a href="<c:url value="/Profile/Comment.do"/>">ProfileComment</a></li>
				<li><a href="<c:url value="/Profile/Post.do"/>">ProfilePost</a></li>
				<li><a href="<c:url value="/Profile/Alarm.do"/>">ProfileAlarm</a></li>
				
				<li><a href="<c:url value="/Profile/AlarmSetting.do"/>">ProfileAlarmSetting</a></li>
				
				
			</ul>
	</div>
</nav>
<!-- 상단메뉴 끝 -->
