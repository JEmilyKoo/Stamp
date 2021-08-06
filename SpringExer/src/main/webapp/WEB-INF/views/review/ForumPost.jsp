<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="enable-scroll" lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1"
	id="wixDesktopViewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/ForumPost.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/css.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<!-- 부가적인 테마 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>

.link-icon { position: relative; display: inline-block; width: auto;    font-size: 14px; font-weight: 500; color: #333; margin-right: 10px; padding-top: 50px; }
.link-icon.twitter { background-image: url(${pageContext.request.contextPath}/images/review/icon-twitter.png); background-repeat: no-repeat; }
.link-icon.facebook { background-image: url(${pageContext.request.contextPath}/images/review/icon-facebook.png); background-repeat: no-repeat; } 
.link-icon.kakao { background-image: url(../images/review/icon-kakao.png); background-repeat: no-repeat; }

</style>

<title>${dto.rvTitle }|찍GO</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/templates/Top.jsp" />

	<div class="TripBoardContainer">
		<div class="TitleBoardSearch w3-panel w3-card-2"
			style=" padding-bottom: 10px;">
			<!-- 여행 정보 > 여행 게시판  V 검색-->
			<div class="_3B7XB">
				<nav class="_3xObj font_9 breadcrumbs-text-color">
					<ol class="_18QAN">
						<li><a href="https://jemilykoo.wixsite.com/website/forum"
							data-hook="breadcrumbs__1">여행 리뷰/정보</a></li>
						<span class="_3q5sF"> <img
							src="${pageContext.request.contextPath}/images/svg/arrow.svg" />
						</span>
						<li><a
							href="https://jemilykoo.wixsite.com/website/forum/yeohaeng-gesipan"
							data-hook="breadcrumbs__3">카테고리 표시</a></li>
						<span class="_3q5sF"> <img
							src="${pageContext.request.contextPath}/images/svg/arrow.svg" />

						</span>
						<li><span>${dto.rvTitle }</span></li>
					</ol>
				</nav>
				<div class="_2LHxU">
					<div class="_3C0hA">
						<div class="_3iW6- search-input">
							<div class="_2RwOg" role="search" aria-label="&nbsp;">

								<img
									src="${pageContext.request.contextPath}/images/svg/search.svg" />

								<form autocomplete="off">
									<input data-hook="search-input"
										style="border-bottom: black 1px solid"
										class="_1quPh desktop-header-search-text-color desktop-header-search-font search-input__input"
										type="text" autocomplete="off" placeholder="&nbsp;">
								</form>

							</div>
						</div>
					</div>

					<div class="_3YKCe">
						<div class="ONcxA">
							<div class="LTwPD more-button" data-hook="more-button">
								<button
									class="_2jKCS button-hover-fill breadcrumbs-icon-fill  font_9 _2B7gt"
									aria-haspopup="true" aria-expanded="false">
									<img
										src="${pageContext.request.contextPath}/images/svg/moreButton.svg" />

								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 여행정보 여행게시판 검색 -->
		</div>
		<div class="TripBoardContent">
			<div class="TripBoardSideBar _1laFb  w3-panel w3-card-2"
				style="border-color: #CCCCCC; border-width: 1px;">

				<!-- 사이드 바 -->
				<span class="_2Qq4e">카테고리</span> <a
					href="https://jemilykoo.wixsite.com/website/forum/yeohaeng-gesipan"
					class="_2niiD  forum-link-hover-color" bilocation="post_sidebar"><div
						class="_3Rzd4">
						<span class="_1QEV9"> 여행 게시판</span>
					</div></a> <a
					href="https://jemilykoo.wixsite.com/website/forum/kategori1-san"
					class="_2niiD  forum-link-hover-color" bilocation="post_sidebar"><div
						class="_3Rzd4">
						<span class="_1QEV9"> [카테고리1:${dto.rvCategory2 }]</span>
					</div></a> <a
					href="https://jemilykoo.wixsite.com/website/forum/kategori2-seoul"
					class="_2niiD  forum-link-hover-color" bilocation="post_sidebar"><div
						class="_3Rzd4">
						<span class="_1QEV9"> [카테고리2:${dto.rvCategory1 }]</span>
					</div></a> <a
					href="https://jemilykoo.wixsite.com/website/forum/cuceonyeohaengjeongbo"
					class="_2niiD  forum-link-hover-color" bilocation="post_sidebar"><div
						class="_3Rzd4">
						<span class="_1QEV9"> 추천여행정보</span>
					</div></a> <a href="https://jemilykoo.wixsite.com/website/forum/jayugesipan"
					class="_2niiD  forum-link-hover-color" bilocation="post_sidebar"><div
						class="_3Rzd4">
						<span class="_1QEV9"> 자유게시판</span>
					</div></a> <a href="https://jemilykoo.wixsite.com/website/forum/"
					class="button-color" bilocation="post_sidebar">전체 카테고리 보기</a>

			</div>
			<div class="TripBoardMain" style="width: 780px; border-color:#CCCCCC">
				<!-- 메인 -->

				<!--여기서부터 게시글 시작-->
				<div class="" style="width: 780px ; border-color:#CCCCCC;border:none">
					<div
						class="_1W1_h _1AA4r font_9 forum-card-background-color forum-card-border-colo _36m3S">
						<div class="GNZwK ">
							<main class="_1zsKH hHz9Y forum-card-border-color "
								style="border-width: 0px; ">
								<div class="eGv_z">
									<div class="_2uwD1 xsS9i ">
										<div class="Nrvl9">
											<a
												href="https://jemilykoo.wixsite.com/website/profile/jemilykoo/profile"
												class="_1cpII">
												<div class="_31l-O  _1ccuS avatar">
													<span class="_14_Ju _1zT4G _28gI0">
														<div class="_2LXiY"
															style="background-image: url('${pageContext.request.contextPath}/images/profile/icon/icon1.jpg'); background-size: cover;"></div>
													</span>
													<div class=" _1_vuc">
														${dto.nickName }<img
															src="${pageContext.request.contextPath}/images/svg/crown.svg" />

													</div>
												</div>
											</a>
										</div>
										<div class="_1tCTK">
											<div class="_35gyg">6월 07일</div>
											<!-- 버튼시작 -->
											<div class="LTwPD  dropdown" data-hook="more-button">
												<button class="dropdown-toggle more-button"
													id="dropdownButton1">
													<!-- 드롭다운버튼 구현하는 곳 -->
													<img
														src="${pageContext.request.contextPath}/images/svg/moreButton.svg" />
												</button>
												<div role="menu" id="ReviewActions" class="actions">
													<div>
														<c:if test="${sessionScope.nickName==dto.nickName }"
															var="noNick">
															<a
																href="<c:url value="/Review/Edit.do?rvNo=${dto.rvNo}"/>">
																<button class="actionButton" role="menuitem">
																	<div class="postActions">
																		<img
																			src="${pageContext.request.contextPath}/images/svg/update.svg" />
																		<div class="ActionButtonText">수정</div>
																	</div>
																</button>
															</a>
															<a
																href="<c:url value="/Review/Delete.do?rvNo=${dto.rvNo}"/>">
																<button class="actionButton" role="menuitem">
																	<div class="postActions">
																		<img
																			src="${pageContext.request.contextPath}/images/svg/delete.svg" />
																		<div class="ActionButtonText">삭제</div>
																	</div>
																</button>
															</a>
														</c:if>


														<a
															href="<c:url value="/DM/DMChatBox2.do?nickName=${nickName }&DMToNickName=${dto.nickName }"/>">
															<button class="actionButton" role="menuitem">
																<div class="postActions">
																	<div class="icon">
																		<svg xmlns="http://www.w3.org/2000/svg" width="24"
																			height="24" viewBox="0 0 24 24">
                                          <path
																				d="M0 3v18h24v-18h-24zm6.623 7.929l-4.623 5.712v-9.458l4.623 3.746zm-4.141-5.929h19.035l-9.517 7.713-9.518-7.713zm5.694 7.188l3.824 3.099 3.83-3.104 5.612 6.817h-18.779l5.513-6.812zm9.208-1.264l4.616-3.741v9.348l-4.616-5.607z"></path></svg>
																	</div>
																	<div class="ActionButtonText">DM</div>
																</div>
															</button>
														</a> <a href="#">
															<button class="actionButton" role="menuitem">
																<div class="postActions">
																	<img
																		src="${pageContext.request.contextPath}/images/svg/follow.svg" />
																	<div class="ActionButtonText">팔로우</div>
																</div>
															</button>
														</a><a href="#">
															<button class="actionButton" role="menuitem">
																<div class="postActions"
																	data-hook="post-actions__report">

																	<img
																		src="${pageContext.request.contextPath}/images/svg/warning.svg" />
																	<div class="ActionButtonText">신고하기</div>
																</div>
															</button>
														</a>

													</div>



												</div>
											</div>
											<!-- 버튼 끝 -->




										</div>
									</div>

									<!--본문 제목 시작-->
<c:if test="${dto.rvNo>500 }" var="recommand">

										<button
											class="w3-button w3-blue w3-border w3-border-white w3-round-large"
											style="padding: 1px 1px 1px 1px; position: relative; right:12px;top:28px">추천</button>
									</c:if>
									<div class="_2FqU5 _2-LCm 
DropDown"
										style="fontsize: 18px">
										<div>${dto.rvTitle }</div>


									</div>
									
									<!--본문 제목 끝-->

									<!--본문의 내용 시작-->
									<article class="font_9">
										<div class="_1xs1G">
											<c:if test="${dto.rvNo>500 }" var="recommand">
												<div class=" cardImage categoryDropDown "
													style="height:400px;color: white; text-shadow: 1px 1px 5px black;
background-image: url('${pageContext.request.contextPath}/images/main/photos/${dto.rvNo-500 }.jpg');"></div>
											</c:if>
											<c:if test="${not recommand }">
										
											</c:if>

											${dto.rvCtt }
										</div>
									</article>
									<!--본문의 내용 끝-->

									<!-- 댓글 좋아요 공유 시작 -->
									<div class="_2FVeM">
										<button class="KkXMX font_9">
											<img
												src="${pageContext.request.contextPath}/images/svg/reply.svg" />
											댓글 ${num }
										</button>

										<div class="KkXMX">
											<!-- 좋아요 구현중 -->
											<c:if test="${dto.rvLikeCheck != 1 }">
												<img id="like" src="../images/review/beanH.png">
											</c:if>
											<c:if test="${dto.rvLikeCheck == 1 }">
												<img id="like" src="../images/review/fullH.png">
											</c:if>

										</div>
										<div class="KkXMX" id="likecount">${dto.rvLikeCnt}</div>
										
											<!--<button class="A9boD">
											<img
												src="${pageContext.request.contextPath}/images/review/icon-facebook.png" />
											<span class="_2HBxV">공유</span>
										</button>
										</div>-->
											<div class="KkXMX" style="max-width: 1000px; height: 15px">
												<c:if test="${true}">
													<img id="scrap"
														style="height: 15px; position: relative; top: 30px"
														src="../images/review/Star2.png">
												</c:if>
												<c:if test="${false}">
													<img id="scrap" style="height: 15px;"
														src="../images/review/Star1.png">
												</c:if>
<div  id="scrapcount"
												style="position: relative; top: 30px"></div>
										
											</div>

											
<div style="position:relative;left:400px;top:10px;">
										<a id="btnTwitter" class="link-icon twitter"  style="text-decoration:none; width:50px" href="javascript:shareTwitter();" data-toggle="tooltip" data-placement="top" title="트위터">&nbsp</a>
<a id="btnFacebook" class="link-icon facebook"  style="text-decoration:none; width:50px"href="javascript:shareFacebook();" data-toggle="tooltip" data-placement="top" title="페이스북">&nbsp</a>

									<!-- 댓글(1) 좋아요 공유 끝-->

</div>

								</div>
							</main>
						</div>
					</div>

					<!-- 댓글 만들기 구현중 -->
					<div class="_2r1LV forum-card-border-color">
						<div class="_3Cioj QZ-R_ forum-separator-background-color"></div>
					</div>
					<!--선하나 긋는거 -->


					<!-- 여기서부터 폼이 시작하고, 댓글도 여기서부터 돌아간다.아래 폼을
                  수정해서 댓글을 입력받게 하자.
               	예시 : 
<form id="myform"  name='homeForm' method="post"  class="form-horizontal" action="<c:url value="/Member/LoginCheck.do"/>">
				
-->

					<div class="GNZwK" data-hook="animated-loader__container">
						<div class="dGa6G forum-card-border-color">
							<div id="comments" class="_3Z-pR">
								<div class="_1vGfV">

									<!-- 댓글 시작-->
									<c:if test="${! empty rvcDto}">
										<c:forEach items="${rvcDto }" var="item2">
											<article
												class="_3JQ_x font_9  forum-card-border-color comment">
												<div class="_1XN4n _2IZ0U"
													style="border-color: rgba(0, 0, 0, 0.2);">
													<div class="_2bdhY">
														<div class="_2IYLE _2IGSa comment-header">
															<div class="_1vv4e">
																<a
																	href="https://jemilykoo.wixsite.com/website/profile/userID/profile">
																	<div class="_2jNAb _2cJkC">
																		<span class="_14_Ju _28gI0 avatar-image">
																			<div class="_2LXiY fluid-avatar-image"
																				aria-hidden="true" 
																				style="background-image: url('${pageContext.request.contextPath}/images/profile/icon/icon1.jpg');"
																				></div>
																		</span>
																	
																		<div class="_1uKCP ">
																			<div class="_1xqeV">
																				<!-- 댓글 목록1 -->
																				<span
																					class="B9kqa  forum-link-hover-color comment-avatar__profile-name">${item2.nickName }</span>
																			</div>
																		</div>
																	</div>
																</a>
															</div>
															<span class="_1dO0B">${item2.rvcDate }</span>
															<div class="_2RCpN">







																<!-- 버튼시작 -->
																<div class="LTwPD  dropdown" data-hook="more-button">
																	<button class="dropdown-toggle more-button"
																		id="dropdownButton1">
																		<!-- 드롭다운버튼 구현하는 곳 -->
																		<img
																			src="${pageContext.request.contextPath}/images/svg/moreButton.svg" />
																	</button>
																	<div role="menu" id="ReviewActions" class="actions">
																		<div>
																			<c:if
																				test="${sessionScope.nickName==item2.nickName }"
																				var="noNick">
																				<a
																					href="<c:url value="/rvcEdit.do?rvcNo=${dto.rvcNo}"/>">
																					<button class="actionButton" role="menuitem">
																						<div class="postActions">
																							<img
																								src="${pageContext.request.contextPath}/images/svg/update.svg" />
																							<div class="ActionButtonText">수정</div>
																						</div>
																					</button>
																				</a>
																				<a
																					href="<c:url value="/rvcDelete.do?&rvNo=${dto.rvNo }&rvcNo=${item2.rvcNo}"/>">
																					<button class="actionButton" role="menuitem">
																						<div class="postActions">
																							<img
																								src="${pageContext.request.contextPath}/images/svg/delete.svg" />
																							<div class="ActionButtonText">삭제</div>
																						</div>
																					</button>
																				</a>
																			</c:if>

																			<a
																				href="<c:url value="/DM/DMChatBox.do?DMToNickName=${item2.nickName }"/>">


																				<button class="actionButton" role="menuitem">
																					<div class="postActions">
																						<div class="icon">
																							<svg xmlns="http://www.w3.org/2000/svg"
																								width="24" height="24" viewBox="0 0 24 24">
                                          <path
																									d="M0 3v18h24v-18h-24zm6.623 7.929l-4.623 5.712v-9.458l4.623 3.746zm-4.141-5.929h19.035l-9.517 7.713-9.518-7.713zm5.694 7.188l3.824 3.099 3.83-3.104 5.612 6.817h-18.779l5.513-6.812zm9.208-1.264l4.616-3.741v9.348l-4.616-5.607z"></path></svg>
																						</div>
																						<div class="ActionButtonText">DM</div>
																					</div>
																				</button>
																			</a> <a href="#">
																				<button class="actionButton" role="menuitem">
																					<div class="postActions">
																						<img
																							src="${pageContext.request.contextPath}/images/svg/follow.svg" />
																						<div class="ActionButtonText">팔로우</div>
																					</div>
																				</button>
																			</a><a href="#">
																				<button class="actionButton" role="menuitem">
																					<div class="postActions"
																						data-hook="post-actions__report">

																						<img
																							src="${pageContext.request.contextPath}/images/svg/warning.svg" />
																						<div class="ActionButtonText">신고하기</div>
																					</div>
																				</button>
																			</a>

																		</div>



																	</div>
																</div>
																<!-- 버튼 끝 -->








															</div>


														</div>
													</div>
													<div class="_1MbOK comment__content">
														<div
															class=" kcuBq _18B2H font_9 c5OF0 cNOAl css-1wg9rnj _2x6sh uatYj _1bYoS gOtux"
															data-id="rich-content-viewer">
															<div class="font_9">
																<div class="_1xs1G">${item2.rvCmnt }</div>
															</div>



														</div>
													</div>
													<div class="_39-Jn  comment-footer">
														<span class="_3U6Eq">
															<button
																class="KkXMX font_9 button-hover-color forum-icon-fill button-hover-fill"
																aria-label="userID님에게 댓글">

																<img
																	src="${pageContext.request.contextPath}/images/svg/reply.svg" />

																<span data-hook="comment-footer__reply"
																	class="comment-footer__reply">댓글</span>
															</button>
														</span>
														<div class="_2TIT4">
															<button class="_2UNF9" actiondetails="[object Object]">
																<div class="dr0cE" aria-label="좋아요 0개. Is unliked"
																	data-hook="like-button" style="-heart-color: #e84a43;"></div>
															</button>
															<span class="_3DfnL post-main-actions__like-count _344s1"
																data-hook="who-liked-popover-btn">0</span>
														</div>
													</div>
												</div>
											</article>
										</c:forEach>
										<!-- 댓글 끝 -->

										<!--대댓글 컨테이너 시작
										<div class="_1vGfV _1yPdA" data-hook="comment">
											<article id="60d2f28188d0340015ed3abd"
												class="_3JQ_x font_9  forum-card-border-color comment _3xzB6">

												<div class="_1XN4n _1yPdA eFjFZ">
													<div class="_2bdhY">
														<div class="_2IYLE _2IGSa comment-header">
															<div class="_1vv4e">
																<a
																	href="https://jemilykoo.wixsite.com/website/profile/userID/profile">
																	<div class="_2jNAb _2cJkC">
																		<span class="_14_Ju _28gI0 avatar-image">
																			<div class="_2LXiY fluid-avatar-image"
																				aria-hidden="true"></div>
																		</span>
																		<div class="_1uKCP ">
																			<div class="_1xqeV">
																				댓글 목록2 
											<span
												class="B9kqa  forum-link-hover-color comment-avatar__profile-name">대댓글같아요2</span>
									</div>
								</div>
							</div>
							</a>
						</div>
						<span class="_1dO0B"> 생성시간이에요2</span>
						<div class="_2RCpN">
							<div class="LTwPD more-button" data-hook="more-button">
								<button
									class="_2jKCS button-hover-fill forum-icon-fill  font_9 _2B7gt"
									id="more-button-60d2f28188d0340015ed3abd">
									<img
										src="${pageContext.request.contextPath}/images/svg/moreButton.svg" />

								</button>
							</div>
						</div>
				</div>
			</div>
			<div class="_1MbOK comment__content">
				<div>
					<div class="_1xs1G">
						<div
							class="kcuBq _18B2H font_9 c5OF0 cNOAl css-1wg9rnj _2eog5 uatYj _1bYoS _2aERR"
							data-id="rich-content-viewer">
							<div class="kaqlz _3JyXP _2QDTJ">
								<p id="viewer-foo"
									class="XzvDs _208Ie _3ogUL cw1QM _2QAo- _25MYV _2CDc4 public-DraftStyleDefault-block-depth0 public-DraftStyleDefault-text-ltr">
									<span class="vkIF2">대댓글같아요2</span>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="_39-Jn  comment-footer">

				<span class="_3U6Eq">
					<button
						class="KkXMX font_9 button-hover-color forum-icon-fill button-hover-fill"
						aria-label="userID님에게 댓글">
						<img src="${pageContext.request.contextPath}/images/svg/reply.svg" />

						<span data-hook="comment-footer__reply"
							class="comment-footer__reply">댓글</span>
					</button>

				</span>

				<div class="_2TIT4">
					<button class="_2UNF9 font_9">
						<div class="dr0cE" aria-label="좋아요 0개. Is unliked"
							data-hook="like-button" style="-heart-color: #e84a43;">
							<img
								src="${pageContext.request.contextPath}/images/svg/heartEmpty.svg" />

						</div>
					</button>

					<span class="_3DfnL post-main-actions__like-count _344s1"
						data-hook="who-liked-popover-btn">0</span>
				</div>

			</div>
		</div>
		</article>



		대댓글 끝-->

									</c:if>
								</div>
								<div class=" lrDj7 _2bKV7"
									style="border-color: rgba(0, 0, 0, 0.2)"></div>

								<!--선긋기-->

								<div
									style="border-width: 1px; border-color: rgba(0, 0, 0, 0.2);">
									<div class="kIBre  font_9  comment-form">
										<a
											href="https://jemilykoo.wixsite.com/website/profile/userID/profile"
											class="_1cpII">
											<div class="_31l-O  _1ccuS avatar">
												<!-- 댓글 프로필 이미지 -->
												<span class="_14_Ju _1zT4G _28gI0 avatar-image">
													<div class="_2LXiY fluid-avatar-image" aria-hidden="true" style="background-image: url('${pageContext.request.contextPath}/images/profile/icon/icon1.jpg');"></div>
												</span>
												<div class="-mPAe">
													<!-- 여기가 댓글작성자 닉네임 -->
													<div class="_1d5Ko _1_vuc">${sessionScope.nickName}</div>
												</div>
											</div>
										</a>
									</div>
									<form class="form-inline" id="frm"
										action="<c:url value="/rvCmntOne.do?rvNo=${rvNo }"/>">
										<div class="lineboxContainer">
											<!--아래 div는 textarea와 같은 역할을 합니다. -->
											<div>
												<textarea class="linebox" rows="5" cols="30" name="rvCmnt"></textarea>
												<input type="hidden" name="nickName" value="${dto.nickName}" />
												<input type="hidden" name="rvNo" value="${dto.rvNo}" /> <input
													type="hidden" name="rvcNo" />
											</div>
											<div style="height: 50px"></div>
											<!-- textarea 끝-->

											<!--댓글 게시 시작-->
											<div class="_1tafc _3g02x ruYrk _2Ysrr _3-clJ">
												<button class="submitButton" type="submit">게시</button>
											</div>
											<!--댓글 게시 끝 -->
										</div>

									</form>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>



</body>


<script type="text/JavaScript"
	src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script>
$(function() {
	//페이지 최초 로드시 내용 숨기기]
	$(".actions").hide();
	$(".more-button").click(function(){
		
    	console.log($(this).next().css('display'));
    	//클릭한 제목의 내용이 숨겨져 있다면
    	if($(this).next().css('display')=='none'){
    		$(this).next().css({'background-color': 'white'});
    		$(this).next().fadeOut(200);//열린 모든 내용 숨기기
    		$(this).next().fadeIn(200);//해당 제목의 내용 보이기
    		
    	}
    	else{
    		$(this).next().fadeOut(200);
    	}
    });
	
});

	
		
            //좋아요 구현 ajax
            	var nickName = "${sessionScope.nickName}"
            	var rvNo = "${dto.rvNo}"
            	var likecount = Number.parseInt($("#likecount").html())
            
            	$("#like").click(function(){
            		$.ajax({
            			url:"<c:url value="/Review/Like.do"/>",
            			type:"post",
            			data:{nickName, rvNo},
            			dataType:"text",
            			success:function(data){
            				if(data==0){
            					$("#like").attr("src","../images/review/fullH.png");
            					$("#likecount").html(++likecount);
            				}
            				else{
            					$("#like").attr("src","../images/review/beanH.png");
            					$("#likecount").html(--likecount);
            				}
            			},
            			error:function(){
            				alert("로그인 후 이용해주세요.");
            			}
            		});
            	});
            
            	
            	
            //댓글 구현중
            
            
       //트위터 공유 구현하기
		        
		function shareTwitter() {
		    var sendText = "${dto.rvTitle}"; // 전달할 텍스트
		    var sendUrl = "http://localhost:9090/exer/Review/ForumPost.do?rvNo=${dto.rvNo}"; // 전달할 URL
		    window.open("https://twitter.com/intent/tweet?text=" + sendText + "&url=" + sendUrl);
		}
            
            //페이스북 공유 구현하기
	    function shareFacebook() {
			var sendUrl = "http://localhost:9090/exer/Review/ForumPost.do?rvNo=${dto.rvNo}"; // 전달할 URL
			window.open("http://www.facebook.com/sharer/sharer.php?u=" + sendUrl);
		}

          
            //스크랩 구현
            //스크랩 구현 ajax
            	//var nickName = "${sessionScope.nickName}"
            	//var rvNo = "${dto.rvNo}"
            	//var scrapcount = Number.parseInt($("#scrapcount").html())
            
            	$("#scrap").click(function(){
            		$.ajax({
            			url:"<c:url value="/Review/Scrap.do"/>",
            			type:"post",
            			data:{nickName, rvNo},
            			dataType:"text",
            			success:function(data){
            				if(data==0){
            					$("#scrap").attr("src","../images/review/Star1.png");
            					$("#scrapcount").html(++scrapcount);
            				}
            				else{
            					$("#scrap").attr("src","../images/review/Star2.png");
            					$("#scrapcount").html(--scrapcount);
            				}
            			},
            			error:function(){
            				alert("잘못된 접근입니다.");
            			}
            		});
            	});
          
            
            
	</script>
</html>