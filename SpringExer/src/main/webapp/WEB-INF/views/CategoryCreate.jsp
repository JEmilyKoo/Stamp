<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="enable-scroll" lang="ko">
<head>
</head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1"
	id="wixDesktopViewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--내가 추가한 코드-->
<script src="${pageContext.request.contextPath}/stampGO_files/bundle.js"></script>
<script type="text/javascript" charset="utf-8" async=""
	data-requirecontext="_"
	data-requiremodule="https://static.parastorage.com/services/profile-card-tpa-ooi/1.277.0/ProfileCardViewerWidget.bundle.min.js"
	src="${pageContext.request.contextPath}/stampGO_files/ProfileCardViewerWidget.js"></script>
<script type="text/javascript" charset="utf-8" async=""
	data-requirecontext="_"
	data-requiremodule="https://static.parastorage.com/services/pro-gallery-santa-wrapper/1.1612.0/viewer.bundle.min.js"
	src="${pageContext.request.contextPath}/stampGO_files/viewer.js"></script>
<script type="text/javascript" charset="utf-8" async=""
	data-requirecontext="_"
	data-requiremodule="https://static.parastorage.com/services/communities-forum-client/1.432.0/forum-app-viewer.bundle.min.js"
	src="${pageContext.request.contextPath}/stampGO_files/forum-app-viewer.js"></script>
<!-- base href="https://jemilykoo.wixsite.com/website/" -->
<meta name="generator" content="Wix\.com Website Builder">
<!--내가 추가한 코드-->

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/css.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/TripBoardEdit.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">


<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/categories-manager-modal.chunk.min.css">

<style>
</style>

</head>
<body class="vsc-initialized _1Arx3 _1vwX8 _1Fqrx al-active">

	<jsp:include page="/WEB-INF/views/templates/Top.jsp" />


	<div dir="ltr">
		<div class="기종별테스트 md lt-lg lt-xl gt-xs gt-sm sidebar-on">
			<div id="content-wrapper"
				class="컨텐츠래퍼 _2OKxY _3KFQm app-desktop forum-background-color">
				<div class="모달오버레이  _1MfyE" id="modal-overlay">
					<div style="z-index: 0; position: absolute; inset: 0px;">
						<span style="pointer-events: auto;">

							<main class="모달페이지 _1ghDI _37pY2" data-hook="modal-page"
								role="dialog" tabindex="0" aria-labelledby="1624438295539">
								<div>
									<div class="백그라운드설정 _3dS9w _2mE68 modal__overlay"></div>
								</div>
								<div>
									<div class="_3dS9w _2mE68 modal__overlay"></div>
								</div>
								<div
									class="포럼카드백그라운드 default-forum-card-background-color color-5-text RDAxO"
									data-hook="modal-layout"
									style="border-color: rgba(0, 0, 0, 0.2);">
									<div
										class="디폴트포럼카드백그라운드컬러 VO0cM default-forum-card-background-color">
										<div role="form"
											class="카테고리세팅폼 m3iAd forum-content-classic-font"
											data-hook="category-settings-form" tabindex="-1"
											aria-labelledby="frm-category-setting-form-header"
											style="color: rgb(0, 0, 0);">
											<div class="카테고리플렉스 swFt8">
												<div>
													<div class="모달패딩 _2M1V_">
														<div class="카테고리추가 _25dL0">
															<button class="뒤로버튼 _36qwW" aria-label="뒤로">
																<svg xmlns="http://www.w3.org/2000/svg" role="img"
																	width="24" height="24" viewBox="0 0 24 24"
																	class="_2lWY3 forum-icon-fill button-hover-fill">
                                <path fill-rule="evenodd"
																		d="M6.707 13l4.148 4.148c.195.195.195.512 0 .707-.195.196-.512.196-.707 0L4.793 12.5l5.355-5.347c.195-.195.512-.195.707 0 .195.196.195.512 0 .707L6.707 12H19v1H6.707z"></path>
                              </svg>
															</button>
															<h3 id="frm-category-setting-form-header"
																class="카테고리추가글씨 _2ylhw forum-title-classic-font">카테고리
																추가</h3>
														</div>
														<div class="카테고리정보박스 _2hAOa">
															<div
																class="카테고리정보내용물 _3Cioj _2T62w forum-separator-background-color">

															</div>
															<button
																class="카테고리정보버튼 _1PE8X forum-icon-fill button-hover-color button-hover-fill"
																aria-expanded="true" role="region">
																<div class="카테고리정보글씨 forum-title-classic-font _1Rnxg">
																	카테고리 정보</div>
																<span class="_3KLik _2HD6r"><svg
																		xmlns="http://www.w3.org/2000/svg" width="19"
																		height="19" viewBox="0 0 19 19">
																		<defs>
																		<path id="01.-default-down-a"
																			d="M11.4964212,9.69999981 L6.06615558,14.8757976 C5.97794814,14.9598716 5.97794814,15.0961824 6.06615558,15.1802563 L6.54529666,15.6369443 C6.6335041,15.7210183 6.77651661,15.7210183 6.86472405,15.6369443 L12.9338444,9.85222916 C12.9779481,9.81019218 13,9.755096 13,9.69999981 C13,9.64490362 12.9779481,9.58980744 12.9338444,9.54777046 L6.86472405,3.76305527 C6.77651661,3.67898132 6.6335041,3.67898132 6.54529666,3.76305527 L6.06615558,4.21974331 C5.97794814,4.30381726 5.97794814,4.44012806 6.06615558,4.52420201 L11.4964212,9.69999981 Z"></path></defs>
																		<use transform="rotate(90 9.5 9.7)"
																			xlink:href="#01.-default-down-a"></use></svg></span>
															</button>
															<div class="_3bgF_" aria-hidden="false" role="region"
																style="height: 633px; visibility: visible; overflow: visible;">
																<div class="_1AwJg">
																	<div class="_3bWcK">
																		<div class="_2-_9a _3E-Mz">
																			<div class="s1OaD">
																				<label class="_3VKv5">이름</label>
																				<div class="_2olh8"
																					titlefontclassname="forum-title-classic-font"
																					aria-label="해당 카테고리명은 게시판 메인 페이지와 탐색 메뉴에 표시됩니다."
																					appeardelay="500" direction="ltr">
																					<svg xmlns="http://www.w3.org/2000/svg" width="24"
																						height="24" viewBox="0 0 24 24" role="img"
																						class="icon-fill">
																						<path
																							d="M12,4 C16.418278,4 20,7.581722 20,12 C20,16.418278 16.418278,20 12,20 C7.581722,20 4,16.418278 4,12 C4,7.581722 7.581722,4 12,4 Z M12,4.88888889 C8.07264178,4.88888889 4.88888889,8.07264178 4.88888889,12 C4.88888889,15.9273582 8.07264178,19.1111111 12,19.1111111 C15.9273582,19.1111111 19.1111111,15.9273582 19.1111111,12 C19.1111111,8.07264178 15.9273582,4.88888889 12,4.88888889 Z M12.7838529,10.4646465 L12.7838529,14.7124624 L13.2929293,14.7372503 L13.2929293,15.5555556 L11.1111111,15.5555556 L11.1111111,14.7709045 L11.3086109,14.7525481 C11.4933507,14.7353636 11.6400629,14.5975733 11.6738544,14.4213422 L11.6812046,14.3437006 C11.6879039,14.3128522 11.6879039,13.3839213 11.6812046,11.5569081 C11.6796087,11.3991695 11.6102745,11.3203002 11.473202,11.3203002 C11.4690281,11.3190832 11.3483311,11.3190832 11.1111111,11.3203002 L11.1111111,10.4646465 L12.7838529,10.4646465 Z M12.020202,7.55555556 C12.5222791,7.55555556 12.9292929,7.96256942 12.9292929,8.46464646 C12.9292929,8.96672351 12.5222791,9.37373737 12.020202,9.37373737 C11.518125,9.37373737 11.1111111,8.96672351 11.1111111,8.46464646 C11.1111111,7.96256942 11.518125,7.55555556 12.020202,7.55555556 Z"
																							id="🎨-Color"></path></svg>
																				</div>
																			</div>
																		</div>
																		<input type="text"
																			data-hook="category-settings-form__title"
																			id="INPUT_ID_CATEGORY_TITLE" class="_31QuG _2oVwR"
																			placeholder="카테고리명을 입력하세요." value="새 카테고리"
																			style="border: 1px solid rgba(0, 0, 0, 0.2);">
																	</div>
																	<div class="_3bWcK">
																		<div class="_2-_9a _3E-Mz">
																			<div class="s1OaD">
																				<label class="_3VKv5">머리글 제목</label>
																				<div class="_2olh8"
																					titlefontclassname="forum-title-classic-font"
																					aria-label="카테고리 페이지에 표시될 제목을 추가하세요."
																					appeardelay="500" direction="ltr">
																					<svg xmlns="http://www.w3.org/2000/svg" width="24"
																						height="24" viewBox="0 0 24 24" role="img"
																						class="icon-fill">
																						<path
																							d="M12,4 C16.418278,4 20,7.581722 20,12 C20,16.418278 16.418278,20 12,20 C7.581722,20 4,16.418278 4,12 C4,7.581722 7.581722,4 12,4 Z M12,4.88888889 C8.07264178,4.88888889 4.88888889,8.07264178 4.88888889,12 C4.88888889,15.9273582 8.07264178,19.1111111 12,19.1111111 C15.9273582,19.1111111 19.1111111,15.9273582 19.1111111,12 C19.1111111,8.07264178 15.9273582,4.88888889 12,4.88888889 Z M12.7838529,10.4646465 L12.7838529,14.7124624 L13.2929293,14.7372503 L13.2929293,15.5555556 L11.1111111,15.5555556 L11.1111111,14.7709045 L11.3086109,14.7525481 C11.4933507,14.7353636 11.6400629,14.5975733 11.6738544,14.4213422 L11.6812046,14.3437006 C11.6879039,14.3128522 11.6879039,13.3839213 11.6812046,11.5569081 C11.6796087,11.3991695 11.6102745,11.3203002 11.473202,11.3203002 C11.4690281,11.3190832 11.3483311,11.3190832 11.1111111,11.3203002 L11.1111111,10.4646465 L12.7838529,10.4646465 Z M12.020202,7.55555556 C12.5222791,7.55555556 12.9292929,7.96256942 12.9292929,8.46464646 C12.9292929,8.96672351 12.5222791,9.37373737 12.020202,9.37373737 C11.518125,9.37373737 11.1111111,8.96672351 11.1111111,8.46464646 C11.1111111,7.96256942 11.518125,7.55555556 12.020202,7.55555556 Z"
																							id="🎨-Color"></path></svg>
																				</div>
																			</div>
																		</div>
																		<input type="text" id="INPUT_ID_HEADER_TITLE"
																			class="_31QuG _2oVwR" placeholder="제목 추가"
																			value="새 카테고리"
																			style="border: 1px solid rgba(0, 0, 0, 0.2);">
																	</div>
																	<div class="_3bWcK">
																		<div class="_2-_9a _3E-Mz">
																			<div class="s1OaD">
																				<label class="_3VKv5">머리글 부제</label>
																				<div class="_2olh8"
																					titlefontclassname="forum-title-classic-font"
																					aria-label="&#39;유럽 여행지 추천&#39; 등 해당 카테고리 게시물에 대한 간략한 설명을 추가하세요."
																					appeardelay="500" direction="ltr">
																					<svg xmlns="http://www.w3.org/2000/svg" width="24"
																						height="24" viewBox="0 0 24 24" role="img"
																						class="icon-fill">
																						<path
																							d="M12,4 C16.418278,4 20,7.581722 20,12 C20,16.418278 16.418278,20 12,20 C7.581722,20 4,16.418278 4,12 C4,7.581722 7.581722,4 12,4 Z M12,4.88888889 C8.07264178,4.88888889 4.88888889,8.07264178 4.88888889,12 C4.88888889,15.9273582 8.07264178,19.1111111 12,19.1111111 C15.9273582,19.1111111 19.1111111,15.9273582 19.1111111,12 C19.1111111,8.07264178 15.9273582,4.88888889 12,4.88888889 Z M12.7838529,10.4646465 L12.7838529,14.7124624 L13.2929293,14.7372503 L13.2929293,15.5555556 L11.1111111,15.5555556 L11.1111111,14.7709045 L11.3086109,14.7525481 C11.4933507,14.7353636 11.6400629,14.5975733 11.6738544,14.4213422 L11.6812046,14.3437006 C11.6879039,14.3128522 11.6879039,13.3839213 11.6812046,11.5569081 C11.6796087,11.3991695 11.6102745,11.3203002 11.473202,11.3203002 C11.4690281,11.3190832 11.3483311,11.3190832 11.1111111,11.3203002 L11.1111111,10.4646465 L12.7838529,10.4646465 Z M12.020202,7.55555556 C12.5222791,7.55555556 12.9292929,7.96256942 12.9292929,8.46464646 C12.9292929,8.96672351 12.5222791,9.37373737 12.020202,9.37373737 C11.518125,9.37373737 11.1111111,8.96672351 11.1111111,8.46464646 C11.1111111,7.96256942 11.518125,7.55555556 12.020202,7.55555556 Z"
																							id="🎨-Color"></path></svg>
																				</div>
																			</div>
																		</div>
																		<textarea id="INPUT_ID_DESCRIPTION"
																			class="_31QuG _2oVwR _3q_vY"
																			placeholder="카테고리 설명을 추가하세요."
																			style="border: 1px solid rgba(0, 0, 0, 0.2); height: 73px;">카테고리의 주제를 정해주세요. 이용자가 관심사에 따라 게시판 카테고리를 선택할 수 있습니다.</textarea>
																	</div>
																	<div
																		class="_3bWcK KmwsH _2Gt0E forum-profile-cover-background-color">
																		<div class="_36haM forum-content-classic-font">
																			<svg xmlns="http://www.w3.org/2000/svg" width="19"
																				height="19" viewBox="0 0 19 19" class="_55Vto">
																				<path id="a"
																					d="M2 6a1 1 0 0 1 1-1h2.75l.668-1.424A1 1 0 0 1 7.323 3h4.354a1 1 0 0 1 .905.576L13.25 5H16a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V6zm7.5 6a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5zm0-1a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z"></path></svg>
																			카테고리 이미지 추가<input class="_2YMao" type="file"
																				name="cover image" accept="image/*">
																		</div>
																	</div>
																	<div class="_2OKog">
																		<div class="_2-_9a _1cASl">
																			<div class="s1OaD">
																				<label class="_3VKv5">회원들이 추가할 수 있는 게시물 유형을
																					선택하세요.</label>
																				<div class="_2olh8"
																					titlefontclassname="forum-title-classic-font"
																					aria-label="그룹 대화는 공개적으로 의견을 공유하는 좋은 방법입니다. 문의를 선택하고 회원들이 문의 게시물 추가를 허용하세요. 적절한 답변에 투표하고 베스트 답변을 조회할 수 있습니다."
																					appeardelay="500" direction="ltr">
																					<svg xmlns="http://www.w3.org/2000/svg" width="24"
																						height="24" viewBox="0 0 24 24" role="img"
																						class="icon-fill">
																						<path
																							d="M12,4 C16.418278,4 20,7.581722 20,12 C20,16.418278 16.418278,20 12,20 C7.581722,20 4,16.418278 4,12 C4,7.581722 7.581722,4 12,4 Z M12,4.88888889 C8.07264178,4.88888889 4.88888889,8.07264178 4.88888889,12 C4.88888889,15.9273582 8.07264178,19.1111111 12,19.1111111 C15.9273582,19.1111111 19.1111111,15.9273582 19.1111111,12 C19.1111111,8.07264178 15.9273582,4.88888889 12,4.88888889 Z M12.7838529,10.4646465 L12.7838529,14.7124624 L13.2929293,14.7372503 L13.2929293,15.5555556 L11.1111111,15.5555556 L11.1111111,14.7709045 L11.3086109,14.7525481 C11.4933507,14.7353636 11.6400629,14.5975733 11.6738544,14.4213422 L11.6812046,14.3437006 C11.6879039,14.3128522 11.6879039,13.3839213 11.6812046,11.5569081 C11.6796087,11.3991695 11.6102745,11.3203002 11.473202,11.3203002 C11.4690281,11.3190832 11.3483311,11.3190832 11.1111111,11.3203002 L11.1111111,10.4646465 L12.7838529,10.4646465 Z M12.020202,7.55555556 C12.5222791,7.55555556 12.9292929,7.96256942 12.9292929,8.46464646 C12.9292929,8.96672351 12.5222791,9.37373737 12.020202,9.37373737 C11.518125,9.37373737 11.1111111,8.96672351 11.1111111,8.46464646 C11.1111111,7.96256942 11.518125,7.55555556 12.020202,7.55555556 Z"
																							id="🎨-Color"></path></svg>
																				</div>
																			</div>
																		</div>
																		<div id="INPUT_ID_POST_TYPES" role="radiogroup"
																			data-hook="settings-post-type">
																			<label for="postTypes-" class="iBJ8Z"><div
																					class="_2etc3">
																					<span class="_3hDbz"><input id="postTypes-"
																						class="_2aTds" type="radio" name="postTypes"
																						language="ko" value="" checked=""><span
																						class="_1yjnd button-border-color x0gYv"
																						data-hook=""><span
																							class="dX5WD button-background-color"></span></span></span>
																					<div class="_3iR_J">
																						<span class="GRMCa">그룹 대화 및 문의</span>
																					</div>
																				</div></label><label for="postTypes-discussion" class="iBJ8Z"><div
																					class="_2etc3">
																					<span class="_3hDbz"><input
																						id="postTypes-discussion" class="_2aTds"
																						type="radio" name="postTypes" language="ko"
																						value="discussion"><span
																						class="_1yjnd button-border-color"
																						data-hook="discussion"></span></span>
																					<div class="_3iR_J">
																						<span class="GRMCa">그룹 대화</span>
																					</div>
																				</div></label><label for="postTypes-question" class="iBJ8Z"><div
																					class="_2etc3">
																					<span class="_3hDbz"><input
																						id="postTypes-question" class="_2aTds"
																						type="radio" name="postTypes" language="ko"
																						value="question"><span
																						class="_1yjnd button-border-color"
																						data-hook="question"></span></span>
																					<div class="_3iR_J">
																						<span class="GRMCa">문의</span>
																					</div>
																				</div></label>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="_2hAOa">
															<div
																class="_3Cioj _2T62w forum-separator-background-color"></div>
															<button
																class="_1PE8X forum-icon-fill button-hover-color button-hover-fill"
																aria-expanded="true" role="region">
																<div class="forum-title-classic-font _1Rnxg">카테고리
																	권한</div>
																<span class="_3KLik _2HD6r"><svg
																		xmlns="http://www.w3.org/2000/svg" width="19"
																		height="19" viewBox="0 0 19 19">
																		<defs>
																		<path id="01.-default-down-a"
																			d="M11.4964212,9.69999981 L6.06615558,14.8757976 C5.97794814,14.9598716 5.97794814,15.0961824 6.06615558,15.1802563 L6.54529666,15.6369443 C6.6335041,15.7210183 6.77651661,15.7210183 6.86472405,15.6369443 L12.9338444,9.85222916 C12.9779481,9.81019218 13,9.755096 13,9.69999981 C13,9.64490362 12.9779481,9.58980744 12.9338444,9.54777046 L6.86472405,3.76305527 C6.77651661,3.67898132 6.6335041,3.67898132 6.54529666,3.76305527 L6.06615558,4.21974331 C5.97794814,4.30381726 5.97794814,4.44012806 6.06615558,4.52420201 L11.4964212,9.69999981 Z"></path></defs>
																		<use transform="rotate(90 9.5 9.7)"
																			xlink:href="#01.-default-down-a"></use></svg></span>
															</button>
															<div class="_3bgF_" aria-hidden="false" role="region"
																style="height: 343px; visibility: visible; overflow: visible;">
																<div class="_1AwJg">
																	<div>
																		<div class="_2-_9a _1cASl">
																			<div class="s1OaD">
																				<label class="_3VKv5">카테고리 액세스 권한</label>
																				<div class="_2olh8"
																					titlefontclassname="forum-title-classic-font"
																					aria-label="특정 회원, 배지, 역할 또는 구독에 액세스 권한을 제공하려면 “선택 회원” 옵션을 선택하세요."
																					appeardelay="500" direction="ltr">
																					<svg xmlns="http://www.w3.org/2000/svg" width="24"
																						height="24" viewBox="0 0 24 24" role="img"
																						class="icon-fill">
																						<path
																							d="M12,4 C16.418278,4 20,7.581722 20,12 C20,16.418278 16.418278,20 12,20 C7.581722,20 4,16.418278 4,12 C4,7.581722 7.581722,4 12,4 Z M12,4.88888889 C8.07264178,4.88888889 4.88888889,8.07264178 4.88888889,12 C4.88888889,15.9273582 8.07264178,19.1111111 12,19.1111111 C15.9273582,19.1111111 19.1111111,15.9273582 19.1111111,12 C19.1111111,8.07264178 15.9273582,4.88888889 12,4.88888889 Z M12.7838529,10.4646465 L12.7838529,14.7124624 L13.2929293,14.7372503 L13.2929293,15.5555556 L11.1111111,15.5555556 L11.1111111,14.7709045 L11.3086109,14.7525481 C11.4933507,14.7353636 11.6400629,14.5975733 11.6738544,14.4213422 L11.6812046,14.3437006 C11.6879039,14.3128522 11.6879039,13.3839213 11.6812046,11.5569081 C11.6796087,11.3991695 11.6102745,11.3203002 11.473202,11.3203002 C11.4690281,11.3190832 11.3483311,11.3190832 11.1111111,11.3203002 L11.1111111,10.4646465 L12.7838529,10.4646465 Z M12.020202,7.55555556 C12.5222791,7.55555556 12.9292929,7.96256942 12.9292929,8.46464646 C12.9292929,8.96672351 12.5222791,9.37373737 12.020202,9.37373737 C11.518125,9.37373737 11.1111111,8.96672351 11.1111111,8.46464646 C11.1111111,7.96256942 11.518125,7.55555556 12.020202,7.55555556 Z"
																							id="🎨-Color"></path></svg>
																				</div>
																			</div>
																		</div>
																		<div id="INPUT_ID_READ_PERMISSIONS" role="radiogroup">
																			<label for="type-public" class="iBJ8Z"><div
																					class="_2etc3">
																					<span class="_3hDbz"><input id="type-public"
																						class="_2aTds" type="radio" name="type"
																						language="ko" value="public" checked=""><span
																						class="_1yjnd button-border-color x0gYv"
																						data-hook="public"><span
																							class="dX5WD button-background-color"></span></span></span>
																					<div class="_3iR_J">
																						<span class="GRMCa">전체 이용자</span><span
																							class="ZTBd3">모든 사이트 방문자에게 게시물 공개</span>
																					</div>
																				</div></label><label for="type-membersOnly" class="iBJ8Z"><div
																					class="_2etc3">
																					<span class="_3hDbz"><input
																						id="type-membersOnly" class="_2aTds" type="radio"
																						name="type" language="ko" value="membersOnly"><span
																						class="_1yjnd button-border-color"
																						data-hook="membersOnly"></span></span>
																					<div class="_3iR_J">
																						<span class="GRMCa">가입 회원</span><span
																							class="ZTBd3">로그인한 방문자에게만 게시물 공개</span>
																					</div>
																				</div></label><label for="type-private" class="iBJ8Z"><div
																					class="_2etc3">
																					<span class="_3hDbz"><input
																						id="type-private" class="_2aTds" type="radio"
																						name="type" language="ko" value="private"><span
																						class="_1yjnd button-border-color"
																						data-hook="private"></span></span>
																					<div class="_3iR_J">
																						<span class="GRMCa">선택 회원</span><span
																							class="ZTBd3">개별 회원, 역할, 배지 또는 구독 선택</span>
																					</div>
																				</div></label>
																		</div>
																	</div>
																	<div class="_33eSX">
																		<div class="_2-_9a _1cASl">
																			<div class="s1OaD">
																				<label class="_3VKv5">카테고리 게시 권한</label>
																				<div class="_2olh8"
																					titlefontclassname="forum-title-classic-font"
																					aria-label="게시물 게시 권한을 일반 회원에게 허용하거나 운영자 및 관리자로 제한할 수 있습니다."
																					appeardelay="500" direction="ltr">
																					<svg xmlns="http://www.w3.org/2000/svg" width="24"
																						height="24" viewBox="0 0 24 24" role="img"
																						class="icon-fill">
																						<path
																							d="M12,4 C16.418278,4 20,7.581722 20,12 C20,16.418278 16.418278,20 12,20 C7.581722,20 4,16.418278 4,12 C4,7.581722 7.581722,4 12,4 Z M12,4.88888889 C8.07264178,4.88888889 4.88888889,8.07264178 4.88888889,12 C4.88888889,15.9273582 8.07264178,19.1111111 12,19.1111111 C15.9273582,19.1111111 19.1111111,15.9273582 19.1111111,12 C19.1111111,8.07264178 15.9273582,4.88888889 12,4.88888889 Z M12.7838529,10.4646465 L12.7838529,14.7124624 L13.2929293,14.7372503 L13.2929293,15.5555556 L11.1111111,15.5555556 L11.1111111,14.7709045 L11.3086109,14.7525481 C11.4933507,14.7353636 11.6400629,14.5975733 11.6738544,14.4213422 L11.6812046,14.3437006 C11.6879039,14.3128522 11.6879039,13.3839213 11.6812046,11.5569081 C11.6796087,11.3991695 11.6102745,11.3203002 11.473202,11.3203002 C11.4690281,11.3190832 11.3483311,11.3190832 11.1111111,11.3203002 L11.1111111,10.4646465 L12.7838529,10.4646465 Z M12.020202,7.55555556 C12.5222791,7.55555556 12.9292929,7.96256942 12.9292929,8.46464646 C12.9292929,8.96672351 12.5222791,9.37373737 12.020202,9.37373737 C11.518125,9.37373737 11.1111111,8.96672351 11.1111111,8.46464646 C11.1111111,7.96256942 11.518125,7.55555556 12.020202,7.55555556 Z"
																							id="🎨-Color"></path></svg>
																				</div>
																			</div>
																		</div>
																		<div id="INPUT_ID_WRITE_PERMISSIONS" role="radiogroup">
																			<label for="isWriteProtected-false" class="iBJ8Z"><div
																					class="_2etc3">
																					<span class="_3hDbz"><input
																						id="isWriteProtected-false" class="_2aTds"
																						type="radio" name="isWriteProtected" language="ko"
																						value="false" checked=""><span
																						class="_1yjnd button-border-color x0gYv"
																						data-hook="false"><span
																							class="dX5WD button-background-color"></span></span></span>
																					<div class="_3iR_J">
																						<span class="GRMCa">액세스 가능 회원</span>
																					</div>
																				</div></label><label for="isWriteProtected-true" class="iBJ8Z"><div
																					class="_2etc3">
																					<span class="_3hDbz"><input
																						id="isWriteProtected-true" class="_2aTds"
																						type="radio" name="isWriteProtected" language="ko"
																						value="true"><span
																						class="_1yjnd button-border-color"
																						data-hook="true"></span></span>
																					<div class="_3iR_J">
																						<span class="GRMCa">운영자 및 관리자만 게시물 추가 가능</span>
																					</div>
																				</div></label>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="_1CqyJ"
												data-hook="categories-manager-footer-buttons">
												<div class="_3Cioj forum-separator-background-color"></div>
												<div class="VO2IV">
													<div class="_3-clJ">
														<button
															class="rFYrt _2EJGy forum-content-classic-font button-border-color button-color _3plV8"
															data-hook="leftButton">
															<span class="_3LiYl">취소</span>
														</button>
													</div>
													<div class="_3-clJ">
														<button
															class="rFYrt forum-content-classic-font button-background-color button-primary-text-color"
															data-hook="rightButton">
															<span class="_3LiYl">추가</span>
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</main>
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>