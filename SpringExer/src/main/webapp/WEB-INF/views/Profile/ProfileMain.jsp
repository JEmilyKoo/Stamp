<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="enable-scroll" lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--내가 추가한 코드-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/css.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">

<title>프로필 | 찍GO</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/templates/Top.jsp" />
	<div class="profileContainer">
		<div class="profileSideBar">
			<jsp:include page="/WEB-INF/views/templates/ProfileSideBar.jsp" />
		</div>
		<div class="profileMain">
			남의 프로필을 출력합니다 ${sessionScope.otherProfile}

			<ul class="font_8">
				<li><a href="<c:url value="/Profile/NewProfile.do"/>">
						<button style="border: green 1px solid" id="newProfile">프로필을
							세션에 암거나 자동으로 채우는 버튼</button>
				</a></li>
				<li><a href="<c:url value="/Profile/NewInsertProfile.do"/>">
						<button style="border: red 1px solid" id="newInsertProfile">세션에
							있는 프로필을 인서트하는 버튼(여러번 누르면 에러남)</button>
				</a></li>
				<li><a href="<c:url value="/Profile/SelectProfile.do"/>">
						<button style="border: blue 1px solid" id="selectProfile">세션에
							있는 프로필을 가지고 선택해 또 새로 세션에 불러오는 버튼(첫번째 버튼 누르고 눌러야함)</button>
				</a></li>
				<li><a href="<c:url value="/Profile/SelectMemberProfile.do"/>">
						<button style="border: yellow 1px solid" id="selectMemberProfile">세션에
							있는 로그인을 가지고 선택해 세션에 불러오는 버튼</button>
				</a></li>
				<li><a href="<c:url value="/Profile/UpdateProfile.do"/>">
						<button style="border: black 1px solid" id="updateProfile">(profileDTO받아와야해서
							안돌아감)기존에 있는 프로필을 업데이트하는 버튼</button>
				</a></li>
				<li><a
					href="<c:url value="/Profile/UpdateNicknameProfile.do"/>">
						<button style="border: orange 1px solid"
							id="updateNicknameProfile">(profileDTO받아와야해서 안돌아감)기존 프로필
							중에서 닉네임만 딱 업데이트하는 버튼</button>
				</a></li>
				<li><a href="<c:url value="/Profile/DeleteProfile.do"/>">
						<button style="border: purple 1px solid" id="deleteProfile">(profileDTO받아와야해서
							안돌아감)기존 프로필 지워버리는 버튼</button>
				</a></li>

			</ul>


			<h1 class="font_0" style="line-height: 1.41em; font-size: 22px">
				<span class="color_32">👑구정은<span style="font-weight: bold">
						LV.10</span><br></span>
			</h1>

			<p class="font_8"
				style="text-align: left; line-height: 1.75em; font-size: 18px">
				<span> profile세션보여주는칸: ${sessionScope.profile} </span>
			</p>




			<!-- 뱃지 시작 -->
			<h2 class="font_4 color_32"
				style="padding: 30px; text-align: center;">뱃지</h2>
			<p class="font_8 color_5"
				style="text-align: center; margin: 0px 0px 40px 0px">획득한 뱃지를
				확인하세요</p>
			<div class="badgeListContainer"
				style="text-align: center; display: grid; margin: 0px 0px 40px 0px;  gap: 20px; padding: 10px; row-gap: 50px; grid-template-columns: repeat(3, 1fr);">
				<div >
					<img
						src="${pageContext.request.contextPath}/images/profile/badge/badge1.png"
						alt="산뱃지"
						style="width: 301px; height: 300px; object-fit: contain; object-position: center center;">
					<h3 class="profileMainEachName">타고</h3>
					<p class="font_8 color_5"
				style="text-align: center; margin: 0px 0px 20px 0px">숲 많이 가서 획득</p>
					<div id="oneButtonId" aria-disabled="false" class="oneButton"
						style="padding: 10px; height: 30px; justify-content: center">
						<!-- 누르면 프로필 메인 페이지로 돌아감 -->
						<a href="<c:url value="/Profile/Main.do"/>"
							class="oneButtonLinkClass"> <span class="oneButtonSpanClass">상세
								보기</span>
						</a>
					</div>
				</div>
				<!-- 스탬프 반복 -->
				<div >
					<img
						src="${pageContext.request.contextPath}/images/profile/badge/badge2.png"
						alt="산뱃지"
						style="width: 301px; height: 300px; object-fit: contain; object-position: center center;">
					<h3 class="profileMainEachName">타고</h3>
					<p class="font_8 color_5"
				style="text-align: center; margin: 0px 0px 20px 0px">바다 많이 가서 획득</p>
					<div id="oneButtonId" aria-disabled="false" class="oneButton"
						style="padding: 10px; height: 30px; justify-content: center">
						<!-- 누르면 프로필 메인 페이지로 돌아감 -->
						<a href="<c:url value="/Profile/Main.do"/>"
							class="oneButtonLinkClass"> <span class="oneButtonSpanClass">상세
								보기</span>
						</a>
					</div>
					<!-- 스탬프 반복 -->
				</div>
				<div >
					<img
						src="${pageContext.request.contextPath}/images/profile/badge/badge3.png"
						alt="산뱃지"
						style="width: 301px; height: 300px; object-fit: contain; object-position: center center;">
					<h3 class="profileMainEachName">타고</h3>
					<p class="font_8 color_5"
				style="text-align: center; margin: 0px 0px 20px 0px">산 많이 가서 획득</p>
				<div id="oneButtonId" aria-disabled="false" class="oneButton"
						style="padding: 10px; height: 30px; justify-content: center">
						<!-- 누르면 프로필 메인 페이지로 돌아감 -->
						<a href="<c:url value="/Profile/Main.do"/>"
							class="oneButtonLinkClass"> <span class="oneButtonSpanClass">상세
								보기</span>
						</a>
					</div>
					<!-- 스탬프 반복 -->
				</div>
			</div>


			<!-- 스탬프 리스트 시작 -->
			<h2 class="font_4 color_32"
				style="padding: 30px; text-align: center;">스탬프</h2>
			<p class="font_8 color_5"
				style="text-align: center; margin: 0px 0px 40px 0px">획득한 스탬프를
				확인하세요</p>
			<div class="stampListContainer"
				style="text-align: center; display: grid; margin: 0px 0px 40px 0px; gap: 20px; padding: 10px; row-gap: 50px; grid-template-columns: repeat(4, 1fr);">
				<div >
					<img
						src="${pageContext.request.contextPath}/images/stamp/stamp3.png"
						alt="Client 3"
						style="width: 220px; height: 280px; object-fit: contain; object-position: center center;">
					<h3 class="profileMainEachName">타고</h3>
					<div id="oneButtonId" aria-disabled="false" class="oneButton"
						style="padding: 10px; height: 30px; justify-content: center">
						<!-- 누르면 프로필 메인 페이지로 돌아감 -->
						<a href="<c:url value="/Profile/Main.do"/>"
							class="oneButtonLinkClass"> <span class="oneButtonSpanClass">상세
								보기</span>
						</a>
					</div>
				</div>
				<!-- 스탬프 반복 -->
				<div >
					<img
						src="${pageContext.request.contextPath}/images/stamp/stamp3.png"
						alt="Client 3"
						style="width: 220px; height: 280px; object-fit: contain; object-position: center center;">
					<h3 class="profileMainEachName">타고</h3>
					<div id="oneButtonId" aria-disabled="false" class="oneButton"
						style="padding: 10px; height: 30px; justify-content: center">
						<!-- 누르면 프로필 메인 페이지로 돌아감 -->
						<a href="<c:url value="/Profile/Main.do"/>"
							class="oneButtonLinkClass"> <span class="oneButtonSpanClass">상세
								보기</span>
						</a>
					</div>
					<!-- 스탬프 반복 -->
				</div>
				<div >
					<img
						src="${pageContext.request.contextPath}/images/stamp/stamp3.png"
						alt="Client 3"
						style="width: 220px; height: 280px; object-fit: contain; object-position: center center;">
					<h3 class="profileMainEachName">타고</h3>
					<div id="oneButtonId" aria-disabled="false" class="oneButton"
						style="padding: 10px; height: 30px; justify-content: center">
						<!-- 누르면 프로필 메인 페이지로 돌아감 -->
						<a href="<c:url value="/Profile/Main.do"/>"
							class="oneButtonLinkClass"> <span class="oneButtonSpanClass">상세
								보기</span>
						</a>
					</div>
					<!-- 스탬프 반복 -->
				</div>
				<div >
					<img
						src="${pageContext.request.contextPath}/images/stamp/stamp3.png"
						alt="Client 3"
						style="width: 220px; height: 280px; object-fit: contain; object-position: center center;">
					<h3 class="profileMainEachName">타고</h3>
					<div id="oneButtonId" aria-disabled="false" class="oneButton"
						style="padding: 10px; height: 30px; justify-content: center">
						<!-- 누르면 프로필 메인 페이지로 돌아감 -->
						<a href="<c:url value="/Profile/Main.do"/>"
							class="oneButtonLinkClass"> <span class="oneButtonSpanClass">상세
								보기</span>
						</a>
					</div>
					<!-- 스탬프 반복 -->
				</div>

				<div >
					<img
						src="${pageContext.request.contextPath}/images/stamp/stamp3.png"
						alt="Client 3"
						style="width: 220px; height: 280px; object-fit: contain; object-position: center center;">
					<h3 class="profileMainEachName">타고</h3>
					<div id="oneButtonId" aria-disabled="false" class="oneButton"
						style="padding: 10px; height: 30px; justify-content: center">
						<!-- 누르면 프로필 메인 페이지로 돌아감 -->
						<a href="<c:url value="/Profile/Main.do"/>"
							class="oneButtonLinkClass"> <span class="oneButtonSpanClass">상세
								보기</span>
						</a>
					</div>
				</div>
				<!-- 스탬프 반복 -->
				<div >
					<img
						src="${pageContext.request.contextPath}/images/stamp/stamp3.png"
						alt="Client 3"
						style="width: 220px; height: 280px; object-fit: contain; object-position: center center;">
					<h3 class="profileMainEachName">타고</h3>
					<div id="oneButtonId" aria-disabled="false" class="oneButton"
						style="padding: 10px; height: 30px; justify-content: center">
						<!-- 누르면 프로필 메인 페이지로 돌아감 -->
						<a href="<c:url value="/Profile/Main.do"/>"
							class="oneButtonLinkClass"> <span class="oneButtonSpanClass">상세
								보기</span>
						</a>
					</div>
					<!-- 스탬프 반복 -->
				</div>
				<div >
					<img
						src="${pageContext.request.contextPath}/images/stamp/stamp3.png"
						alt="Client 3"
						style="width: 220px; height: 280px; object-fit: contain; object-position: center center;">
					<h3 class="profileMainEachName">타고</h3>
					<div id="oneButtonId" aria-disabled="false" class="oneButton"
						style="padding: 10px; height: 30px; justify-content: center">
						<!-- 누르면 프로필 메인 페이지로 돌아감 -->
						<a href="<c:url value="/Profile/Main.do"/>"
							class="oneButtonLinkClass"> <span class="oneButtonSpanClass">상세
								보기</span>
						</a>
					</div>
					<!-- 스탬프 반복 -->
				</div>
				<div >
					<img
						src="${pageContext.request.contextPath}/images/stamp/stamp3.png"
						alt="Client 3"
						style="width: 220px; height: 280px; object-fit: contain; object-position: center center;">
					<h3 class="profileMainEachName">타고</h3>
					<div id="oneButtonId" aria-disabled="false" class="oneButton"
						style="padding: 10px; height: 30px; justify-content: center">
						<!-- 누르면 프로필 메인 페이지로 돌아감 -->
						<a href="<c:url value="/Profile/Main.do"/>"
							class="oneButtonLinkClass"> <span class="oneButtonSpanClass">상세
								보기</span>
						</a>
					</div>
					<!-- 스탬프 반복 -->
				</div>

			</div>
			<!--stamplist 끝-->

			<!-- 업적 시작 -->
			<h2 class="font_4 color_32"
				style="padding: 30px; text-align: center;">​업적</h2>
			<p class="font_8 color_5"
				style="text-align: center; margin: 0px 0px 40px 0px">그간의 업적을
				확인하세요</p>
			<div class="achievementContainer"
				style="display: grid; gap: 30px; margin: 0px 0px 40px 0px; padding: 10px; row-gap: 50px; grid-template-columns: 2fr 1fr;">
				<div>프로그레시브 바</div>
				<!-- 프로그레시브 바 -->
				<div >
					<h2 class="font_6"
						style="text-align: left; line-height: 1.35em; font-size: 40px">
						<span class="color_32"><span
							style="text-transform: uppercase;">서울 스탬프 올클</span></span>
					</h2>
					<p class="font_8"
						style="text-align: left; line-height: 1.75em; font-size: 18px">
						<span>65% 달성</span>
					</p>
				</div>
				<!-- 화이트 -->

				<div>프로그레시브 바</div>
				<!-- 프로그레시브 바 -->
				<div >
					<h2 class="font_6"
						style="text-align: left; line-height: 1.35em; font-size: 40px">
						<span class="color_32"><span
							style="text-transform: uppercase;">산 스탬프 5개 모으기</span></span>
					</h2>
					<p class="font_8"
						style="text-align: left; line-height: 1.75em; font-size: 18px">
						<span>20% 달성</span>
					</p>
				</div>
				<!-- 화이트 -->

				<div>프로그레시브 바</div>
				<!-- 프로그레시브 바 -->
				<div >
					<h2 class="font_6"
						style="text-align: left; line-height: 1.35em; font-size: 40px">
						<span class="color_32"><span
							style="text-transform: uppercase;">산 스탬프 100개 모으기</span></span>
					</h2>
					<p class="font_8"
						style="text-align: left; line-height: 1.75em; font-size: 18px">
						<span>50% 달성</span>
					</p>
				</div>
				<!-- 화이트 -->
			</div>
			<!-- class="achievementContainer" -->



		</div></div>
</body>
</html>