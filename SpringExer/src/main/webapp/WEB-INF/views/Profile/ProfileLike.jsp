<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html  class="enable-scroll" lang="ko">
<head dir="ltr">
      

<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">

  
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css.css" >
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common-member-pages.css" >
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/member-likes-page.css" >

      
    <script src="modal_data/focus-visible.js" id="dynamic_script_FOCUS_VISIBLE"></script></head>
<body>
	<jsp:include page="/WEB-INF/views/templates/Top.jsp" />
	<!-- 메인페이지에만 있는 사이트맵 -->
<div class="profileContainer">
<div class="profileSideBar">
<jsp:include page="/WEB-INF/views/templates/ProfileSideBar.jsp" />
</div> 

    <div id="root"><div id="direction-provider-wrapper"><div dir="ltr"><div id="content-wrapper"><div class="_118Jf app-desktop page-background-color page-border-color"><span></span><div class="_1U88I"><div class="_3uQj_"><h3 tabindex="0" class="_9UQpf page-title-color page-title-font">
    좋아요 리뷰</h3></div>
   
    
    
    <div><div class="cSnEi"><div><div ><div><div><div class="tFJNO">
   
   <div>${noScrap }</div>
   
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
																				<div class="fl4fR"><a href="<c:url value=""/>"><c:if test="${! empty item.rvCategory1 }">
															<a href="<c:url value="#"/>">#${item.rvCategory1} </a> 
														</c:if>
														<c:if test="${! empty item.rvCategory2 }">
															<a href="<c:url value="#"/>">#${item.rvCategory2} </a>
														</c:if></a></div>
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
																					<span tabindex="0">조회 ${item.rvViews }</span>
																					<!-- 댓글 -->
																					<span class="_24h-e"></span>
																				</div>
																			</div>

																			<div class="vP6YT">
																				<button class="_3Bdxz post-footer__like-button">
																					<span class="_3BTGY"> <span class="_8J1xw">좋아요 ${item.rvLikeCnt }</span>
																						<!-- 하트 아이콘 시작 -->
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


</div></div></div></div></div></div>



</div></div></div></div></div></div>

</div>

    </div>
  </div>

</body></html>