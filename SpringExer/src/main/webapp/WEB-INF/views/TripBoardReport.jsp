<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!DOCTYPE html>
		<html class="enable-scroll" lang="ko">

		<head>
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
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
		<style>
		.moreButtonDiv {
			position: relative;
			display: flex;
			justify-content: center;
			align-items: center;
			height: 24px;
			width: 24px;
			flex-shrink: 0;
			vertical-align: middle;
			line-height: normal !important;
		}
		
		.moreButton {
			border-radius: var(--buttonBorderRadius);
			background: 0 0;
			border: 0;
			padding: 0;
			cursor: pointer;
		}
		
		.actions {
			right: 0px;
			color: #000000;
			font: 500 14px/17px 'Noto Sans KR', sans-serif;
			cursor: default;
			border-radius: 2px;
			box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 0 4px 0 rgba(0, 0, 0, 0.1);
			border: solid 1px rgba(255, 255, 255, 0.25);
			padding: 0px 0px 15px 15px;
			display: flex;
			flex-direction: column;
			position: absolute;
			top: 25px;
			z-index: calc(var(--pinned-layer-in-container, 902) - 2);
			min-width: 200px;
			line-height: normal !important;
			margin: 0;
			outline: 0;
			background: transparent;
			white-space: nowrap;
			pointer-events: auto;
		}
		
		.actions *,
		.actions::before,
		.actions::after {
			box-sizing: inherit;
		}
		
		.actionButton {
			margin-top: 16px;
			color: rgb(0, 0, 0);
			fill: rgb(0, 0, 0);
			padding: 0 20px;
			background: 0 0;
			cursor: pointer;
			border: 0;
			padding: 0;
			width: 100%;
			display: block;
		}
		
		.postActions {
			display: flex;
			align-items: center;
			padding: 0;
			border: 0;
		}
		
		.icon {
			display: flex;
			align-items: center;
			justify-content: center;
			width: 24px;
			height: 24px;
			padding: 0;
			border: 0;
		}
		
		.ActionButtonText {
			margin-left: 12px;
			text-align: left;
			font-size: 14px;
			flex-grow: 1;
			margin-left: 10px;
			padding: 5px;
			border: 0;
		}
		</style>
		</head>

		<body>
		
	<jsp:include page="/WEB-INF/views/templates/Top.jsp"/>
		
			<div style="position: absolute; top: 200px; left:500px">
				<!-- 잘 보이기 위한 위치-->이 버튼을 실행하면 아래 목록이 뜨게 설정하세요
				<!--설명-->
				<div class="moreButtonDiv">
					<button class="moreButton _2jKCS button-hover-fill forum-icon-fill forum-text-color _2B7gt" aria-label="More actions" id="moreButton">
						<svg xmlns="http://www.w3.org/2000/svg" role="img" width="24" height="24" viewBox="0 0 24 24">
							<path fill-rule="evenodd" d="M22.444 13.5c-.82-.03-1.464-.716-1.444-1.537.02-.82.697-1.473 1.518-1.463.821.01 1.482.679 1.482 1.5-.016.844-.712 1.515-1.556 1.5zm0-6.5c-.82-.03-1.464-.716-1.444-1.537.02-.82.697-1.473 1.518-1.463C23.34 4.01 24 4.68 24 5.5c-.016.844-.712 1.515-1.556 1.5zm.112 10c.82.03 1.464.716 1.444 1.537-.02.82-.697 1.473-1.519 1.463-.82-.01-1.48-.679-1.481-1.5.017-.843.713-1.514 1.556-1.5z"></path>
							<!--아이콘그림-->
						</svg>
					</button>
					<div class="actions" role="menu">
						<div>
							<button class="actionButton" role="menuitem">
								<div class="postActions">
									<div class="icon">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" strokeClass="_23zYH" fillClass="_3RleN">
											<path d="M12.5 3c.828 0 1.5.672 1.5 1.5v.708l.193.058C16.403 5.98 18 8.053 18 10.5v2.882c0 .682.514 1.085.724 1.17.907.46 1.276 1.327 1.276 2.066V17c0 .552-.448 1-1 1h-4.05c-.232 1.141-1.24 2-2.45 2-1.21 0-2.218-.859-2.45-2H6c-.552 0-1-.448-1-1v-.382c0-.816.43-1.567 1.124-1.982.584-.281.876-.7.876-1.254V10.5c0-2.518 1.692-4.64 4-5.293V4.5c0-.828.672-1.5 1.5-1.5z" transform="translate(-24 -12) translate(24 12)"></path>
										</svg>
										<!--아이콘그림-->
									</div>
									<div class="ActionButtonText">게시물 팔로우</div>
								</div>
							</button>
							<button class="actionButton" role="menuitem">
								<div class="postActions">
									<div class="icon">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
											<path fill-rule="evenodd" d="M13.777 6.084l6 4c.23.153.292.464.139.693-.037.055-.084.102-.139.139l-6 4c-.23.153-.54.091-.693-.139-.055-.082-.084-.178-.084-.277V13h-1c-3.866 0-7 3.134-7 7H4v-2.5c0-5.079 3.986-9.227 9-9.487V6.5c0-.276.224-.5.5-.5.099 0 .195.03.277.084zM14 7.434V9h-.5c-4.13 0-7.57 2.944-8.34 6.848C6.564 13.541 9.102 12 12 12h2v1.566l4.599-3.066L14 7.434z"> </path>
											<!--아이콘그림-->
										</svg>
									</div>
									<div class="ActionButtonText">공유</div>
								</div>
							</button>
							<button class="actionButton" role="menuitem">
								<div class="postActions" data-hook="post-actions__report">
									<div class="icon">
										<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18" style="fill-rule: evenodd;">
											<path d="M680,549a9,9,0,1,1,9-9A9,9,0,0,1,680,549Zm1-12a1,1,0,0,0-2,0v4a1,1,0,0,0,2,0v-4Zm-1,6a1,1,0,1,0,1,1A1,1,0,0,0,680,543Z" transform="translate(-671 -531)"> </path>
											<!--아이콘그림-->
										</svg>
									</div>
									<div class="ActionButtonText">게시물 신고</div>
								</div>
							</button>
						</div>
					</div>
				</div>
			</div>
		</body>

		</html>