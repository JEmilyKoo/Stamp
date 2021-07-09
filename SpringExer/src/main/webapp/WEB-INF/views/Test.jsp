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

	<jsp:include page="/WEB-INF/views/templates/Top.jsp" />
<div class="TripBoardContainer">
	<div class="TitleBoardSearch"> <!-- 여행 정보 > 여행 게시판  V 검색--></div>
	<div style="padding:10px">
	<div class="TitleBoardHeader" style="
	margin: 0 auto;
	margin: auto 0; background: url(&quot;${pageContext.request.contextPath}/images/main/photos/3.jpg&quot;);">
		<!--타이틀 이미지 들어감-->
		<div class="TripBoardTitle"><!-- 타이틀 -->타이틀</div>
	</div>	
		
	</div>
	<div class="TripBoardCategory"><!--  V카테고리 관리자 작성 버튼--></div>

	<div class="TripBoardContent">
		<div class="TripBoardSideBar">
		<!-- 사이드 바 -->
		</div>
		<div class="TripBoardMain" style="width: 980px">
		<!-- 메인 -->
		
		<!-- 갯수 맞추기 위해 있어야 하는 코드 시작 -->
		<!-- 갯수 맞추기 위해 있어야 하는 코드 끝 -->

		<!-- 아이템을 받아와서 반복하면 됨-->
		<c:if test="${! empty list }" var="val">
			<c:forEach items="${list}" var="item">

				<div class="item" style="width:300px">
					<div class="article" >
						<!-- 리뷰 파일 이미지 받아오는 코드  시작-->
						<!-- 아래 url 교체하면 리뷰 링크로 갈 수 있음 -->
						<a target="_top"
							href="<c:url value="/Review/ForumPost.do?rvNo=${item.rvNo }"/>">
							<!-- 아래 url을 교체하면 리뷰페이지에 맞는 이미지 획득 가능 -->
							<div class="cardImage"
								style="background-image: url('${pageContext.request.contextPath}/images/review/review1.jpg');">
							</div>
						</a>
						<!-- 이미지 받아오는 코드 끝-->
						<!-- 프사/닉네임/누르면 프로필 나오고 날짜 누르면 리뷰페이지 나오는 부분 코드 시작 -->

						<div class="_8noOb BhgSV _2yqBc post-list-item-wrapper _3amSm">

							<div
								class="_1bO86 _1CSFW blog-post-metadata-font post-header blog-post-description-font"
								style="font-size: 12px;">
								<div class="_5bxnE">

									<div class="_33LjI avatar">

										<!-- 사용자에 맞게 프로필을 교체해야 함 -->
										<a target="_top" href="<c:url value="/Profile/Main.do"/>"
											style="text-decoration: none"> <span
											class="_2iDLv avatar-image"> <!-- 아래 url 교체하면 프로필에 맞는 프사 획득 가능 -->
												<div class="_1wPNJ fluid-avatar-image"
													style="background-image: url('${pageContext.request.contextPath}/images/profile/icon/icon1.jpg');"></div>
										</span>
										</a>
									</div>

									<div class="_2wbeQ">

										<!-- 사용자에 맞게 프로필링크를 교체해야 함  -->
										<a target="_top" href="<c:url value="/Profile/Main.do"/>"
											style="text-decoration: none"> <!-- 이름 --> <span
											style="display: flex">${item.nickName }</span>
										</a>
										<!-- 리뷰에 맞게 리뷰 링크 교체해야함 -->
										<a target="_top" style="text-decoration: none;"
											href="<c:url value="/Review/ForumPost.do?rvNo=${item.rvNo }"/>">
											<!-- 상세페이지 --> <span style="margin: 0px">${item.rvDate }</span>
										</a>

									</div>
								</div>
							</div>



							<!-- 프사/닉네임/누르면 프로필 나오고 날짜 누르면 리뷰페이지 나오는 부분 코드 끝-->
							<!-- 제목과 누르면 리뷰페이지 나오는 부분 코드 시작 -->
							<!-- 리뷰에 맞게 페이지 링크 수정해야 -->
							<a target="_top" style="text-decoration: none;"
								href="<c:url value="/Review/ForumPost.do?rvNo=${item.rvNo }"/>">
								<div style="font-size: 26px;"
									class="_24zS1 blog-post-title-font BhgSV _2yqBc _1T_VD">
									<h2
										class="_2NtDR J-lPk blog-text-color post-title blog-hover-container-element-color">
										<span class="post-title__text J-lPk"> <!-- 제목 -->
											<div class="J-lPk font_7"
												style="overflow: hidden; text-overflow: ellipsis; -moz-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 3; text-align: left">
												${item.rvTitle }</div>
										</span>
									</h2>
								</div>
								<div style="font-size: 16px;"
									class="_2PvFX BhgSV blog-post-description-style-font">
									<div class="_17sOR post-excerpt">
										<div
											style="overflow: hidden; text-overflow: ellipsis; -moz-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 3;">
											<!-- 태그는 태그를 누르면 각 태그의 검색결과가 뜨는 걸로 수정해야 -->
											<!-- 뿌려주는 반복문 필요할거 같다 -->
											<div class="fl4fR">
												<a href="<c:url value=""/>">#사용자가 설정한 태그 #검색결과뜨게</a>
											</div>
										</div>
									</div>
								</div>
							</a>

							<!--  조회수, 댓글, 좋아요 나오는 페이지 -->
							<div class="_2tFu- BhgSV">
								<div class="_2Dps0 _1Pk7K BhgSV blog-separator-background-color"></div>
								<div style="font-size: 12px;">
									<div
										class="fhim2 blog-post-description-font blog-text-color post-footer">
										<div class="_60xHi">
											<div class="MEOqZ post-stats">
												<!-- 조회 -->
												<span tabindex="0">조회 0</span>
												<!-- 댓글 -->
												<span class="_24h-e">댓글 0</span>
											</div>
										</div>

										<div class="vP6YT">
											<button class="_3Bdxz post-footer__like-button">
												<!--<span class="_3BTGY"> <span class="_8J1xw">0</span>
																						 하트 아이콘 시작
																						<div class="like-button _7QZoA _1eKPZ"
																							aria-label="1 좋아요 좋아요로 표시된 게시물" role="button">
																							<a href="<c:url value="/Review/Like.do?rvno=${item.rvNo}"/>"><img src="../images/review/beanH.png" /></a>

																							<svg xmlns="http://www.w3.org/2000/svg"
																								width="19" viewBox="0 0 19 19" role="img">

                                        </svg>
																						</div> -->
												<!-- 하트 아이콘 끝 -->
												</span>
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 카드뷰 끝. 아래는 테이블에 맞춰 불러올 수 있다면 853번째 줄까지 지워도 됨 -->
			</c:forEach>
		</c:if>
		</div>
	</div>
</div>
</body>
</html>
