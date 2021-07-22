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
<!-- 만

1) 이 사람들이 들어가있는지 확인
SELECT count(*) FROM MEMBER
		WHERE id = #{id}
		
SELECT count(*) FROM MEMBER
		WHERE id = 'KOO1' or 
			id = 'LEE23' or 
			id = 'PARK45' or
			id = 'SSONG67' or
			id = 'SANG89' or
			id =  'BOM0';
			


			
	멤버 생성 /업데이트 버튼 개장	
	리뷰 생성 / 업데이트버튼 개장	1001~1006
	팔로우 생성 / 업데이트 버튼 개장 1001~1030
	
	ㅌ

멤버 업데이트 버튼의 쿼리

대충 이런 게 있는데 업뎃을 하면 이렇게 돌아간다
를 6개

멤버 생성 버튼의 쿼리

대충 이런 걸 첨부터 만든다
를 6개

팔로우넘버 1001










 -->


	<jsp:include page="/WEB-INF/views/templates/Top.jsp" />
	<div class="TripBoardContainer">
		<div style="padding: 020px">


		</div>
		<div class="TripBoardContent" style="background-color: ivory">
			
			
<button>
더미데이터를 만드는 버튼
</button>


들어가는 데이터<br/>
회원 : KOO1 LEE23 PARK45 SSONG67 SANG89 BOM0<br/>
추천 리뷰 : <br/>
북한산 등반기 KOO1<br/>
#서울<br/>
#산<br/>
<br/>
영종도 바다 여행기LEE23<br/>
#인천<br/>
#바다<br/>
<br/>
임진강에 다녀와서PARK45<br/>
#경기<br/>
#강<br/>
<br/>
광화문에 가다SSONG67 <br/>
#서울<br/>
#유적지<br/>
<br/>
차이나 타운 맛집 인정SANG89 <br/>
#인천<br/>
#도심<br/>
<br/>
서울랜드 야경포인트BOM0<br/>
#경기<br/>	 
#야경<br/>
		</div>
	</div>
</body>
</html>
