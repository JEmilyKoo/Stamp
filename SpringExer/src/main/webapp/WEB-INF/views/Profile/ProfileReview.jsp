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
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/memberPagesVendor.css" >
  
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/memberPagesCommons.css" >

  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/member-posts-page.css" >
  


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>

<body>
	<jsp:include page="/WEB-INF/views/templates/Top.jsp" />
	<!-- 메인페이지에만 있는 사이트맵 -->
<div class="profileContainer">
<div class="profileSideBar">
<jsp:include page="/WEB-INF/views/templates/ProfileSideBar.jsp" />
</div>
		



	<div id="root">
		<div id="direction-provider-wrapper">
			<div dir="ltr">
				<div id="content-wrapper">
					<div
						class="_1PiV8 app-desktop page-background-color page-border-color">
						<div>
							<div data-hook="message" aria-live="polite"></div>
						</div>
						<div tabindex="-1" aria-labelledby="frm-ma-header"
							class="_1_wLP focus-visible" data-focus-visible-added="">
							<div class="_165yv">
								<h3 id="frm-ma-header"
									class="page-title-color _399uX page-title-font members-text-color">게시판
									게시물</h3>
							</div>
							<div>
								<div class="_1SJtR" data-hook="animated-loader__container">
									<div>
										<div>
											<div>
												<div>
												
												
												<c:if test="${empty list}" var="myList">
													${noMyList}
												</c:if>
												<c:if test="${! myList}">
												<c:forEach items="${list }" var="item">
													<div class="_2Cz6Q">
														<div
															class="_9wT8F HSoPg forum-content-classic-font forum-text-color forum-card-background-color forum-card-border-color post-list-item"
															style="border-width: 1px" role="article"
															data-hook="post-list-item">
															<div class="_2-ZiX s8Do1 post-header">
																<a
																	href="https://jemilykoo.wixsite.com/website/profile/userID/profile/"
																	class="A61te forum-link-hover-color"><div
																		class="_3Xmhm forum-text-color avatar">
																		<div class="A61te">
																			<div data-hook="mcl-showable-content"></div>
																			<span class="gLbMq avatar-image"><div
																					class="B9z5- fluid-avatar-image" style="background-image: url('${pageContext.request.contextPath}/images/profile/icon/icon1.jpg');"></div></span>
																		</div>
																		<div class="_2Xl4Q">
																			<div class="_2W9fe">
																				<span
																					class="_2NGa1 forum-text-color forum-link-hover-color"
																					data-hook="avatar__name">${item.nickName }</span>
																			</div>
																			<span class="trQTR" data-hook="quick-user-info"><span
																				class="_1LhGv">대시</span><span
																				class="_3uT17 _2Sbm- time-ago" data-hook="time-ago">${item.rvDate }</span></span>
																		</div>
																	</div></a><span class="ZVwdW"><div class="_1fFV8"></div></span><span
																	class="NoBT7"></span>
																<div class="igysc">
																	<div class="_3VHHm more-button" data-hook="more-button">
																			<!--
																			
																			<button
																			class="_3VtFf button-hover-fill forum-icon-fill"
																			id="more-button-60d2f33a126c2b00487266ac"
																			aria-label="More actions" aria-haspopup="true"
																			aria-expanded="false">
																			
																			
																			
																		 드롭다운 구현시켜줘ㅜㅜ
																			
																			
																			
																			<svg xmlns="http://www.w3.org/2000/svg" width="19"
																				viewBox="0 0 19 19" role="img">
																				<path
																					d="M17.444 6A1.5 1.5 0 1 1 19 4.5 1.528 1.528 0 0 1 17.444 6zm0 5A1.5 1.5 0 1 1 19 9.5a1.528 1.528 0 0 1-1.556 1.5zm0 5A1.5 1.5 0 1 1 19 14.5a1.528 1.528 0 0 1-1.556 1.5z"></path></svg>
																		</button> -->
																	</div>
																</div>
															</div>
															<a class="forum-link-hover-color forum-text-color"
																tabindex="-1"
																href="https://jemilykoo.wixsite.com/website/forum/yeohaeng-gesipan/ddeoneun-geosdo-eoryeobda"
																target="_top"><h2
																	class="_3RjE5 _9U6O6 forum-title-classic-font post-title"
																	data-hook="post-title">
																	<div class="_2d7LQ">
																		<object type="communities/link">
																			<a style="color: inherit"
																				href="https://jemilykoo.wixsite.com/website/forum/yeohaeng-gesipan/ddeoneun-geosdo-eoryeobda"
																				target="_top">${item.rvTitle }</a>
																		</object>
																	</div>
																</h2>
																<div class="_1MXGV">
																	<div class="_19wh5 _39XLG" data-hook="post-description">
																		<div>
																			<div class="l0h59">${item.rvCtt }</div>
																		</div>
																	</div>
																</div> </a> <a tabindex="-1"
																href="https://jemilykoo.wixsite.com/website/forum/yeohaeng-gesipan/ddeoneun-geosdo-eoryeobda"
																target="_top"></a>
															<div>
																<div class="_3v-GW _2SxZ2">
																	<div class="_3McQ1">
																		<div class="_1jh9Z">
																			<object type="communities/link" class="_3fUVF">
																				<a
																					class="zkXTz forum-text-color forum-link-hover-color"
																					data-hook="post-list-item__comment-count"
																					href="https://jemilykoo.wixsite.com/website/forum/yeohaeng-gesipan/ddeoneun-geosdo-eoryeobda"
																					target="_top"></a>
																			</object>
																			<div class="_2cFfG _3fUVF post-list-item__view-count"
																				data-hook="post-list-item__view-count">조회수 ${item.rvViews }</div>
																		</div>
																		<div class="_3b0-N">
																			<span class="Cg6Mq forum-text-color"
																				data-hook="post-list-item__like-count"
																				aria-hidden="true">좋아요 ${item.rvLikeCnt}개</span>
																			<button class="_2rJzt" aria-live="assertive"
																				data-hook="post-list-item__like-button">
																				<div class="_3hDG4" aria-label="좋아요 0개 Is unliked"
																					data-hook="like-button">
																					<div class="FFLzJ">
																						<div class="_2d2bJ"></div>
																					</div>
																					<div class="_1fVR3">
																						<div class="_2d2bJ"></div>
																					</div>
																					<div class="_3vv94">
																						<div class="_2d2bJ"></div>
																					</div>
																					<div class="_1tXxG">
																						<div class="_2d2bJ"></div>
																					</div>
																					<div class="_2qAdm"></div>
																					
																				</div>
																			</button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													
													</c:forEach>
													</c:if>
													
													
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>
</body>
</html>
