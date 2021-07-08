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
			<div> 프로필 출력
         
			     </div>
			<ul class="font_8">
			
			
			<li><a href="<c:url value="/Profile/Main/NickName.do?nickName=KOO"/>">KOO의
											ProfileMain</a></li>
			
			<c:if test="${not empty sessionScope.userError }" var="userError">
				<div style="color:red">해당하는 닉네임의 사용자가 없습니다</div>
			</c:if>
			</ul>


			<h1 class="font_0" style="line-height: 1.41em; font-size: 22px">
				<span class="color_32">👑${otherProfile.nickName}<span style="font-weight: bold">
						LV.${otherProfile.lev}</span><br></span>
			</h1>

			<p class="font_8"
				style="text-align: left; line-height: 1.75em; font-size: 18px">
				<span> 닉네임 :  	
         아이디 :  ${otherProfile.id}
         이메일 :  ${otherProfile.mail}
         여행 성향 : ${sotherProfile.trvprpns} <br/>
         PR :  ${otherProfile.pr}
         프사 :  ${otherProfile.prfImage}
         성별 :  ${otherProfile.gender}
         생일 :  ${otherProfile.birth}
         폰 번호 :  ${otherProfile.phone}
         레벨 :  
         경험치 :  ${otherProfile.exp}
         공개 여부 :  ${otherProfile.openprf} </span>
			</p>



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