<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="enable-scroll" lang="ko">
<!--  -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1"
	id="wixDesktopViewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--내가 추가한 코드-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/css.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<title>여행 게시판 | 찍GO</title>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/modalcss.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/languages.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/common-member-pages.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/member-likes-page.css">

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
</head>


<body class="al-active _1Arx3">
	<jsp:include page="/WEB-INF/views/templates/Top.jsp" />
	<div class="meshContainer">
		<div data-mesh-id="Container여행리뷰정보아이디inlineContent-gridContainer"
			data-testid="mesh-container-content">

			<div id="TPASection_kpndq3bq" style="height: auto">
				<div class="TPASection_kpndq3bq">
					<div dir="ltr">
						<div class="md lt-lg lt-xl gt-xs gt-sm sidebar-on">
							<div class="_3v2Yd" style="position: fixed; visibility: hidden"></div>
							<div id="content-wrapper"
								class="_2OKxY _3KFQm app-desktop forum-background-color">
								<div class="디폴트" id="modal-overlay"></div>
								<div>
									<div class="PfdRR message" data-hook="message"></div>
								</div>
								<div data-hook="forum-content-wrapper" id="content-wrapper">
									<div class="_3r1lL header-background-color"
										data-hook="desktop-header">
										<div class="_3B7XB">
											<nav aria-label="Breadcrumbs"
												class="_3xObj forum-content-classic-font breadcrumbs-text-color">
												<ol class="_18QAN">
													<li><a
														href="https://jemilykoo.wixsite.com/website/forum"
														data-hook="breadcrumbs__1">여행 리뷰/정보</a></li>
													<span class="_3q5sF"><svg
															xmlns="http://www.w3.org/2000/svg" width="6" height="10"
															viewBox="0 0 6 10" style="fill-rule: evenodd"
															class="breadcrumbs-icon-fill">
																									<path
																d="M785.783,854.5l-4.552,4.3a0.771,0.771,0,0,1-1.048,0,0.672,0.672,0,0,1,0-.99L784.21,854l-4.027-3.8a0.672,0.672,0,0,1,0-.99,0.773,0.773,0,0,1,1.048,0l4.552,4.3A0.674,0.674,0,0,1,785.783,854.5Z"
																transform="translate(-780 -849.031)"></path></svg></span>
													<li><span tabindex="0" aria-current="page"
														data-hook="breadcrumbs__current-page" role="link">여행
															게시판</span></li>
												</ol>
											</nav>
											<div class="_2LHxU">
												<div class="_3C0hA" data-hook="search-input">
													<div class="_3iW6- search-input">
														<div class="_2RwOg" role="search" aria-label="&nbsp;"
															tabindex="0">
					
							<div>					
<!-- 아래 검색 -->			
			<form class="form-inline" method="post"
				action="<c:url value='/Review/TripBoard.do'/>">
																<div class="form-group">
					<select name="searchColumn" class="form-right">
						<option value="title">제목</option>
						<option value="name">작성자</option>
						<option value="content">내용</option>
					</select>
				</div>
															<div class="form-group">
					<input type="text" name="searchWord" class="form-right" />
				</div>
				
				<button type="submit" class="btn btn-primary">검색</button>
															
															</div>
															</div>
															
															<div
																class="q4nje desktop-header-search-border-background-color"></div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="_1W1_h">
										<div class="_3IIvE">
											<div
												class="_3jp2s default-desktop-header-text-color page-description _1iSUx"
												style="color: #FFFFFF; height: 300px">
												<div class="_3Z0vv"
													style="background-image: url(&quot;https://static.wixstatic.com/media/8bde4fb7e0db407693c87bdcc9150c9e.jpg/v1/fit/w_1920,h_834,al_c,q_80/file.png&quot;); background-size: cover;"
													alt="">
													<div class="LTMVp"
														style="background-color: #000000; opacity: 0.25"
														data-hook="page-cover"></div>
													<div class="_36G23">
														<div class="_26TAI">
															<div
																class="_2POlQ page-description-title-font page-description__title"
																data-hook="page-description__title">
																<!-- 타이틀 -->
																<h1 tabindex="-1" class="_1_JwX">여행 게시판</h1>
															</div>
															<div class="dTyOb page-description-font"
																data-hook="page-description__description">
																<!-- 설명글 -->
																<p class="EV-c5" style="-webkit-line-clamp: 10;">여행
																	관련 주제의 글에 참여해보세요. 새 게시물을 추가하거나 기존 게시물을 편집하여 활동을 시작할 수
																	있습니다.</p>
															</div>
														</div>
													</div>
												</div>
											</div>

											<!-- 게시물 작성하기 버튼 id값(id=tripBoardCreateButton) 을 받아오면 됨 -->
											<a
															href="<c:url value="/Review/Write.do?nickName=${nickName }"/>">
											<div class="_3SBFF undefined LTwPD sameS "
												style="max-width: 140px;">
												<button id=tripBoardCreateButton
													class="_2jKCS button-hover-fill forum-icon-fill forum-text-color forum-content-classic-font _3Z2wu button-background-color _2B7gt"
													aria-label="게시물 작성하기" aria-haspopup="true"
													aria-expanded="false">
													<div class="_2RPBu button-primary-text-color"
														style="box-sizing: inherit; outline: 0; background: transparent; background-color: transparent; background-position-x: 0%; background-position-y: 0%; background-repeat: repeat; background-attachment: scroll; background-image: none; background-size: auto; background-origin: padding-box; background-clip: border-box;">
														
														<!-- 게시물 작성하기인데 main.js로 가서 에러남 -->
														
														<span>게시물
																작성하기 </span>
													</div>
												</button>
												
											</div>
</a>
											<!-- 게시물 작성하기 버튼 종료  -->
											<!-- 카드뷰 -->


											<div class="container"
												style="display: grid; max-width: 980px; grid-template-columns: 1fr 1fr 1fr; row-gap: 30px; column-gap: 10px;">
												<!-- 갯수 맞추기 위해 있어야 하는 코드 시작 -->
												<div class="item1"></div>
												<div class="item1"></div>
												<!-- 갯수 맞추기 위해 있어야 하는 코드 끝 -->

												<!-- 아이템을 받아와서 반복하면 됨-->

												<c:forEach items="${list}" var="item">

													<div class="item">
														<div class="article">
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

															<div
																class="_8noOb BhgSV _2yqBc post-list-item-wrapper _3amSm">

																<div
																	class="_1bO86 _1CSFW blog-post-metadata-font post-header blog-post-description-font"
																	style="font-size: 12px;">
																	<div class="_5bxnE">

																		<div class="_33LjI avatar">

																			<!-- 사용자에 맞게 프로필을 교체해야 함 -->
																			<a target="_top"
																				href="<c:url value="/Profile/Main.do"/>"
																				style="text-decoration: none"> <span
																				class="_2iDLv avatar-image"> <!-- 아래 url 교체하면 프로필에 맞는 프사 획득 가능 -->
																					<div class="_1wPNJ fluid-avatar-image"
																						style="background-image: url('${pageContext.request.contextPath}/images/profile/icon/icon1.jpg');"></div>
																			</span>
																			</a>
																		</div>

																		<div class="_2wbeQ">

																			<!-- 사용자에 맞게 프로필링크를 교체해야 함  -->
																			<a target="_top"
																				href="<c:url value="/Profile/Main.do"/>"
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
																				<div class="fl4fR"><a href="<c:url value=""/>">#사용자가 설정한 태그 #검색결과뜨게</a></div>
																			</div>
																		</div>
																	</div>
																</a>

																<!--  조회수, 댓글, 좋아요 나오는 페이지 -->
																<div class="_2tFu- BhgSV">
																	<div
																		class="_2Dps0 _1Pk7K BhgSV blog-separator-background-color"></div>
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
																					<span class="_3BTGY"> <span class="_8J1xw">0</span>
																						<!-- 하트 아이콘 시작 -->
																						<div class="like-button _7QZoA _1eKPZ"
																							aria-label="1 좋아요 좋아요로 표시된 게시물" role="button">
																							<a href="<c:url value="/Review/Like.do?rvno=${item.rvNo}"/>"><img src="../images/review/beanH.png" /></a>

																							<svg xmlns="http://www.w3.org/2000/svg"
																								width="19" viewBox="0 0 19 19" role="img">

                                        </svg>
																						</div> <!-- 하트 아이콘 끝 -->
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

											</div>

										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
					<!-- 위는 테이블에 맞춰 불러올 수 있다면 지워도 됨-->
				</div>

			</div>
		</div>
	</div>


</body>

</html>

<!-- 지도 위도 경도 얻기
<script>
	    if(navigator.geolocation){//브라우저에 Geolocation 지원 여부 판단
            //PositionOptions객체 설정용]
            var options = {timeout:3000,maxinumAge:5000};
            //현재 위치 정보 딱 한번만 얻기
            navigator.geolocation.getCurrentPosition(successCallback);           
        }
        //위치 정보를 얻었을 때 자동으로 호출되는 콜백 함수 : 인자는 Position객체
        function successCallback(position){
            //위도/경도얻기
            var lat = position.coords.latitude;
            var lng = position.coords.longitude;
            //div에 지도 표시하기
            dispalyKakaomap(lat,lng);
        }///////successCallback
        function dispalyKakaomap(lat,lng){

			var container = document.getElementById('map');
			var options = {
				center: new kakao.maps.LatLng(lat, lng),
				level: 5
			};
			var map = new kakao.maps.Map(container, options);
			
	        var zoomControl = new kakao.maps.ZoomControl();
	        map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);


	        // 지도를 클릭한 위치에 표출할 마커입니다
	        var marker = new kakao.maps.Marker({ 
	            // 지도 중심좌표에 마커를 생성합니다 
	            position: map.getCenter() 
	        }); 
	        // 지도에 마커를 표시합니다
	        marker.setMap(map);
	        
	        // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다

	        // 지도에 클릭 이벤트를 등록합니다
	        // 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
	        kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
	            
	            // 클릭한 위도, 경도 정보를 가져옵니다 
	            var latlng = mouseEvent.latLng; 
	            
	            // 마커 위치를 클릭한 위치로 옮깁니다
	            marker.setPosition(latlng);
	         
	            var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
	            message += '경도는 ' + latlng.getLng() + ' 입니다';
	            
	            var resultDiv = document.getElementById('clickLatlng'); 
	            resultDiv.innerHTML = message;
	            $("input[name=rvLat]").val(latlng.getLat());
	            $("input[name=rvLng]").val(latlng.getLng());
	        });
        }
      
	</script>

 -->