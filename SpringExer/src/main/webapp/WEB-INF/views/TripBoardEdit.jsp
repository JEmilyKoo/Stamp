<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!DOCTYPE html>
		<html class="enable-scroll" lang="ko">

		<head> 
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1" id="wixDesktopViewport">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!--내가 추가한 코드-->
		<script src="${pageContext.request.contextPath}/stampGO_files/bundle.js"></script>
		<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="https://static.parastorage.com/services/profile-card-tpa-ooi/1.277.0/ProfileCardViewerWidget.bundle.min.js" src="${pageContext.request.contextPath}/stampGO_files/ProfileCardViewerWidget.js"></script>
		<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="https://static.parastorage.com/services/pro-gallery-santa-wrapper/1.1612.0/viewer.bundle.min.js" src="${pageContext.request.contextPath}/stampGO_files/viewer.js"></script>
		<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="https://static.parastorage.com/services/communities-forum-client/1.432.0/forum-app-viewer.bundle.min.js" src="${pageContext.request.contextPath}/stampGO_files/forum-app-viewer.js"></script>
		<!-- base href="https://jemilykoo.wixsite.com/website/" -->
		<meta name="generator" content="Wix\.com Website Builder">
		<!--내가 추가한 코드-->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/TripBoardEdit.css">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
		<title>여행리뷰/정보 | 찍GO</title>
		<script charset="utf-8" src="./stampGO_files/bootstrap-components-common.31a3c3a3.chunk.min.js"></script>
		<script charset="utf-8" src="./stampGO_files/bootstrap-components-classic.6c2937a5.chunk.min.js"></script>
		<script charset="utf-8" src="./stampGO_files/Container_RectangleArea.db226d94.chunk.min.js"></script>
		<script charset="utf-8" src="./stampGO_files/VerticalMenu_VerticalMenuSolidColorSkin.d6fea72a.chunk.min.js"></script>
		<script charset="utf-8" src="./stampGO_files/LoginSocialBar.1888c30a.chunk.min.js"></script>
		<script charset="utf-8" src="./stampGO_files/bootstrap-components-responsive.63905f12.chunk.min.js"></script>
		<script charset="utf-8" src="./stampGO_files/MeshGroup.39bae923.chunk.min.js"></script>
		<script charset="utf-8" src="./stampGO_files/FreemiumBannerDesktop.d59802f4.chunk.min.js"></script>
		<script charset="utf-8" src="./stampGO_files/SkipToContentButton.1b978885.chunk.min.js"></script>
		<script charset="utf-8" src="./stampGO_files/HtmlComponent.fa918050.chunk.min.js"></script>
		<script src="./stampGO_files/requirejs.min.js"></script>
		<script charset="utf-8" src="./stampGO_files/ItemActions.chunk.min.js"></script>
		<script charset="utf-8" src="./stampGO_files/proGallery_videoScrollHelper.chunk.min.js"></script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stampGO_files/common-site-members-dialogs.d415cb14.chunk.min.css">
		<script charset="utf-8" src="./stampGO_files/common-site-members-dialogs.5d3bc72c.chunk.min.js"></script>
		<style data-emotion=""></style>
		<script charset="utf-8" src="./stampGO_files/proGallery_videoItem.chunk.min.js"></script>
		<script charset="utf-8" src="./stampGO_files/AsyncEventHandler.chunk.min.js"></script>
		<script charset="utf-8" src="./stampGO_files/proGallery_reactPlayer.chunk.min.js"></script>
		<script charset="utf-8" src="./stampGO_files/HlsPlayer.chunk.min.js"></script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stampGO_files/WPhoto_CirclePhoto.00104e81.chunk.min.css">
		<script charset="utf-8" src="./stampGO_files/WPhoto_CirclePhoto.d52c26c9.chunk.min.js"></script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stampGO_files/post-page-wix-comments.chunk.min.css" crossorigin="anonymous">
		<script charset="utf-8" src="./stampGO_files/0.chunk.min.js"></script>
		<script charset="utf-8" src="./stampGO_files/73.chunk.min.js"></script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stampGO_files/forum-rce-frameless.chunk.min.css">
		<script charset="utf-8" src="./stampGO_files/forum-rce-frameless.chunk.min.js"></script>
		<script charset="utf-8" src="./stampGO_files/53.chunk.min.js"></script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stampGO_files/member-card-async-frameless.chunk.min.css">
		<script charset="utf-8" src="./stampGO_files/member-card-async-frameless.chunk.min.js"></script>
		
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/categories-manager-modal.chunk.min.css">
		<script charset="utf-8" src="./stampGO_files/categories-manager-modal.chunk.min.js"></script>
		</head>

		<body class="vsc-initialized _1Arx3 _1vwX8 _1Fqrx al-active" style="">
		
	<jsp:include page="/WEB-INF/views/templates/Top.jsp"/>
			<script type="text/javascript">
			var bodyCacheable = true;
			var exclusionReason = {
				"shouldRender": true,
				"forced": false
			};
			var ssrInfo = {
				"renderBodyTime": 469,
				"renderTimeStamp": 1624435239683
			}
			</script>
			<script>
			window.clientSideRender = false;
			</script>
			<!--pageHtmlEmbeds.bodyStart start-->
			<script type="wix/htmlEmbeds" id="pageHtmlEmbeds.bodyStart start"></script>
			<script type="wix/htmlEmbeds" id="pageHtmlEmbeds.bodyStart end"></script>
			<!--pageHtmlEmbeds.bodyStart end-->
			<div id="SITE_CONTAINER">
				<div id="main_MF">
					<div id="site-root">
						<div id="마스터페이지" class="메시레이아웃">
							<header></header>
							<main id="PAGES_CONTAINER" tabindex="-1">
								<div id="SITE_PAGES">
									<div class="스트레치">
										<div id="여행리뷰정보아이디" class="확인용2">
											<div class="확인용4">
												<div id="Container여행리뷰정보아이디" class="확인용5">
													<div data-mesh-id="Container여행리뷰정보아이디inlineContent" data-testid="inline-content">
														<div data-mesh-id="Container여행리뷰정보아이디inlineContent-gridContainer" data-testid="mesh-container-content">
															<div id="TPASection_kpndq3bq" style="height: auto;">
																<div class="TPASection_kpndq3bq">
																	<div dir="ltr">
																		<div class="md lt-lg lt-xl gt-xs gt-sm sidebar-on">
																			<div id="content-wrapper" class="_2OKxY _3KFQm app-desktop forum-background-color">
																				<div class="_1MfyE" id="modal-overlay">
																					<div style="z-index: 0; position: absolute; inset: 0px;"><span style="pointer-events: auto;">
      
      <main class="_1ghDI _37pY2" data-hook="modal-page" role="dialog" tabindex="0" aria-labelledby="1624438324849"><div><div class="_3dS9w _2mE68 modal__overlay"></div></div><div class="default-forum-card-background-color color-5-text RDAxO" data-hook="modal-layout" style="border-color: rgba(0, 0, 0, 0.2);"><div class="VO0cM default-forum-card-background-color"><div role="form" class="m3iAd forum-content-classic-font" data-hook="category-settings-form" tabindex="-1" aria-labelledby="frm-category-setting-form-header" style="color: rgb(0, 0, 0);"><div class="swFt8"><div><div class="_2M1V_ _90dl"><div class="_25dL0"><button class="_36qwW" aria-label="뒤로"><svg xmlns="http://www.w3.org/2000/svg" role="img" width="24" height="24" viewBox="0 0 24 24" class="_2lWY3 forum-icon-fill button-hover-fill"><path fill-rule="evenodd" d="M6.707 13l4.148 4.148c.195.195.195.512 0 .707-.195.196-.512.196-.707 0L4.793 12.5l5.355-5.347c.195-.195.512-.195.707 0 .195.196.195.512 0 .707L6.707 12H19v1H6.707z"></path></svg></button><h3 id="frm-category-setting-form-header" class="_2ylhw forum-title-classic-font">메인 페이지 편집</h3></div><div class="_3bWcK"><div class="_2-_9a _3E-Mz"><div class="s1OaD"><label class="_3VKv5">게시판 이름</label><div class="_2olh8" titlefontclassname="forum-title-classic-font" aria-label="짧고 기억하기 좋은 게시판 이름을 추가하세요." appeardelay="500" direction="ltr"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" role="img" class="icon-fill"><path d="M12,4 C16.418278,4 20,7.581722 20,12 C20,16.418278 16.418278,20 12,20 C7.581722,20 4,16.418278 4,12 C4,7.581722 7.581722,4 12,4 Z M12,4.88888889 C8.07264178,4.88888889 4.88888889,8.07264178 4.88888889,12 C4.88888889,15.9273582 8.07264178,19.1111111 12,19.1111111 C15.9273582,19.1111111 19.1111111,15.9273582 19.1111111,12 C19.1111111,8.07264178 15.9273582,4.88888889 12,4.88888889 Z M12.7838529,10.4646465 L12.7838529,14.7124624 L13.2929293,14.7372503 L13.2929293,15.5555556 L11.1111111,15.5555556 L11.1111111,14.7709045 L11.3086109,14.7525481 C11.4933507,14.7353636 11.6400629,14.5975733 11.6738544,14.4213422 L11.6812046,14.3437006 C11.6879039,14.3128522 11.6879039,13.3839213 11.6812046,11.5569081 C11.6796087,11.3991695 11.6102745,11.3203002 11.473202,11.3203002 C11.4690281,11.3190832 11.3483311,11.3190832 11.1111111,11.3203002 L11.1111111,10.4646465 L12.7838529,10.4646465 Z M12.020202,7.55555556 C12.5222791,7.55555556 12.9292929,7.96256942 12.9292929,8.46464646 C12.9292929,8.96672351 12.5222791,9.37373737 12.020202,9.37373737 C11.518125,9.37373737 11.1111111,8.96672351 11.1111111,8.46464646 C11.1111111,7.96256942 11.518125,7.55555556 12.020202,7.55555556 Z" id="🎨-Color"></path></svg></div></div></div><input type="text" data-hook="category-settings-form__title" id="INPUT_ID_CATEGORY_TITLE" class="_31QuG _2oVwR" placeholder="게시판 이름을 입력하세요." value="여행 리뷰/정보" style="border: 1px solid rgba(0, 0, 0, 0.2);"></div><div class="_3bWcK"><div class="_2-_9a _3E-Mz"><div class="s1OaD"><label class="_3VKv5">머리글 제목</label><div class="_2olh8" titlefontclassname="forum-title-classic-font" aria-label="방문자가 내 커뮤니티의 성격을 파악할 수 있도록 게시판 메인 페이지 제목을 추가하세요." appeardelay="500" direction="ltr"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" role="img" class="icon-fill"><path d="M12,4 C16.418278,4 20,7.581722 20,12 C20,16.418278 16.418278,20 12,20 C7.581722,20 4,16.418278 4,12 C4,7.581722 7.581722,4 12,4 Z M12,4.88888889 C8.07264178,4.88888889 4.88888889,8.07264178 4.88888889,12 C4.88888889,15.9273582 8.07264178,19.1111111 12,19.1111111 C15.9273582,19.1111111 19.1111111,15.9273582 19.1111111,12 C19.1111111,8.07264178 15.9273582,4.88888889 12,4.88888889 Z M12.7838529,10.4646465 L12.7838529,14.7124624 L13.2929293,14.7372503 L13.2929293,15.5555556 L11.1111111,15.5555556 L11.1111111,14.7709045 L11.3086109,14.7525481 C11.4933507,14.7353636 11.6400629,14.5975733 11.6738544,14.4213422 L11.6812046,14.3437006 C11.6879039,14.3128522 11.6879039,13.3839213 11.6812046,11.5569081 C11.6796087,11.3991695 11.6102745,11.3203002 11.473202,11.3203002 C11.4690281,11.3190832 11.3483311,11.3190832 11.1111111,11.3203002 L11.1111111,10.4646465 L12.7838529,10.4646465 Z M12.020202,7.55555556 C12.5222791,7.55555556 12.9292929,7.96256942 12.9292929,8.46464646 C12.9292929,8.96672351 12.5222791,9.37373737 12.020202,9.37373737 C11.518125,9.37373737 11.1111111,8.96672351 11.1111111,8.46464646 C11.1111111,7.96256942 11.518125,7.55555556 12.020202,7.55555556 Z" id="🎨-Color"></path></svg></div></div></div><input type="text" id="INPUT_ID_HEADER_TITLE" class="_31QuG _2oVwR" placeholder="제목 추가" value="여행 리뷰/정보" style="border: 1px solid rgba(0, 0, 0, 0.2);">
    </div><div class="_3bWcK"><div class="_2-_9a _3E-Mz"><div class="s1OaD"><label class="_3VKv5">머리글 부제</label><div class="_2olh8" titlefontclassname="forum-title-classic-font" aria-label="게시판 설명을 추가하세요. 게시판 홈페이지 입장 시 방문자에게 게시판에서 가능한 활동이 무엇인지 알려주세요." appeardelay="500" direction="ltr"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" role="img" class="icon-fill"><path d="M12,4 C16.418278,4 20,7.581722 20,12 C20,16.418278 16.418278,20 12,20 C7.581722,20 4,16.418278 4,12 C4,7.581722 7.581722,4 12,4 Z M12,4.88888889 C8.07264178,4.88888889 4.88888889,8.07264178 4.88888889,12 C4.88888889,15.9273582 8.07264178,19.1111111 12,19.1111111 C15.9273582,19.1111111 19.1111111,15.9273582 19.1111111,12 C19.1111111,8.07264178 15.9273582,4.88888889 12,4.88888889 Z M12.7838529,10.4646465 L12.7838529,14.7124624 L13.2929293,14.7372503 L13.2929293,15.5555556 L11.1111111,15.5555556 L11.1111111,14.7709045 L11.3086109,14.7525481 C11.4933507,14.7353636 11.6400629,14.5975733 11.6738544,14.4213422 L11.6812046,14.3437006 C11.6879039,14.3128522 11.6879039,13.3839213 11.6812046,11.5569081 C11.6796087,11.3991695 11.6102745,11.3203002 11.473202,11.3203002 C11.4690281,11.3190832 11.3483311,11.3190832 11.1111111,11.3203002 L11.1111111,10.4646465 L12.7838529,10.4646465 Z M12.020202,7.55555556 C12.5222791,7.55555556 12.9292929,7.96256942 12.9292929,8.46464646 C12.9292929,8.96672351 12.5222791,9.37373737 12.020202,9.37373737 C11.518125,9.37373737 11.1111111,8.96672351 11.1111111,8.46464646 C11.1111111,7.96256942 11.518125,7.55555556 12.020202,7.55555556 Z" id="🎨-Color"></path></svg></div></div></div><textarea id="INPUT_ID_DESCRIPTION" class="_31QuG _2oVwR _3q_vY" placeholder="게시판 설명을 추가하세요." style="border: 1px solid rgba(0, 0, 0, 0.2); height: 73px;">게시판에서 여행 관련 주제의 글에 참여해보세요.</textarea></div><div class="KmwsH _1-BAK" style="background-image: url(&quot;https://static.wixstatic.com/media/8bde4fb7e0db407693c87bdcc9150c9e.jpg/v1/fit/w_829,h_360,al_c,q_80/file.webp&quot;); background-size: cover;"><div class="_36haM forum-content-classic-font"><svg width="19px" height="19px" viewBox="0 0 19 19" version="1.1" xmlns="http://www.w3.org/2000/svg" class="_55Vto"><path d="M3,7.8 L3,3.2 C3,3.08954305 3.08954305,3 3.2,3 L3.8,3 C3.91045695,3 4,3.08954305 4,3.2 L4,5.79219722 C5.19002477,4.10459307 7.17019471,3 9.41185475,3 C13.0503869,3 16,5.91014913 16,9.5 C16,9.668236 15.9935219,9.83497919 15.9807983,10 L14.9637136,10 C14.9787551,9.83531898 14.9864392,9.66854485 14.9864392,9.5 C14.9864392,6.46243388 12.4906127,4 9.41185475,4 C7.24552793,4 5.3678131,5.21916205 4.44511245,7 L7.8,7 C7.91045695,7 8,7.08954305 8,7.2 L8,7.8 C8,7.91045695 7.91045695,8 7.8,8 L3.2,8 C3.08954305,8 3,7.91045695 3,7.8 Z M16,11.2 L16,15.8 C16,15.9104569 15.9104569,16 15.8,16 L15.2,16 C15.0895431,16 15,15.9104569 15,15.8 L15,13.2078028 C13.8099752,14.8954069 11.8298053,16 9.58814525,16 C5.9496131,16 3,13.0898509 3,9.5 C3,9.331764 3.00647814,9.16502081 3.01920172,9 L4.03628637,9 C4.02124492,9.16468102 4.01356081,9.33145515 4.01356081,9.5 C4.01356081,12.5375661 6.50938727,15 9.58814525,15 C11.7544721,15 13.6321869,13.780838 14.5548875,12 L11.2,12 C11.0895431,12 11,11.9104569 11,11.8 L11,11.2 C11,11.0895431 11.0895431,11 11.2,11 L15.8,11 C15.9104569,11 16,11.0895431 16,11.2 Z" id="path-1"></path></svg>이미지 변경<input class="_2YMao" type="file" name="cover image" accept="image/*"></div><div titlefontclassname="forum-title-classic-font" appeardelay="500" direction="ltr"><button aria-label="커버 이미지 삭제" class="_2gmxH"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="KUQFu"><path fill-rule="evenodd" d="M17 17c0 1.657-1.343 3-3 3H9c-1.657 0-3-1.343-3-3V7H5V6h13v1h-1v10zM9 9h1v7H9V9zm4 0h1v7h-1V9zm-6 8c0 1.105.895 2 2 2h5c1.105 0 2-.895 2-2V7H7v10zm6-11V5h-3v1H9V5c0-.552.448-1 1-1h3c.552 0 1 .448 1 1v1h-1z"></path></svg></button></div></div></div></div></div><div class="_1CqyJ" data-hook="categories-manager-footer-buttons"><div class="_3Cioj forum-separator-background-color"></div><div class="VO2IV"><div class="_3-clJ"><button class="rFYrt _2EJGy forum-content-classic-font button-border-color button-color _3plV8" data-hook="leftButton"><span class="_3LiYl">취소</span></button>
																					</div>
																					<div class="_3-clJ">
																						<button class="rFYrt forum-content-classic-font button-background-color button-primary-text-color _3wRgP" disabled="" data-hook="rightButton"><span class="_3LiYl">저장</span></button>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
							</main>
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
			</div>
			</main>
			</div>
			</div>
			</div>
			</div>
		</body>

		</html>