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
  
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/member-comments-page.css" >
  
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>

<body>ㅣ
	<jsp:include page="/WEB-INF/views/templates/Top.jsp" />
	<!-- 메인페이지에만 있는 사이트맵 -->
<div class="profileContainer">
<div class="profileSideBar">
<jsp:include page="/WEB-INF/views/templates/ProfileSideBar.jsp" />
</div>


${noCmnt } 



<div id="root"><div id="direction-provider-wrapper"><div dir="ltr">
<div id="content-wrapper"><div class="_1PiV8 app-desktop page-background-color page-border-color">
<div><div data-hook="message" aria-live="polite"></div></div>
<div tabindex="-1" aria-labelledby="frm-ma-header" class="_1_wLP focus-visible" data-focus-visible-added="">
<div class="_165yv">
<h3 id="frm-ma-header" class="page-title-color _399uX page-title-font members-text-color">게시판 댓글</h3>
</div>
<c:if test="${! empty list}" >
<c:forEach items="${list }" var="item">


<div><div class="_1SJtR" data-hook="animated-loader__container"><div><div><div><div>
<div class="_3nrzG"><article class="_3zYMz forum-card-background-color forum-text-color forum-card-border-color forum-content-classic-font" style="border-width:1px">


<div class="_1pK4g"><div class="_2OrnI _472wD _2N7hC comment-header">
<a href="https://jemilykoo.wixsite.com/website/profile/userID/profile/" class="forum-link-hover-color">
<div class="_1MNBa"><div class="_16RtV"><div data-hook="mcl-showable-content"></div>
<span class="gLbMq _1aPRN avatar-image"><div class="B9z5- fluid-avatar-image" style="background-image: url('${pageContext.request.contextPath}/images/profile/icon/icon1.jpg');"></div></span></div>
<div class="_3TAMr forum-text-color"><div class="_19Aha"><span class="_3GqLz forum-text-color forum-link-hover-color comment-avatar__profile-name">${item.nickName }</span></div>
<span class="trQTR" data-hook="quick-user-info"></span></div></div></a>
<span class="_2IqrX">
<span class="_3uT17 time-ago" data-hook="time-ago">${item.rvcDate }</span></span>
<div class="_3g2el _472wD"><div class="_3VHHm more-button" data-hook="more-button">
<button class="_3VtFf button-hover-fill forum-icon-fill" id="more-button-60d2f28188d0340015ed3abd" aria-label="More actions" aria-haspopup="true" aria-expanded="false">
<svg xmlns="http://www.w3.org/2000/svg" width="19" viewBox="0 0 19 19" role="img" >
<path d="M17.444 6A1.5 1.5 0 1 1 19 4.5 1.528 1.528 0 0 1 17.444 6zm0 5A1.5 1.5 0 1 1 19 9.5a1.528 1.528 0 0 1-1.556 1.5zm0 5A1.5 1.5 0 1 1 19 14.5a1.528 1.528 0 0 1-1.556 1.5z"></path></svg></button></div></div></div></div>
<a class="_3XrIr" href="https://jemilykoo.wixsite.com/website/forum/main/comment/60d2f28188d0340015ed3abd" target="_top"><div class="_2HfMI forum-link-hover-color forum-text-color">
<div class="_19wh5 _39XLG" data-hook="post-description"><div>
<div class="l0h59">${item.rvCmnt }</div></div></div></div></a> 
<div class="_3yFwA RXKd_ forum-text-color comment-footer"><div class="_1Yivs">
<span class="_2Qb5F" data-hook="comment-footer__like-count" aria-hidden="true"></span>
<button class="_4wNQy forum-content-classic-font" aria-live="assertive">
<div class="_3hDG4" aria-label="좋아요 0개 Is unliked" data-hook="like-button"><div class="FFLzJ">
<div class="_2d2bJ"></div></div><div class="_1fVR3"><div class="_2d2bJ"></div></div><div class="_3vv94">
<div class="_2d2bJ"></div></div><div class="_1tXxG"><div class="_2d2bJ"></div></div><div class="_2qAdm">
</div>
</div></button></div></div></article></div>

</c:forEach>
</c:if>


 


<!-- 
<div class="_3nrzG">
<article class="_3zYMz forum-card-background-color forum-text-color forum-card-border-color forum-content-classic-font" style="border-width:1px"><div class="_1CM7r forum-card-background-color" style="border-color:rgba(0, 0, 0, 0.2)"><div class="forum-title-classic-font"><h2 class="_1KEE0">
<object type="communities/link">
<a class="forum-text-color forum-link-hover-color" href="https://jemilykoo.wixsite.com/website/forum/yeohaeng-gesipan/yeoreume-gajogi-hamgge-gagi-joheun-hyuyangji-cuceonhaejuseyo" target="_top">여름에 가족이 함께 가기 좋은 휴양지 추천해주세요!</a></object></h2></div><div class="_1SpaP _3TxB3 forum-separator-background-color">
</div><div style="font-size:12px" class="forum-content-classic-font">
<div class="forum-content-classic-font">
<div class="_1C1D8 forum-content-classic-font rgb(0, 0, 0) post-footer" data-hook="post-excerpt-footer">
<div class="_1zYxN"><div class="_2j1oN post-stats">
<span class="_1FH1_" data-hook="post-stats__comment-count">댓글 2개</span>
<span class="_1_Mrz" data-hook="post-stats__view-count">조회수 4회</span></div></div><div class="_2VWFO">
<button class="_1SZiL forum-content-classic-font" aria-live="assertive">
<span class="_1WGxV" data-hook="post-excerpt-footer__like-count" aria-hidden="true">1개</span>
<div class="_3hDG4 _1U7IE" aria-label="좋아요 1개 Is liked" data-hook="like-button"><div class="FFLzJ">
<div class="_2d2bJ"></div></div><div class="_1fVR3"><div class="_2d2bJ"></div></div><div class="_3vv94">
<div class="_2d2bJ"></div></div><div class="_1tXxG"><div class="_2d2bJ"></div></div><div class="_2qAdm">
</div><svg  width="18" viewBox="0 0 19 19">
<path id="a" d="M17.234 5.47a3.919 3.919 0 0 0-2.315-2.263c-2.022-.6-4.21.137-5.424 1.827C8.291 3.38 6.15 2.646 4.152 3.207a3.76 3.76 0 0 0-2.405 2.35 4.94 4.94 0 0 0 .57 4.264c1.603 2.698 6.76 5.927 6.938 6.092a.454.454 0 0 0 .534 0c.267-.174 5.343-3.229 6.938-6.092a5.16 5.16 0 0 0 .507-4.352z"></path></svg></div></button></div></div></div></div></div>
<div class="_1pK4g">
<div class="_2OrnI _472wD _2N7hC comment-header">
<a href="https://jemilykoo.wixsite.com/website/profile/userID/profile/" class="forum-link-hover-color">
<div class="_1MNBa"><div class="_16RtV"><div data-hook="mcl-showable-content"></div>
<span class="gLbMq _1aPRN avatar-image"><div class="B9z5- fluid-avatar-image"></div></span></div>
<div class="_3TAMr forum-text-color"><div class="_19Aha"><span class="_3GqLz forum-text-color forum-link-hover-color comment-avatar__profile-name">userID</span></div><span class="trQTR" data-hook="quick-user-info">
</span></div></div></a><span class="_2IqrX"><span class="_3uT17 time-ago" data-hook="time-ago">6월 23일</span></span><div class="_3g2el _472wD"><div class="_3VHHm more-button" data-hook="more-button">
<button class="_3VtFf button-hover-fill forum-icon-fill" id="more-button-60d2f27a88d0340015ed3abb" aria-label="More actions" aria-haspopup="true" aria-expanded="false"><svg xmlns="http://www.w3.org/2000/svg" width="19" viewBox="0 0 19 19" role="img" ><path d="M17.444 6A1.5 1.5 0 1 1 19 4.5 1.528 1.528 0 0 1 17.444 6zm0 5A1.5 1.5 0 1 1 19 9.5a1.528 1.528 0 0 1-1.556 1.5zm0 5A1.5 1.5 0 1 1 19 14.5a1.528 1.528 0 0 1-1.556 1.5z"></path></svg></button></div></div></div></div><a class="_3XrIr" href="https://jemilykoo.wixsite.com/website/forum/main/comment/60d2f27a88d0340015ed3abb" target="_top"><div class="_2HfMI forum-link-hover-color forum-text-color"><div class="_19wh5 _39XLG" data-hook="post-description"><div><div class="l0h59">fff</div></div></div></div></a><div class="_3yFwA RXKd_ forum-text-color comment-footer"><div class="_1Yivs"><span class="_2Qb5F" data-hook="comment-footer__like-count" aria-hidden="true">0개</span><button class="_4wNQy forum-content-classic-font" aria-live="assertive"><div class="_3hDG4" aria-label="좋아요 0개 Is unliked" data-hook="like-button"><div class="FFLzJ"><div class="_2d2bJ"></div></div><div class="_1fVR3"><div class="_2d2bJ"></div></div><div class="_3vv94"><div class="_2d2bJ"></div></div><div class="_1tXxG"><div class="_2d2bJ"></div></div><div class="_2qAdm"></div><svg  width="18" viewBox="0 0 19 19"><path id="a" d="M17.234 5.47a3.919 3.919 0 0 0-2.315-2.263c-2.022-.6-4.21.137-5.424 1.827C8.291 3.38 6.15 2.646 4.152 3.207a3.76 3.76 0 0 0-2.405 2.35 4.94 4.94 0 0 0 .57 4.264c1.603 2.698 6.76 5.927 6.938 6.092a.454.454 0 0 0 .534 0c.267-.174 5.343-3.229 6.938-6.092a5.16 5.16 0 0 0 .507-4.352z"></path></svg></div></button></div></div></article>



</div></div></div></div></div></div></div></div></div></div></div></div></div>
 -->
  
</div>
</body>
</html>
