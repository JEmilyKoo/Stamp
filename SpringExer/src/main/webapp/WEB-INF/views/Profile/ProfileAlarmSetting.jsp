<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="enable-scroll" lang="ko"><head>
  </head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1" id="wixDesktopViewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!--내가 추가한 코드-->
  <script src="${pageContext.request.contextPath}/stampGO_files/bundle.js"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="https://static.parastorage.com/services/profile-card-tpa-ooi/1.277.0/ProfileCardViewerWidget.bundle.min.js" src="${pageContext.request.contextPath}/stampGO_files/ProfileCardViewerWidget.js"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="https://static.parastorage.com/services/pro-gallery-santa-wrapper/1.1612.0/viewer.bundle.min.js" src="${pageContext.request.contextPath}/stampGO_files/viewer.js"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="https://static.parastorage.com/services/communities-forum-client/1.432.0/forum-app-viewer.bundle.min.js" src="${pageContext.request.contextPath}/stampGO_files/forum-app-viewer.js"></script><!-- base href="https://jemilykoo.wixsite.com/website/" -->
  <meta name="generator" content="Wix\.com Website Builder"><!--내가 추가한 코드-->
  
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/css.css" >

  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/profileSetting.css" >
  
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/ProfileAlarmSetting.css" >
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

  <!-- Legacy Polyfills -->
  <script src="${pageContext.request.contextPath}/stampGO_files/minified.js" nomodule=""></script>
  <script src="${pageContext.request.contextPath}/stampGO_files/focus-within-polyfill.js" nomodule=""></script>
  <script src="${pageContext.request.contextPath}/stampGO_files/polyfill.js" nomodule=""></script>

  <script data-url="https://static.parastorage.com/services/wix-thunderbolt/dist/externals-registry.inline.d76c0075.bundle.min.js">(self.webpackJsonp__wix_thunderbolt_app=self.webpackJsonp__wix_thunderbolt_app||[]).push([[58],{26277:function(){"use strict";var e=window.externalsRegistry={lodash:{},react:{},reactDOM:{}},n=e.lodash,o=e.react,a=e.reactDOM;n.loaded=new Promise((function(e){n.onload=e})),window.reactDOMReference=window.ReactDOM={loading:!0},a.loaded=new Promise((function(e){a.onload=function(){Object.assign(window.reactDOMReference,window.ReactDOM,window.preactCompat),e()}})),window.reactReference=window.React={loading:!0},o.loaded=new Promise((function(e){o.onload=function(){Object.assign(window.reactReference,window.React,window.preactCompat),e()}})),window.reactAndReactDOMLoaded=Promise.all([o.loaded,a.loaded])}},function(e){"use strict";var n;n=26277,e(e.s=n)}]);
//# sourceMappingURL=https://static.parastorage.com/services/wix-thunderbolt/dist/externals-registry.inline.d76c0075.bundle.min.js.map</script>

  <!-- thunderbolt elements promise -->
  <script>
    window.ThunderboltElementsLoaded = new Promise(function(r) { window.ThunderboltElementsLoadedResolve = r})
  </script>

  <!-- preloading pre-scripts -->
  
    
    
  
    
    
  
    
    
  <!-- lodash script -->
  
    <script async="" onload="externalsRegistry.lodash.onload()" src="${pageContext.request.contextPath}/stampGO_files/lodash.js"></script>
  

  
      <!-- react -->
      <script crossorigin="" src="${pageContext.request.contextPath}/stampGO_files/react.js" onload="externalsRegistry.react.onload()" defer="defer"></script>
  

  <!-- preloading post-scripts -->
  









<title>설정</title>
  <link rel="canonical" href="https://jemilykoo.wixsite.com/website/stamp">
  <meta property="og:title" content="스탬프 | 찍GO">
  <meta property="og:url" content="https://jemilykoo.wixsite.com/website/account/settings">
  <meta property="og:site_name" content="찍GO">
  <meta property="og:type" content="website">
  <meta name="twitter:card" content="summary_large_image">
  <meta name="twitter:title" content="스탬프 | 찍GO">
<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/bootstrap-components-common.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/bootstrap-components-classic.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/Container_RectangleArea.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/VerticalMenu_VerticalMenuSolidColorSkin.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/LoginSocialBar.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/bootstrap-components-responsive.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/MeshGroup.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/FreemiumBannerDesktop.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/SkipToContentButton.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/WPhoto_CirclePhoto.js"></script><script src="${pageContext.request.contextPath}/stampGO_files/requirejs.js"></script><link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stampGO_files/HtmlComponent.css"><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/HtmlComponent.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/proGallery_videoScrollHelper.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/ItemActions.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/proGallery_videoItem.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/AsyncEventHandler.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/ProGalleryInfoElement.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/proGallery_reactPlayer.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/HlsPlayer.js"></script><style data-emotion=""></style><link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stampGO_files/common-site-members-dialogs.css"><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/common-site-members-dialogs.js"></script><link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stampGO_files/forum-rce-frameless.css"><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/forum-rce-frameless.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/0.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/73.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/53.js"></script><link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stampGO_files/member-card-async-frameless.css"><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/member-card-async-frameless.js"></script><link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stampGO_files/report-post-modal.css"><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/report-post-modal.js"></script><link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stampGO_files/TPAPopup.css" crossorigin="anonymous"><link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stampGO_files/post-page-wix-comments.css" crossorigin="anonymous"><style type="text/css"> 
    
    </style></head>
<body class="_1Arx3 _1Fqrx _1vwX8" style="">

<script type="text/javascript">
    var bodyCacheable = true;
    
    var exclusionReason = {"shouldRender":true,"forced":false};
    var ssrInfo = {"renderBodyTime":371,"renderTimeStamp":1624436363712}
</script>




<script>window.clientSideRender = false;</script>


    <!--pageHtmlEmbeds.bodyStart start-->
    <script type="wix/htmlEmbeds" id="pageHtmlEmbeds.bodyStart start"></script>
    
    <script type="wix/htmlEmbeds" id="pageHtmlEmbeds.bodyStart end"></script>
    <!--pageHtmlEmbeds.bodyStart end-->




<script id="wix-first-paint">
    if (window.ResizeObserver &&
        (!window.PerformanceObserver || !PerformanceObserver.supportedEntryTypes || PerformanceObserver.supportedEntryTypes.indexOf('paint') === -1)) {
        new ResizeObserver(function (entries, observer) {
            entries.some(function (entry) {
                var contentRect = entry.contentRect;
                if (contentRect.width > 0 && contentRect.height > 0) {
                    requestAnimationFrame(function (now) {
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


	








	


</style>
<style id="css_프로필아이디">
	


</style>
	


	



	


</style><style id="css_gmefg">

</style></pages-css>
<div id="SITE_CONTAINER" class="focus-ring-active"><div id="main_MF"><div id="site-root"><div id="마스터페이지" class="메시레이아웃"><header tabindex="-1" id="SITE_HEADER_WRAPPER"><div id="SITE_HEADER" class="_26XlU"><div class="_2_pp6"></div></div></header><main id="PAGES_CONTAINER" tabindex="-1"><div id="SITE_PAGES"><div class="스트레치"><div id="gmefg" class="확인용2"><div class="확인용3"></div><div class="확인용4"><div id="Containergmefg" class="확인용5"><div data-mesh-id="ContainergmefginlineContent" data-testid="inline-content" ><div data-mesh-id="ContainergmefginlineContent-gridContainer" data-testid="mesh-container-content"><section id="comp-kpndpm0f" class="확인용6"><div data-testid="columns" class="확인용8"><div id="comp-kpndpm0f1" class="릴레이티브비지블"><div data-mesh-id="comp-kpndpm0f1inlineContent" data-testid="inline-content" ><div data-mesh-id="comp-kpndpm0f1inlineContent-gridContainer" data-testid="mesh-container-content"></div></div></div></div></section><div id="TPASection_kpndpdyi" class="_2JOHk" style="overflow: hidden; height: 1649px;">

	<jsp:include page="/WEB-INF/views/templates/settings-app.jsp"/>
</div></div></div></div></div></div></div></div></main><div id="soapAfterPagesContainer" class="page-with-sosp"><div data-mesh-id="soapAfterPagesContainerinlineContent" data-testid="inline-content" ><div data-mesh-id="soapAfterPagesContainerinlineContent-gridContainer" data-testid="mesh-container-content"><div id="SOSP_CONTAINER_CUSTOM_ID" class="_2_2nr"><div class="_3oi4n" data-testid="container-bg"></div><div data-mesh-id="SOSP_CONTAINER_CUSTOM_IDinlineContent" data-testid="inline-content" ><div data-mesh-id="SOSP_CONTAINER_CUSTOM_IDinlineContent-gridContainer" data-testid="mesh-container-content"><div id="comp-kpndp2z9" style="height: auto;"><div class="comp-kpndp2z9"><div data-hook="ProfileCard-wrapper" dir="ltr"><div data-hook="ProfileCard-verticalWidget"><div class="_24V6U"><div class="_31rtG"></div><div class="_1rug6 osdAp"><div class="_1jsW2"><div data-hook="ProfileCard-profilePhoto" class="_21JiY _1HjbT _3ZWaZ"><div class="_2oQc- _1w3no"><div class="_2oQc- _3wTA0"><svg width="71%" height="78%" viewBox="0 0 61 67" xmlns="http://www.w3.org/2000/svg" class="_1RgGn"><g><path d="M0,65.4388545 C0,47.7801858 10.7105078,38 30.332158,38 C49.9538082,38 60.6643159,47.7801858 60.75,65.4388545 L60.75,67.25 L0,67.25 L0,65.4388545 Z"></path><path d="M46.5,16.3421053 C46.5,25.9342105 39.4125,33.75 30.75,33.75 C22.0875,33.75 15,25.9342105 15,16.3421053 C15,7.01644737 21.7375,0 30.75,0 C39.7625,0 46.5,7.01644737 46.5,16.3421053 Z"></path></g></svg><div class="_2oQc- _3ZWaZ"></div><div class="_2oQc- _2Uvzj _3ZWaZ"></div><div class="_2ebCT"></div></div></div></div><div class="_pvtp"><div class="N_MN9"><div data-hook="ProfileCard-memberName" class="_3AkkR"><div class="_2_TEk"><span class="_2xV_H kl2Hr">userID</span><div class="_3rxad"></div></div></div><div data-hook="ProfileCard-followersFollowing" class="_2XRvR"><div data-hook="ProfileCard-followers" class="_18463"><button class="_2rBmt _3y1t9" type="button" tabindex="0"><span>0</span><div class="_3TgFJ">팔로워</div></button></div><div class="_25aDC"></div><div data-hook="ProfileCard-following"><button class="_2rBmt _2QmZl" type="button" tabindex="0"><span>0</span><div class="_3TgFJ">팔로잉</div></button></div></div></div><div class="_2Lfft"><div class="_1-zoY"><button class="_2rBmt UND4Z _3CtSz _1Yavx" data-hook="ProfileCard-editProfileCTA" type="button" tabindex="0">편집</button></div></div><div data-hook="ProfileCard-moreActionsWrapper" class="_1QY3s"><button data-hook="ProfileCard-moreActionsCTA" type="button" class="_1N5G0 rCNdV" aria-pressed="false" aria-haspopup="menu"><div class="_2GIz3"><div><div aria-label="more-button.more-actions" class="_17-Rt"><svg xmlns="http://www.w3.org/2000/svg" width="4" height="15.406" viewBox="0 0 4 15.406" style="fill-rule: evenodd;" class="_2ZqjF"><path d="M1000,381.719a1.928,1.928,0,1,1,2-1.927A1.964,1.964,0,0,1,1000,381.719Zm0-5.78a1.928,1.928,0,1,1,2-1.927A1.964,1.964,0,0,1,1000,375.939Zm0,7.706a1.928,1.928,0,1,1-2,1.927A1.968,1.968,0,0,1,1000,383.645Z" transform="translate(-998 -372.094)"></path></svg></div></div></div></button></div></div></div></div></div></div></div></div></div><nav aria-label="Site" id="comp-kpndp7iz" class="_3rKL6 _25-B7"><ul class="-SaFH"><li class="XOxx5"><div data-testid="itemContentWrapper-0" class="_3Cpo0"><span class="_16rQy"><a data-testid="linkElement-0" href="https://jemilykoo.wixsite.com/website/profile/userID/profile" target="_self" class="_3VyKd" tabindex="0">프로필</a></span></div></li><li class="XOxx5"><div data-testid="itemContentWrapper-1" class="_3Cpo0"><span class="_16rQy"><a data-testid="linkElement-1" href="https://jemilykoo.wixsite.com/website/profile/userID/blog-comments" target="_self" class="_3VyKd" tabindex="0">Blog Comments </a></span></div></li><li class="XOxx5"><div data-testid="itemContentWrapper-2" class="_3Cpo0"><span class="_16rQy"><a data-testid="linkElement-2" href="https://jemilykoo.wixsite.com/website/profile/userID/blog-likes" target="_self" class="_3VyKd" tabindex="0">Blog Likes<span class="_3JSHe">(1)</span></a></span></div></li><li class="XOxx5"><div data-testid="itemContentWrapper-3" class="_3Cpo0"><span class="_16rQy"><a data-testid="linkElement-3" href="https://jemilykoo.wixsite.com/website/profile/userID/forum-comments" target="_self" class="_3VyKd" tabindex="0">Forum Comments<span class="_3JSHe">(2)</span></a></span></div></li><li class="XOxx5"><div data-testid="itemContentWrapper-4" class="_3Cpo0"><span class="_16rQy"><a data-testid="linkElement-4" href="https://jemilykoo.wixsite.com/website/profile/userID/forum-posts" target="_self" class="_3VyKd" tabindex="0">Forum Posts<span class="_3JSHe">(1)</span></a></span></div></li><li class="XOxx5"><div data-testid="itemContentWrapper-5" class="_3Cpo0"><span class="_16rQy"><a data-testid="linkElement-5" href="https://jemilykoo.wixsite.com/website/account/my-account" target="_self" class="_3VyKd" tabindex="0">내 계정</a></span></div></li><li class="XOxx5"><div data-testid="itemContentWrapper-6" class="_3Cpo0 M1VN5"><span class="_16rQy"><a data-testid="linkElement-6" href="https://jemilykoo.wixsite.com/website/account/notifications" target="_self" class="_3VyKd" tabindex="0">알림</a></span></div></li><li class="XOxx5"><div data-testid="itemContentWrapper-7" class="_3Cpo0 _3MLhF"><span class="_16rQy"><a data-testid="linkElement-7" href="https://jemilykoo.wixsite.com/website/account/settings" target="_self" class="_3VyKd" tabindex="0">설정</a></span></div></li></ul></nav></div></div></div></div></div></div></div></div></div></div>

<script>
    window.firstPageId = '스탬프아이디'
    window.bi.sendBeat(12, 'Partially visible', {pageId: window.firstPageId})
    if (!window.__browser_deprecation__) {
		window.fedops.phaseStarted('partially_visible')
	}
    if (window.requestCloseWelcomeScreen) {
        window.requestCloseWelcomeScreen()
    }
</script>


<!-- react-dom -->





    <!--pageHtmlEmbeds.bodyEnd start-->
    <script type="wix/htmlEmbeds" id="pageHtmlEmbeds.bodyEnd start"></script>
    
    <script type="wix/htmlEmbeds" id="pageHtmlEmbeds.bodyEnd end"></script>
    <!--pageHtmlEmbeds.bodyEnd end-->

</body></html>