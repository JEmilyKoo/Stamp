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



<title>${dto.rvTitle }|찍GO</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/templates/Top.jsp" />

	<div class="TripBoardContainer">
		<div class="TitleBoardSearch"
			style="background-color: #FFA8A5; padding-bottom: 10px;">
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
			<div class="TripBoardSideBar _1laFb "
				style="border-color: #CD5C5C; border-width: 1px;">

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
						<span class="_1QEV9"> [카테고리1:산]</span>
					</div></a> <a
					href="https://jemilykoo.wixsite.com/website/forum/kategori2-seoul"
					class="_2niiD  forum-link-hover-color" bilocation="post_sidebar"><div
						class="_3Rzd4">
						<span class="_1QEV9"> [카테고리2:서울]</span>
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
			<div class="TripBoardMain" style="width: 780px">
				<!-- 메인 -->

				<!--여기서부터 게시글 시작-->
				<div class="" style="width: 780px">
					<div
						class="_1W1_h _1AA4r _2cpHr font_9 forum-card-background-color forum-card-border-colo _36m3S">
						<div class="GNZwK ">
							<main class="_1zsKH hHz9Y forum-card-border-color "
								style="border-width: 1px;">
								<div class="eGv_z">
									<div class="_2uwD1 xsS9i ">
										<div class="Nrvl9">
											<a
												href="https://jemilykoo.wixsite.com/website/profile/jemilykoo/profile"
												class="_1cpII">
												<div class="_31l-O  _1ccuS avatar">
													<span class="_14_Ju _1zT4G _28gI0">
														<div class="_2LXiY"
															style="background-image: url(&quot;https://lh3.googleusercontent.com/a-/AOh14GhTeL0915-lV5Hrbbsy8QHOVa-2nq-15HUSPapm%3Ds96-c&quot;); background-size: cover;"></div>
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
											<div class="LTwPD more-button dropdown"
												data-hook="more-button">
												<button class="dropdown-toggle " aria-label="More actions"
													id="more-button-60becb4785f7df001562fb6a"
													aria-haspopup="true" aria-expanded="false" type="button"
													id="dropdownMenu1" data-toggle="dropdown">
													<!-- 드롭다운버튼 구현하는 곳 -->
													<c:if test="${sessionScope.nickName==dto.nickName }" var="noNick">
														<img src="${pageContext.request.contextPath}/images/svg/moreButton.svg" />
												</button>
												<ul class="dropdown-menu" role="menu">
													<li role="presentation"><a role="menuitem"
														tabindex="-1"
														href="<c:url value="/Review/Edit.do?rvNo=${dto.rvNo}"/>">수정</a></li>
													<li role="presentation"><a role="menuitem"
														tabindex="-1"
														href="<c:url value="/Review/Delete.do?rvNo=${dto.rvNo}"/>">삭제</a></li>
													<li role="presentation"><a role="menuitem"
														tabindex="-1"
														href="<c:url value="#"/>">팔로잉</a></li>
													<li role="presentation"><a role="menuitem"
														tabindex="-1"
														href="<c:url value="#"/>">팔로우</a></li>
												</ul>
												</c:if>
												
												<c:if test="${not noNick }">
												<img src="${pageContext.request.contextPath}/iages/svg/moreButton.svg" />
												</button>
												<ul class="dropdown-menu" role="menu">
													<li role="presentation"><a role="menuitem"
														tabindex="-1"
														href="<c:url value="#"/>">팔로잉</a></li>
													<li role="presentation"><a role="menuitem"
														tabindex="-1"
														href="<c:url value="#"/>">팔로우</a></li>
												</ul>
												</c:if>
											</div>

										</div>
									</div>

									<!--본문 제목 시작-->
									<h1 class="_2FqU5 _2-LCm post-title forum-title-classic-font">
										<div class="_33VI0 _3N7Rh">${dto.rvTitle }</div>
									</h1>

									<!--본문 제목 끝-->

									<!--본문의 내용 시작-->
									<article class="font_9">
										<div class="_1xs1G">${dto.rvCtt }</div>
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
										<button class="A9boD">
											<img
												src="${pageContext.request.contextPath}/images/svg/shareViaLink.svg" />
											<span class="_2HBxV">공유</span>
										</button>

									</div>

									<!-- 댓글(1) 좋아요 공유 끝-->



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
																				aria-hidden="true"></div>
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

																<div class="LTwPD more-button dropdown"
																	data-hook="more-button">
																	<button class="dropdown-toggle "
																		aria-label="More actions"
																		id="more-button-60becb4785f7df001562fb6a"
																		aria-haspopup="true" aria-expanded="false"
																		type="button" id="dropdownMenu1"
																		data-toggle="dropdown">
																		<!-- 드롭다운버튼 구현하는 곳 -->
																		<c:if test="${sessionScope.nickName==item2.nickName }">
																			<img
																				src="${pageContext.request.contextPath}/images/svg/moreButton.svg" />
																	</button>
																	<ul class="dropdown-menu" role="menu">
																		<li role="presentation"><a role="menuitem"
																			tabindex="-1"
																			href="<c:url value="/rvcEdit.do?rvcNo=${dto.rvcNo}"/>">수정</a></li>
																		<li role="presentation"><a role="menuitem"
																			tabindex="-1"
																			href="<c:url value="/rvcDelete.do?&rvNo=${dto.rvNo }&rvcNo=${item2.rvcNo}"/>">삭제</a></li>
																	</ul>
									</c:if>
								</div>
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
			<div class=" lrDj7 _2bKV7" style="border-color: rgba(0, 0, 0, 0.2);"></div>

			<!--선긋기-->

			<div style="border-width: 1px; border-color: rgba(0, 0, 0, 0.2);">
				<div class="kIBre  font_9  comment-form">
					<a
						href="https://jemilykoo.wixsite.com/website/profile/userID/profile"
						class="_1cpII">
						<div class="_31l-O  _1ccuS avatar">
						<!-- 댓글 프로필 이미지 -->
							<span class="_14_Ju _1zT4G _28gI0 avatar-image">
								<div class="_2LXiY fluid-avatar-image" aria-hidden="true"></div>
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
						<div >
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
			</div>
		</div>
	</div>
	</div>
	</form>
	</div>

	</div>
	</div>
	</div>



</body>


<script type="text/JavaScript"
	src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script>
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
            
            
            
            
            
            
            
	</script>
</html>