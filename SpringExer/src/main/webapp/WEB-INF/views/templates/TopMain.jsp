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
	margin :50px;
	padding-top: 30px;
	text-decoration:none;
	
}
.n{
	color: black;
	min-height: 80px;
	
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
	<div class="container-fluid">
		
			<ul class="nav navbar-nav ">
			
				<li><a href="<c:url value="/Stamp/CategoryEdit.do"/>">CategoryEdit</a></li>
				<li><a href="<c:url value="/Stamp/Category.do"/>">Category</a></li>
				<li><a href="<c:url value="/Stamp/CategoryCreate.do"/>">CategoryCreate</a></li>
				<li><a href="<c:url value="/Review/ForumPost.do"/>">ForumPost</a></li>
				<li><a href="<c:url value="/Stamp/ForumPostCreate.do"/>">ForumPostCreate</a></li>
				<li><a href="<c:url value="/Review/TripBoard.do"/>">TripBoard</a></li>
				<li><a href="<c:url value="/Stamp/TripBoardEdit.do"/>">TripBoardEdit</a></li>
				<li><a href="<c:url value="/Stamp/TripBoardReport.do"/>">TripBoardReport</a></li>
				<li><a href="<c:url value="/Stamp/NewPost.do"/>">NewPost</a></li>
				
				
				<li><a href="<c:url value="/Stamp/Test.do"/>">Test</a></li>
				<li><a href="<c:url value="/Profile/StampList.do"/>">ProfileStampList</a></li>
				<li><a href="<c:url value="/Profile/Main.do"/>">ProfileMain</a></li>
				
				<li><a href="<c:url value="/Profile/Main/Id.do?id=KOO"/>">KOO의 ProfileMain</a></li>
				
				<li><a href="<c:url value="/Profile/NewSetting.do"/>">프로필값새로입력하는것</a></li>
				
				
				<li><a href="<c:url value="/Stamp/Badge.do"/>">Badge</a></li>
				<li><a href="<c:url value="/Profile/Like.do"/>">ProfileLike</a></li>
				<li><a href="<c:url value="/Profile/Comment.do"/>">ProfileComment</a></li>
				<li><a href="<c:url value="/Profile/Post.do"/>">ProfilePost</a></li>
				<li><a href="<c:url value="/Profile/Alarm.do"/>">ProfileAlarm</a></li>
				<li><a href="<c:url value="/Profile/AlarmSetting.do"/>">ProfileAlarmSetting</a></li>
				<li><a href="<c:url value="/Admin.do"/>">관리자페이지</a></li>
				
				
			</ul>
	</div>	
<!-- 상단메뉴 끝 -->
