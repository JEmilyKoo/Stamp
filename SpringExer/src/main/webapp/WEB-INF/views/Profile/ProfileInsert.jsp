<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<meta name="viewport" content="width=device-width, initial-scale=1"
	id="wixDesktopViewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--내가 추가한 코드-->

<!--  추가로 구현이 필요한 사항 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/css.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/common-site-members-dialogs.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">


<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/common-site-members-dialogs.css">

<!-- 부트스트랩 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">


<title>프로필 만들기 | 찍GO</title>


<style>
#마스터페이지 { -
	-pinned-layers-in-page: 0
}

#pageBackground_ldtv2 { -
	-bg-position: absolute; -
	-bg-overlay-color: rgb(var(- -color_11)); -
	-fill-layer-background-overlay-color: transparent; -
	-fill-layer-background-overlay-position: absolute
}
</style>
</head>
<body class="blockSiteScrolling"
	style="-blocked-site-scroll-margin-top: 0.5px;">

	<div id="SITE_CONTAINER">
		<div id="main_MF">
			<div id="site-root">
				<div class="_11F4V" data-testid="siteMembersDialogLayout"
					data-layout="fullscreen">
					<div class="WmezM" data-testid="siteMembersDialogBlockingLayer"></div>
					<div role="dialog" tabindex="-1"
						aria-labelledby="signUpHeadline_SM_ROOT_COMP12" class="akXcv"
						data-dialogposition="start">
						<button onclick="goBack()" class="_8vZ-e" data-testid="xButton"
							aria-label="닫기" type="button">
							<svg width="24" height="24" viewBox="0 0 24 24">
							 
								<defs>
								
								<filter id="close_svg__a" width="136.7%" height="135.5%"
									x="-18.3%" y="-17.8%" filterUnits="objectBoundingBox">

<feMorphology in="SourceAlpha" operator="dilate" radius="9"
									result="shadowSpreadOuter1"></feMorphology>

<feOffset dx="2" dy="12" in="shadowSpreadOuter1"
									result="shadowOffsetOuter1"></feOffset>
								<feGaussianBlur in="shadowOffsetOuter1"
									result="shadowBlurOuter1" stdDeviation="14"></feGaussianBlur>

<feColorMatrix in="shadowBlurOuter1" result="shadowMatrixOuter1"
									values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.15 0"></feColorMatrix>
<feMerge>
								<feMergeNode in="shadowMatrixOuter1"></feMergeNode>
								<feMergeNode in="SourceGraphic"></feMergeNode></feMerge>
								
								</filter> </defs>
								
								<g fill-rule="evenodd" filter="url(#close_svg__a)"
									transform="translate(-421 -24)">
								<path
									d="M439.77 28l1.23 1.23-6.77 6.77 6.77 6.77-1.23 1.23-6.77-6.77-6.77 6.77-1.23-1.23 6.769-6.77L425 29.23l1.23-1.23 6.77 6.769L439.77 28z"></path></g></svg>

						</button>

						<div id="SM_ROOT_COMP12" class="_2nKSe" style="top:130px">
							<h1 id="signUpHeadline_SM_ROOT_COMP12" class="_15DDX"
								>프로필 생성하기</h1>
							<div class="_6UDPd _14jSF _2QSEv">
								<div class="_1axeK"></div>

								<form id="myform" name='homeForm' method="post"
									class="form-horizontal"
									action="<c:url value="/Profile/Insert.do"/>">


									<div class="aonqC">


										<!-- 이름시작 -->
										<div class="MQAj0">
											<div id="nickNameDiv" class="_1ggNP">
												<div id="nickNameInput" class="_1FsS0 _36G3j _19QH-">
													<label for="nickName" class="_1qrSw">닉네임</label>
													<div class="ABx0f">
														<input id="nickName" name="nickName"
															class="_3rh7f has-custom-focus" type="text" required
															autocomplete="off" style="font-size: 14px">
													</div>
													<c:if test="${not empty sessionScope.error }" var="error">
														<div class="joinError">중복된 닉네임입니다</div>

													</c:if>
												</div>
											</div>
										</div>
										<!-- 이름 끝 -->

<!-- 메일시작 -->
										<div class="MQAj0">
											<div id="mailDiv" class="_1ggNP">
												<div id="mailInput" class="_1FsS0 _36G3j _19QH-">
													<label for="mail" class="_1qrSw">이메일</label>
													<div class="ABx0f">
														<input id="mail" name="mail"
															class="_3rh7f has-custom-focus" type="text" required
															autocomplete="off" style="font-size: 14px">
													</div>
												</div>
											</div>
										</div>
										<!-- 매일 끝 -->
								<!-- TRVPRPNS시작 -->
										<div class="MQAj0">
											<div id="trvprpnsDiv" class="_1ggNP">
												<div id="trvprpnsInput" class="_1FsS0 _36G3j _19QH-">
													<label for="trvprpns" class="_1qrSw">여행 성향</label>
													<div class="ABx0f"> 
														<input id="trvprpns" name="trvprpns"
															class="_3rh7f has-custom-focus" type="text" required
															autocomplete="off" style="font-size: 14px">
													</div>
												</div>
											</div>
										</div>
										<!-- TRVPRPNS 끝 -->		
										
										
										<!-- PR시작 -->
										<div class="MQAj0">
											<div id="prDiv" class="_1ggNP">
												<div id="prInput" class="_1FsS0 _36G3j _19QH-">
													<label for="pr" class="_1qrSw">한줄소개</label>
													<div class="ABx0f">
														<input id="pr" name="pr"
															class="_3rh7f has-custom-focus" type="text" required
															autocomplete="off" style="font-size: 14px">
													</div>
												</div>
											</div>
										</div>
										<!-- PR 끝 -->
										
											<!-- PRFIMAGE시작 로고 올리는 기능은 한계를 벗어나서 패스 
										<div class="MQAj0">
											<div id="prfimageDiv" class="_1ggNP">
												<div id="ninkNameInput" class="_1FsS0 _36G3j _19QH-">
													<label for="ninkName" class="_1qrSw">이름</label>
													<div class="ABx0f">
														<input id="ninkName" name="ninkNname"
															class="_3rh7f has-custom-focus" type="text" required
															autocomplete="off" style="font-size: 14px">
													</div>
													<c:if test="${not empty sessionScope.error }" var="error">
														<div class="joinError">중복된 아이디입니다</div>

													</c:if>
												</div>
											</div>
										</div>
										 PRFIMAGE 끝 -->
										
											<!-- GENDER시작 -->
										<div class="MQAj0">
											<div id="genderDiv" class="_1ggNP">
												<div id="genderInput" class="_1FsS0 _36G3j _19QH-">
													<label for="gender" class="_1qrSw">성별</label>
													<div class="ABx0f">
														<input id="gender" name="gender"
															class="_3rh7f has-custom-focus" type="text" required
															autocomplete="off" style="font-size: 14px">
													</div>
												</div>
											</div>
										</div>
										<!-- GENDER 끝 -->	
										
										<!-- BIRTH시작 -->
										<div class="MQAj0">
											<div id="birthDiv" class="_1ggNP">
												<div id="birthInput" class="_1FsS0 _36G3j _19QH-">
													<label for="birth" class="_1qrSw">생일</label>
													<div class="ABx0f">
														<input id="birth" name="birth"
															class="_3rh7f has-custom-focus" type="text" required
															autocomplete="off" style="font-size: 14px">
													</div>
												</div>
											</div>
										</div>
										<!-- BIRTH 끝 -->	
										
										
										<!-- PHONE시작 -->
										<div class="MQAj0">
											<div id="phoneDiv" class="_1ggNP">
												<div id="phoneInput" class="_1FsS0 _36G3j _19QH-">
													<label for="phone" class="_1qrSw">전화 번호</label>
													<div class="ABx0f">
														<input id="phone" name="phone"
															class="_3rh7f has-custom-focus" type="tel" required
															autocomplete="off" style="font-size: 14px">
													</div>
												</div>
											</div>
										</div>
										<!-- PHONE 끝 -->	
										
										
										<!-- OPENPRF시작 -->
										<div class="MQAj0">
											<div id="openprfDiv" class="_1ggNP">
												<div id="openprfDInput" class="_1FsS0 _36G3j _19QH-">
													<label for="openprfD" class="_1qrSw">프로필 공개 여부</label>
														
															<div class="ABx0f">
															<input  type="radio"  id="openprfD0" name="openprfD"
															
															autocomplete="off" style="font-size: 14px">
															<label for="openprf0"  class="_1qrSw" value="0">공개</label>
															</div>
															<!--
															<div class="ABx0f">
															<input  type="radio"  id="openprfD1" name="openprfD"
															
															autocomplete="off" style="font-size: 14px">
															<label for="openprfD1" class="_1qrSw">전화번호 비공개</label>
															</div>
															
															<div class="ABx0f">
															<input  type="radio"  id="openprfD2" name="openprfD"
															
															autocomplete="off" style="font-size: 14px">
															<label for="openprfD2" class="_1qrSw">전화번호 성별 생일 비공개</label>
															</div>
															
															<div class="ABx0f">
															<input  type="radio"  id="openprfD3" name="openprfD"
															
															autocomplete="off" style="font-size: 14px">
															<label for="openprfD3" class="_1qrSw">전화번호 성별 생일 메일 여행 성향 비공개</label>
															</div>
															  -->
															<div class="ABx0f">
															<input  type="radio"  id="openprfD4" name="openprfD"
															
															autocomplete="off" style="font-size: 14px">
															<label for="openprfD4" class="_1qrSw" value="5">비공개</label>
															</div>
															
															
															
															
															
													</div>
												</div>
											</div>
										</div>
										<!-- OPENPRF 끝 -->
										
										


									<div class=" _2KYMK">
										<div id="okButton_SM_ROOT_COMP12" aria-disabled="false"
											class="oneButton">
											<button type="submit" class="oneButtonLinkClass boxButton">
												<span class="oneButtonSpanClass">생성하기</span>
											</button>
										</div>
									</div>



								</form>
								<!-- 새 폼 끝-->

								
							</div>
						</div>
					</div>
					<div></div>
				</div>
			</div>
		</div>

		<script>
			function goBack() {
				//location.href = '/exer/Stamp/guide.do';
				window.history.back();
			}
		</script>
</body>
</html>