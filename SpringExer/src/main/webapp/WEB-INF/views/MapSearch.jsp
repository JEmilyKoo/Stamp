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
			<link rel="preconnect" href="https://fonts.googleapis.com">
			<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
			<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
			
			<style data-href="https://static.parastorage.com/services/editor-elements/dist/WPhoto_CirclePhoto.00104e81.chunk.min.css">
			.-qfs1 {
				width: 100%;
				height: 100%;
				box-sizing: border-box
			}
			
			._1RmI_ {
				min-height: var(--image-min-height);
				min-width: var(--image-min-width)
			}
			
			._1RmI_ img {
				-o-object-position: var(--object-position);
				object-position: var(--object-position);
				filter: var(--filter-effect-svg-url)
			}
			
			._1Ci6i ._1RmI_ img {
				position: static;
				box-shadow: 0 0 0 #000;
				-webkit-user-select: none;
				-moz-user-select: none;
				-ms-user-select: none;
				user-select: none
			}
			
			._1Ci6i .-qfs1 {
				display: block;
				box-shadow: var(--shd, 0 1px 3px rgba(0, 0, 0, .5));
				border-style: solid;
				border-color: rgba(var(--brd, var(--color_11)), var(--alpha-brd, 1));
				border-width: var(--brw, 2px);
				background-color: rgba(var(--brd, var(--color_11)), var(--alpha-brd, 1))
			}
			
			._1Ci6i .-qfs1,
			._1Ci6i ._1RmI_ {
				border-radius: 50%;
				overflow: hidden
			}
			</style>
			<title>지도 검색 | 찍GO</title>
			<link rel="canonical" href="https://jemilykoo.wixsite.com/website/%EA%B4%80%EB%A0%A8-%EC%9E%90%EB%A3%8C">
			<meta property="og:title" content="지도 검색 | 찍GO">
			<meta property="og:url" content="https://jemilykoo.wixsite.com/website/%EA%B4%80%EB%A0%A8-%EC%9E%90%EB%A3%8C">
			
			<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/bootstrap-components-common.js"></script>
			<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/bootstrap-components-classic.js"></script>
			<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/Container_RectangleArea.js"></script>
			<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/VerticalMenu_VerticalMenuSolidColorSkin.js"></script>
			<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/LoginSocialBar.js"></script>
			<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/bootstrap-components-responsive.js"></script>
			<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/MeshGroup.js"></script>
			<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/FreemiumBannerDesktop.js"></script>
			<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/SkipToContentButton.js"></script>
			<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/HtmlComponent.js"></script>
			<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/WPhoto_CirclePhoto.js"></script>
			<script src="${pageContext.request.contextPath}/stampGO_files/requirejs.js"></script>
		</head>

		<body>
		
	<jsp:include page="/WEB-INF/views/templates/Top.jsp"/>
			<script type="text/javascript">
			var bodyCacheable = true;
			var exclusionReason = {
				"shouldRender": true,
				"forced": false
			};
			var ssrInfo = {
				"renderBodyTime": 1387,
				"renderTimeStamp": 1624442117370
			}
			</script>
			<script>
			window.clientSideRender = false;
			</script>
			<!--pageHtmlEmbeds.bodyStart start-->
			<script type="wix/htmlEmbeds" id="pageHtmlEmbeds.bodyStart start"></script>
			<script type="wix/htmlEmbeds" id="pageHtmlEmbeds.bodyStart end"></script>
			<!--pageHtmlEmbeds.bodyStart end-->
			<script id="wix-first-paint">
			if(window.ResizeObserver && (!window.PerformanceObserver || !PerformanceObserver.supportedEntryTypes || PerformanceObserver.supportedEntryTypes.indexOf('paint') === -1)) {
				new ResizeObserver(function(entries, observer) {
					entries.some(function(entry) {
						var contentRect = entry.contentRect;
						if(contentRect.width > 0 && contentRect.height > 0) {
							requestAnimationFrame(function(now) {
								window.wixFirstPaint = now;
								dispatchEvent(new CustomEvent('wixFirstPaint'));
							});
							observer.disconnect();
							return true;
						}
					});
				}).observe(document.body);
			}
			</script>
			</pages-css>
			<div id="SITE_CONTAINER">
				<div id="main_MF">
					<div id="BACKGROUND_GROUP">
						<div>
							<div id="pageBackground_ldtv2" data-media-height-override-type="" data-media-position-override="false" class="_2AO2a">
								<div id="bgLayers_pageBackground_ldtv2" class="확인용7">
									<div id="bgMedia_pageBackground_ldtv2" class="높이백"></div>
								</div>
							</div>
						</div>
					</div>
					<div id="site-root">
						<div id="마스터페이지" class="메시레이아웃">
							<header tabindex="-1" id="SITE_HEADER_WRAPPER">
								<div id="SITE_HEADER" class="_26XlU">
									<div class="_2_pp6">
										<div class="_1MBwI">
											<div data-mesh-id="SITE_HEADERinlineContent" data-testid="inline-content">
												<div data-mesh-id="SITE_HEADERinlineContent-gridContainer" data-testid="mesh-container-content">
													<section id="comp-kpqfx1me" class="확인용6">
														<div data-testid="columns" class="확인용8">
															<div data-mesh-id="comp-kpqfx1miinlineContent-gridContainer" data-testid="mesh-container-content"></div>
														</div>
												</div>
											</div>
											</section>
										</div>
									</div>
								</div>
						</div>
					</div>
					</header>
					<main id="PAGES_CONTAINER" tabindex="-1">
						<div id="SITE_PAGES">
							<div class="스트레치">
								<div id="ldtv2" class="확인용2">
									<div class="확인용3"></div>
									<div class="확인용4">
										<div id="Containerldtv2" class="확인용5">
											<div data-mesh-id="Containerldtv2inlineContent" data-testid="inline-content">
												<div data-mesh-id="Containerldtv2inlineContent-gridContainer" data-testid="mesh-container-content">
													<section id="comp-kpqa282o" class="확인용6">
														<div data-testid="columns" class="확인용8">
															<div id="comp-kpqa282o1" class="릴레이티브비지블">
																<div data-mesh-id="comp-kpqa282o1inlineContent" data-testid="inline-content">
																	<div data-mesh-id="comp-kpqa282o1inlineContent-gridContainer" data-testid="mesh-container-content">
																		<div id="comp-kpqa282o2" class="숲많이감클래스" data-testid="리치텍스트엘리먼트">
																			<h1 class="font_6" style="text-align:center;line-height:1.35em;font-size:40px"><span class="color_5"><span style="text-transform: uppercase;">지도 검색</span></span></h1></div>
																		<div id="comp-kpqa282q" class="숲많이감클래스" data-testid="리치텍스트엘리먼트">
																			<p class="font_8" style="line-height:1.75em;text-align:center;font-size:18px"><span class="color_5"><span style="text-decoration:underline">한국소프트웨어인재개발원 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Q
																				<br>
																				</span>
																			</p>
																		</div>
																		<div id="comp-kpqbpfma" class="숲많이감클래스" data-testid="리치텍스트엘리먼트">
																			<p class="font_9" style="line-height:1.875em;text-align:center;font-size:15px"><span class="color_5">#금천구 #서울<br></span></p>
																			<p class="font_9" style="line-height:1.875em;text-align:center;font-size:15px"><span class="color_5"></span></p>
																			<ul class="font_9 wix-list-text-align color_11" style="text-align:center;font-size:15px">
																				<li style="line-height: 1.875em;">
																					<p class="font_9" style="line-height:1.875em;font-size:15px"><span class="color_5">검색 목록</span></p>
																				</li>
																				<li style="line-height: 1.875em;">
																					<p class="font_9" style="line-height:1.875em;font-size:15px"><span class="color_5">검색 이력</span></p>
																				</li>
																				<li style="line-height: 1.875em;">
																					<p class="font_9" style="line-height:1.875em;font-size:15px"><span class="color_5">검색한 것</span></p>
																				</li>
																				<li style="line-height: 1.875em;">
																					<p class="font_9" style="line-height:1.875em;font-size:15px"><span class="color_5">검색 내역</span></p>
																				</li>
																			</ul>
																		</div>
																		<div id="comp-kpqa282q2" class="_26QaB">
																			<div class="_16FUt">
																				<jsp:include page="/WEB-INF/views/templates/get_draft.jsp" /> </div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</section>
													<section id="comp-kpqca0cq" class="확인용6">
														<div data-testid="columns" class="확인용8">
															<div id="comp-kpqca0cq1" class="릴레이티브비지블">
																<div data-mesh-id="comp-kpqca0cq1inlineContent" data-testid="inline-content">
																	<div data-mesh-id="comp-kpqca0cq1inlineContent-gridContainer" data-testid="mesh-container-content">
																		<section id="comp-kpqca0cr" class="확인용6">
																			<div data-testid="columns" class="확인용8">
																				<div id="comp-kpqca0cr1" class="릴레이티브비지블">
																					<div data-mesh-id="comp-kpqca0cr1inlineContent" data-testid="inline-content">
																						<div data-mesh-id="comp-kpqca0cr1inlineContent-gridContainer" data-testid="mesh-container-content">
																							<div id="comp-kpqca0cr2" class="_26QaB">
																								<wix-iframe data-src="">
																									<div class="_16FUt">
																										<iframe sandbox="allow-same-origin allow-forms allow-popups allow-scripts allow-pointer-lock" class="_3S5H9" title="htmlComp-iframe" name="htmlComp-iframe" data-src="" src="${pageContext.request.contextPath}/stampGO_files/get_draft_002.htm" width="100%" height="100%"></iframe>
																									</div>
																								</wix-iframe>
																							</div>
																							<div id="comp-kpqca0cr3" class="숲많이감클래스" data-testid="리치텍스트엘리먼트">
																								<h2 class="font_6" style="text-align:left;line-height:1.35em;font-size:40px"><span class="color_32"><span style="text-transform: uppercase;">주변 정보</span></span></h2></div>
																							<div id="comp-kpqca0cs" class="숲많이감클래스" data-testid="리치텍스트엘리먼트">
																								<p class="font_8" style="text-align:left;line-height:1.75em;font-size:18px"><span>크롤링한 주변 정보를 보여주는 칸</span></p>
																							</div>
																							<div id="comp-kpqca0cs1" class="숲많이감클래스" data-testid="리치텍스트엘리먼트">
																								<p class="font_9" style="line-height:1.875em;font-size:15px"><span>☑️병원<br></span></p>
																								<p class="font_9" style="line-height:1.875em;font-size:15px"><span>&nbsp;□카페</span></p>
																								<p class="font_9" style="line-height:1.875em;font-size:15px"><span>&nbsp;□주변 음식점</span></p>
																							</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</section>
																	</div>
																</div>
															</div>
														</div>
													</section>
													<section id="comp-kpqbg641" class="확인용6">
														<div data-testid="columns" class="확인용8">
															<div id="comp-kpqbg642" class="릴레이티브비지블">
																<div data-mesh-id="comp-kpqbg642inlineContent" data-testid="inline-content">
																	<div data-mesh-id="comp-kpqbg642inlineContent-gridContainer" data-testid="mesh-container-content">
																		<div id="comp-kpqbg6421" class="숲많이감클래스" data-testid="리치텍스트엘리먼트">
																			<h2 class="font_6" style="text-align:center;line-height:1.35em;font-size:40px"><span class="color_5"><span style="text-transform: uppercase;">거리별 선택</span></span></h2></div>
																		<section id="comp-kpqbg6422" class="확인용6">
																			<div data-testid="columns" class="확인용8">
																				<div id="comp-kpqbg6423" class="릴레이티브비지블">
																					<div data-mesh-id="comp-kpqbg6423inlineContent" data-testid="inline-content">
																						<div data-mesh-id="comp-kpqbg6423inlineContent-gridContainer" data-testid="mesh-container-content">
																							<div id="comp-kpqbg6424">
																								<div data-testid="svgRoot-comp-kpqbg6424" class="TG-Zk _1UnNA">
																									<svg preserveAspectRatio="xMidYMid meet" data-bbox="40.026 40.026 319.948 319.948" viewBox="40.026 40.026 319.948 319.948" height="400" width="400" xmlns="http://www.w3.org/2000/svg" data-type="color" role="img">
																										<defs>
																											<style>
																											#comp-kpqbg6424 svg [data-color="1"] {
																												fill: #FFFFFF;
																											}
																											</style>
																										</defs>
																										<g>
																											<path d="M200 40.026c-88.351 0-159.974 71.623-159.974 159.974S111.649 359.974 200 359.974c88.352 0 159.974-71.623 159.974-159.974S288.352 40.026 200 40.026zm17.786 228.68h-50.202l-.638-1.422.054-.117-12.914-28.099v-.001l-35.254-76.47h51.493l22.422 48.548 36.928-79.852h51.494l-63.383 137.413z" fill="#000001" data-color="1"></path>
																											<path fill="#000001" opacity=".3" d="M192.747 211.146l-25.039 57.56-10.601-23.065 17.82-73.079 17.82 38.584z" data-color="1"></path>
																										</g>
																									</svg>
																								</div>
																							</div>
																							<div id="comp-kpqbg6425" class="숲많이감클래스" data-testid="리치텍스트엘리먼트">
																								<h3 class="font_0" style="text-align:center;line-height:1.41em;font-size:22px"><span class="color_5"><span style="text-transform: uppercase;">100M</span></span></h3></div>
																						</div>
																					</div>
																				</div>
																				<div id="comp-kpqbg643" class="릴레이티브비지블">
																					<div data-mesh-id="comp-kpqbg643inlineContent" data-testid="inline-content">
																						<div data-mesh-id="comp-kpqbg643inlineContent-gridContainer" data-testid="mesh-container-content">
																							<div id="comp-kpqbg6431">
																								<div data-testid="svgRoot-comp-kpqbg6431" class="TG-Zk _1UnNA">
																									<svg preserveAspectRatio="xMidYMid meet" data-bbox="40.026 40.026 319.948 319.948" viewBox="40.026 40.026 319.948 319.948" height="400" width="400" xmlns="http://www.w3.org/2000/svg" data-type="color" role="img">
																										<defs>
																											<style>
																											#comp-kpqbg6431 svg [data-color="1"] {
																												fill: #FFFFFF;
																											}
																											</style>
																										</defs>
																										<g>
																											<path d="M200 40.026c-88.351 0-159.974 71.623-159.974 159.974S111.649 359.974 200 359.974c88.352 0 159.974-71.623 159.974-159.974S288.352 40.026 200 40.026zm17.786 228.68h-50.202l-.638-1.422.054-.117-12.914-28.099v-.001l-35.254-76.47h51.493l22.422 48.548 36.928-79.852h51.494l-63.383 137.413z" fill="#000001" data-color="1"></path>
																											<path fill="#000001" opacity=".3" d="M192.747 211.146l-25.039 57.56-10.601-23.065 17.82-73.079 17.82 38.584z" data-color="1"></path>
																										</g>
																									</svg>
																								</div>
																							</div>
																							<div id="comp-kpqbg6432" class="숲많이감클래스" data-testid="리치텍스트엘리먼트">
																								<h3 class="font_0" style="text-align:center;line-height:1.41em;font-size:22px"><span class="color_5"><span style="text-transform: uppercase;">200M</span></span></h3></div>
																						</div>
																					</div>
																				</div>
																				<div id="comp-kpqbg6441" class="릴레이티브비지블">
																					<div data-mesh-id="comp-kpqbg6441inlineContent" data-testid="inline-content">
																						<div data-mesh-id="comp-kpqbg6441inlineContent-gridContainer" data-testid="mesh-container-content">
																							<div id="comp-kpqbg6442">
																								<div data-testid="svgRoot-comp-kpqbg6442" class="TG-Zk _1UnNA">
																									<svg preserveAspectRatio="xMidYMid meet" data-bbox="24.959 40.069 150.022 119.895" viewBox="24.959 40.069 150.022 119.895" xmlns="http://www.w3.org/2000/svg" data-type="color" role="img">
																										<defs>
																											<style>
																											#comp-kpqbg6442 svg [data-color="1"] {
																												fill: #FFFFFF;
																											}
																											</style>
																										</defs>
																										<g>
																											<path d="M173 56.1L77.7 157.6c-2.8 3.1-7.7 3.1-10.8.3L27.4 121c-3.1-2.8-3.3-7.6-.3-10.7l4.5-5.7c2.8-3.1 7.7-3.3 10.8-.3L73 132.1 158.1 43c2.8-3.1 6.9-4.3 10.9-.8l3.6 3.3c3 2.9 3.2 7.7.4 10.6z" fill="#8c6239" data-color="1"></path>
																										</g>
																									</svg>
																								</div>
																							</div>
																							<div id="comp-kpqbg645" class="숲많이감클래스" data-testid="리치텍스트엘리먼트">
																								<h3 class="font_0" style="text-align:center;line-height:1.41em;font-size:22px"><span class="color_5"><span style="text-transform: uppercase;">500M</span></span></h3></div>
																						</div>
																					</div>
																				</div>
																				<div id="comp-kpqbg6452" class="릴레이티브비지블">
																					<div data-mesh-id="comp-kpqbg6452inlineContent" data-testid="inline-content">
																						<div data-mesh-id="comp-kpqbg6452inlineContent-gridContainer" data-testid="mesh-container-content">
																							<div id="comp-kpqbg6453">
																								<div data-testid="svgRoot-comp-kpqbg6453" class="TG-Zk _1UnNA">
																									<svg preserveAspectRatio="xMidYMid meet" data-bbox="40.026 40.026 319.948 319.948" viewBox="40.026 40.026 319.948 319.948" height="400" width="400" xmlns="http://www.w3.org/2000/svg" data-type="color" role="img">
																										<defs>
																											<style>
																											#comp-kpqbg6453 svg [data-color="1"] {
																												fill: #FFFFFF;
																											}
																											</style>
																										</defs>
																										<g>
																											<path d="M200 40.026c-88.351 0-159.974 71.623-159.974 159.974S111.649 359.974 200 359.974c88.352 0 159.974-71.623 159.974-159.974S288.352 40.026 200 40.026zm17.786 228.68h-50.202l-.638-1.422.054-.117-12.914-28.099v-.001l-35.254-76.47h51.493l22.422 48.548 36.928-79.852h51.494l-63.383 137.413z" fill="#000001" data-color="1"></path>
																											<path fill="#000001" opacity=".3" d="M192.747 211.146l-25.039 57.56-10.601-23.065 17.82-73.079 17.82 38.584z" data-color="1"></path>
																										</g>
																									</svg>
																								</div>
																							</div>
																							<div id="comp-kpqbg6454" class="숲많이감클래스" data-testid="리치텍스트엘리먼트">
																								<h3 class="font_0" style="text-align:center;line-height:1.41em;font-size:22px"><span class="color_5"><span style="text-transform: uppercase;">1000M</span></span></h3></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</section>
																		<div data-mesh-id="comp-kpqbg642inlineContent-wedge-3"></div>
																	</div>
																</div>
															</div>
														</div>
													</section>
													<section id="comp-kpqbg646" class="확인용6">
														<div data-testid="columns" class="확인용8">
															<div id="comp-kpqbg6461" class="릴레이티브비지블">
																<div data-mesh-id="comp-kpqbg6461inlineContent" data-testid="inline-content">
																	<div data-mesh-id="comp-kpqbg6461inlineContent-gridContainer" data-testid="mesh-container-content">
																		<div id="comp-kpqbg6462" class="숲많이감클래스" data-testid="리치텍스트엘리먼트">
																			<h2 class="font_6" style="text-align:center;line-height:1.35em;font-size:40px"><span class="color_32"><span style="text-transform: uppercase;">근처 스탬프</span></span></h2></div>
																		<div id="comp-kpqbg6463" class="숲많이감클래스" data-testid="리치텍스트엘리먼트">
																			<p class="font_8" style="text-align:center;line-height:1.75em;font-size:18px"><span>여러분의 여행 가이드</span></p>
																		</div>
																		<section id="comp-kpqbg6464" class="확인용6">
																			<div data-testid="columns" class="확인용8">
																				<div id="comp-kpqbg6465" class="릴레이티브비지블">
																					<div data-mesh-id="comp-kpqbg6465inlineContent" data-testid="inline-content">
																						<div data-mesh-id="comp-kpqbg6465inlineContent-gridContainer" data-testid="mesh-container-content">
																							<div id="comp-kpqbg647" class="_1Ci6i">
																								<div data-testid="linkElement" class="-qfs1">
																									<img src="${pageContext.request.contextPath}/images/stamp/stamp10.png" alt="Paris" style="width:220px;height:220px;object-fit:cover;object-position:50% 50% border-radius: 50%;">
																								</div>
																							</div>
																							<div id="comp-kpqbg6471" class="숲많이감클래스" data-testid="리치텍스트엘리먼트">
																								<h3 class="font_0" style="text-align:center;line-height:1.41em;font-size:22px"><span class="color_32"><span style="text-transform: uppercase;">이근처 스탬프1</span></span></h3></div>
																							<div id="comp-kpqbg6472" aria-disabled="false" class="oneButton"><a data-testid="linkElement" href="https://jemilykoo.wixsite.com/website/stamp2" target="_self" class="oneButtonLinkClass"><span class="oneButtonSpanClass">위치 확인하기</span></a></div>
																						</div>
																					</div>
																				</div>
																				<div id="comp-kpqbg6473" class="릴레이티브비지블">
																					<div data-mesh-id="comp-kpqbg6473inlineContent" data-testid="inline-content">
																						<div data-mesh-id="comp-kpqbg6473inlineContent-gridContainer" data-testid="mesh-container-content">
																							<div id="comp-kpqbg648" class="_1Ci6i">
																								<div data-testid="linkElement" class="-qfs1">
																									<img src="${pageContext.request.contextPath}/images/stamp/stamp11.png" alt="Duffle Bag" style="width:220px;height:220px;object-fit:cover;object-position:50% 50% border-radius: 50%;">
																									
																									
																								</div>
																							</div>
																							<div id="comp-kpqbg6481" class="숲많이감클래스" data-testid="리치텍스트엘리먼트">
																								<h3 class="font_0" style="text-align:center;line-height:1.41em;font-size:22px"><span class="color_32"><span style="text-transform: uppercase;">이근처 스탬프2</span></span></h3></div>
																							<div id="comp-kpqbg6482" role="button" tabindex="0" aria-disabled="false" class="oneButton">
																								<div data-testid="linkElement" class="oneButtonLinkClass"><span class="oneButtonSpanClass">위치 확인하기</span></div>
																							</div>
																						</div>
																					</div>
																				</div>
																				<div id="comp-kpqbg6483" class="릴레이티브비지블">
																					<div data-mesh-id="comp-kpqbg6483inlineContent" data-testid="inline-content">
																						<div data-mesh-id="comp-kpqbg6483inlineContent-gridContainer" data-testid="mesh-container-content">
																							<div id="comp-kpqbg6484" class="_1Ci6i">
																								<div data-testid="linkElement" class="-qfs1">
																									<img src="${pageContext.request.contextPath}/images/stamp/stamp12.png" alt="Carefree" style="width:220px;height:220px;object-fit:cover;object-position:50% 50% border-radius: 50%;">
								
																								</div>
																							</div>
																							<div id="comp-kpqbg6485" class="숲많이감클래스" data-testid="리치텍스트엘리먼트">
																								<h3 class="font_0" style="text-align:center;line-height:1.41em;font-size:22px"><span class="color_32"><span style="text-transform: uppercase;">이근처 스탬프3</span></span></h3></div>
																							<div id="comp-kpqbg6486" role="button" tabindex="0" aria-disabled="false" class="oneButton">
																								<div data-testid="linkElement" class="oneButtonLinkClass"><span class="oneButtonSpanClass">위치 확인하기</span></div>
																							</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</section>
																		<div data-mesh-id="comp-kpqbg6461inlineContent-wedge-4"></div>
																	</div>
																</div>
															</div>
														</div>
													</section>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</main>
					<div id="soapAfterPagesContainer" class="page-without-sosp">
						<div data-mesh-id="soapAfterPagesContainerinlineContent" data-testid="inline-content">
							<div data-mesh-id="soapAfterPagesContainerinlineContent-gridContainer" data-testid="mesh-container-content"></div>
						</div>
					</div>
				</div>
			</div>
			</div>
			<script>
			window.firstPageId = 'ldtv2'
			window.bi.sendBeat(12, 'Partially visible', {
				pageId: window.firstPageId
			})
			if(!window.__browser_deprecation__) {
				window.fedops.phaseStarted('partially_visible')
			}
			if(window.requestCloseWelcomeScreen) {
				window.requestCloseWelcomeScreen()
			}
			</script>
			<!-- react-dom -->
		</body>

		</html>