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
  
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css.css" >

  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/profileSetting.css" >
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

    
<script data-url="https://static.parastorage.com/services/wix-thunderbolt/dist/windowMessageRegister.inline.6ff9ddf9.bundle.min.js">(self.webpackJsonp__wix_thunderbolt_app=self.webpackJsonp__wix_thunderbolt_app||[]).push([[9439],{78092:function(){"use strict";!function(n){var e=new Set,t=[],a=function(n){var t=[];e.forEach((function(e){n.canHandleEvent(e)&&t.push(e)})),t.forEach((function(t){e.delete(t),n.handleEvent(t)}))};n.addEventListener("message",(function(n){var i={source:n.source,data:n.data,origin:n.origin},o=t.find((function(n){return n.canHandleEvent(i)}));o?(a(o),o.handleEvent(i)):e.add(i)})),n._addWindowMessageHandler=function(n){t.push(n),a(n)}}(window)}},function(n){"use strict";var e;e=78092,n(n.s=e)}]);
//# sourceMappingURL=https://static.parastorage.com/services/wix-thunderbolt/dist/windowMessageRegister.inline.6ff9ddf9.bundle.min.js.map</script>
<script src="${pageContext.request.contextPath}/stampGO_files/bootstrap-features.js" async=""></script>
<script src="${pageContext.request.contextPath}/stampGO_files/main.js" async=""></script>

  <!-- lodash script -->
  

  <!-- preloading post-scripts -->
  
    
    
      <link rel="preload" crossorigin="anonymous" as="fetch" href="https://siteassets.parastorage.com/pages/pages/thunderbolt?beckyExperiments=specs.thunderbolt.addressInputAtlasProvider%3Atrue%2Cspecs.thunderbolt.seoFriendlyDropDownMenu%3Atrue%2Cspecs.thunderbolt.FileUploaderPopper%3Atrue%2Ctb_UploadButtonFixValidationNotRequired%3Atrue%2Cspecs.thunderbolt.breakingBekyCache%3Atrue%2Cspecs.thunderbolt.ResponsiveInClassic%3Atrue%2Cspecs.thunderbolt.tb_media_layout_by_effect%3Atrue&amp;contentType=application%2Fjson&amp;dfCk=6&amp;dfVersion=1.1273.0&amp;experiments=bv_cartPageResponsiveLayoutFixer%2Cbv_migrateResponsiveLayoutToSingleLayoutData%2Cbv_migrateResponsiveToVariantsModels%2Cbv_removeMenuDataFromPageJson%2Cbv_remove_add_chat_viewer_fixer%2Cdm_fixMobileHoverBoxDesign&amp;externalBaseUrl=https%3A%2F%2Fjemilykoo.wixsite.com%2Fwebsite&amp;fileId=6ac58fc8.bundle.min&amp;freemiumBanner=true&amp;hasTPAWorkerOnSite=false&amp;isHttps=true&amp;isInSeo=false&amp;isUrlMigrated=true&amp;isWixCodeOnPage=false&amp;isWixCodeOnSite=false&amp;language=ko&amp;metaSiteId=0858e1c1-becd-479d-b78e-4f96e1892037&amp;migratingToOoiWidgetIds=14dd1af6-3e02-63db-0ef2-72fbc7cc3136&amp;module=thunderbolt-platform&amp;originalLanguage=en&amp;pageId=8bcb42_1a81c28fe37b87f578fa6949cf46bbed_414.json&amp;quickActionsMenuEnabled=false&amp;registryLibrariesTopology=%5B%7B%22artifactId%22%3A%22editor-elements%22%2C%22namespace%22%3A%22wixui%22%2C%22url%22%3A%22https%3A%2F%2Fstatic.parastorage.com%2Fservices%2Feditor-elements%2F1.5996.0%22%7D%2C%7B%22artifactId%22%3A%22editor-elements-design-systems%22%2C%22namespace%22%3A%22dsgnsys%22%2C%22url%22%3A%22https%3A%2F%2Fstatic.parastorage.com%2Fservices%2Feditor-elements%2F1.5996.0%22%7D%5D&amp;remoteWidgetStructureBuilderVersion=1.226.0&amp;siteId=e209736b-cfdf-43f1-92e3-cd9a14a1dbb9&amp;siteRevision=414&amp;tbElementsSiteAssets=siteAssets.83a6f573.bundle.min.js&amp;viewMode=desktop&amp;widgetsToPageJsonFilenames=%7B%22c7fddce1-ebf5-46b0-a309-7865384ba63f%22%3A%7B%22pageJsonFilename%22%3A%228a2243_50937a143e5db1ded82cd39650f05c0d_440.json%22%2C%22variations%22%3A%7B%7D%7D%2C%22169204d8-21be-4b45-b263-a997d31723dc%22%3A%7B%22pageJsonFilename%22%3A%228a2243_d5b26c91126b2788609a5fa914c2d8a0_406.json%22%2C%22variations%22%3A%7B%7D%7D%2C%2289c4023a-027e-4d2a-b6b7-0b9d345b508d%22%3A%7B%22pageJsonFilename%22%3A%228a2243_0290d6785da9bf70a35d96280cffbc2a_440.json%22%2C%22variations%22%3A%7B%7D%7D%2C%223dc66bc5-5354-4ce6-a436-bd8394c09b0e%22%3A%7B%22pageJsonFilename%22%3A%228a2243_b1d6e77a37fdcea91ab25d907d31a74e_440.json%22%2C%22variations%22%3A%7B%22edar7%22%3A%7B%22id%22%3A%22edar7%22%2C%22name%22%3A%22edar7%22%2C%22pageJsonFilename%22%3A%228a2243_63bc1b373c73b66e49c1d4cc5a099eda_440.json%22%7D%7D%7D%7D" id="platform_마스터페이지">
    
  
    
  
      <link rel="preload" crossorigin="anonymous" as="script" href="https://static.parastorage.com/services/editor-elements/dist/componentSdks.106fa96a.bundle.min.js" id="componentSdks">
    
  
    
    
      <link rel="preload" crossorigin="anonymous" as="fetch" href="https://siteassets.parastorage.com/pages/pages/thunderbolt?beckyExperiments=specs.thunderbolt.addressInputAtlasProvider%3Atrue%2Cspecs.thunderbolt.seoFriendlyDropDownMenu%3Atrue%2Cspecs.thunderbolt.FileUploaderPopper%3Atrue%2Ctb_UploadButtonFixValidationNotRequired%3Atrue%2Cspecs.thunderbolt.breakingBekyCache%3Atrue%2Cspecs.thunderbolt.ResponsiveInClassic%3Atrue%2Cspecs.thunderbolt.tb_media_layout_by_effect%3Atrue&amp;contentType=application%2Fjson&amp;deviceType=Desktop&amp;dfCk=6&amp;dfVersion=1.1273.0&amp;experiments=bv_cartPageResponsiveLayoutFixer%2Cbv_migrateResponsiveLayoutToSingleLayoutData%2Cbv_migrateResponsiveToVariantsModels%2Cbv_removeMenuDataFromPageJson%2Cbv_remove_add_chat_viewer_fixer%2Cdm_fixMobileHoverBoxDesign&amp;externalBaseUrl=https%3A%2F%2Fjemilykoo.wixsite.com%2Fwebsite&amp;fileId=6a36ebba.bundle.min&amp;freemiumBanner=true&amp;hasTPAWorkerOnSite=false&amp;isHttps=true&amp;isInSeo=false&amp;isMultilingualEnabled=false&amp;isUrlMigrated=true&amp;isWixCodeOnPage=false&amp;isWixCodeOnSite=false&amp;language=ko&amp;languageResolutionMethod=QueryParam&amp;metaSiteId=0858e1c1-becd-479d-b78e-4f96e1892037&amp;migratingToOoiWidgetIds=14dd1af6-3e02-63db-0ef2-72fbc7cc3136&amp;module=thunderbolt-features&amp;originalLanguage=en&amp;pageId=8bcb42_1a81c28fe37b87f578fa6949cf46bbed_414.json&amp;quickActionsMenuEnabled=false&amp;registryLibrariesTopology=%5B%7B%22artifactId%22%3A%22editor-elements%22%2C%22namespace%22%3A%22wixui%22%2C%22url%22%3A%22https%3A%2F%2Fstatic.parastorage.com%2Fservices%2Feditor-elements%2F1.5996.0%22%7D%2C%7B%22artifactId%22%3A%22editor-elements-design-systems%22%2C%22namespace%22%3A%22dsgnsys%22%2C%22url%22%3A%22https%3A%2F%2Fstatic.parastorage.com%2Fservices%2Feditor-elements%2F1.5996.0%22%7D%5D&amp;remoteWidgetStructureBuilderVersion=1.226.0&amp;siteId=e209736b-cfdf-43f1-92e3-cd9a14a1dbb9&amp;siteRevision=414&amp;staticHTMLComponentUrl=https%3A%2F%2Fjemilykoo-wixsite-com.filesusr.com%2F&amp;tbElementsSiteAssets=siteAssets.83a6f573.bundle.min.js&amp;useSandboxInHTMLComp=true&amp;viewMode=desktop&amp;widgetsToPageJsonFilenames=%7B%22c7fddce1-ebf5-46b0-a309-7865384ba63f%22%3A%7B%22pageJsonFilename%22%3A%228a2243_50937a143e5db1ded82cd39650f05c0d_440.json%22%2C%22variations%22%3A%7B%7D%7D%2C%22169204d8-21be-4b45-b263-a997d31723dc%22%3A%7B%22pageJsonFilename%22%3A%228a2243_d5b26c91126b2788609a5fa914c2d8a0_406.json%22%2C%22variations%22%3A%7B%7D%7D%2C%2289c4023a-027e-4d2a-b6b7-0b9d345b508d%22%3A%7B%22pageJsonFilename%22%3A%228a2243_0290d6785da9bf70a35d96280cffbc2a_440.json%22%2C%22variations%22%3A%7B%7D%7D%2C%223dc66bc5-5354-4ce6-a436-bd8394c09b0e%22%3A%7B%22pageJsonFilename%22%3A%228a2243_b1d6e77a37fdcea91ab25d907d31a74e_440.json%22%2C%22variations%22%3A%7B%22edar7%22%3A%7B%22id%22%3A%22edar7%22%2C%22name%22%3A%22edar7%22%2C%22pageJsonFilename%22%3A%228a2243_63bc1b373c73b66e49c1d4cc5a099eda_440.json%22%7D%7D%7D%7D" id="features_마스터페이지">
    
  
  
  
    <!-- tbElements css -->
    
  

  
    <script defer="defer" src="${pageContext.request.contextPath}/stampGO_files/siteTags.js"></script>
  

  <meta name="format-detection" content="telephone=no">
  <meta name="skype_toolbar" content="skype_toolbar_parser_compatible">
  
  
  

  
    <!-- react-dom -->
      <script crossorigin="" src="${pageContext.request.contextPath}/stampGO_files/react-dom.js" onload="externalsRegistry.reactDOM.onload()" defer="defer"></script>

<!-- render-head end -->











<title>알림</title>
  <link rel="canonical" href="https://jemilykoo.wixsite.com/website/account/notifications">
  <meta name="robots" content="noindex">
  <meta property="og:title" content="알림">
  <meta property="og:url" content="https://jemilykoo.wixsite.com/website/account/notifications">
  <meta property="og:site_name" content="찍GO">
  <meta property="og:type" content="website">
  <meta name="twitter:card" content="summary_large_image">
  <meta name="twitter:title" content="알림">
<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/bootstrap-components-common.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/bootstrap-components-classic.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/Container_RectangleArea.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/VerticalMenu_VerticalMenuSolidColorSkin.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/LoginSocialBar.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/bootstrap-components-responsive.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/MeshGroup.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/FreemiumBannerDesktop.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/SkipToContentButton.js"></script><script src="${pageContext.request.contextPath}/stampGO_files/requirejs.js"></script></head>
<body >

	<jsp:include page="/WEB-INF/views/templates/Top.jsp"/>
<script type="text/javascript">
    var bodyCacheable = false;
    
    var exclusionReason = {"shouldRender":true,"forced":false};
    var ssrInfo = {"renderBodyTime":2388,"renderTimeStamp":1624438096885}
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


</pages-css>
<div id="SITE_CONTAINER"><div id="main_MF"><div id="BACKGROUND_GROUP"><div><div id="pageBackground_v1qh5" data-media-height-override-type="" data-media-position-override="false" class="_2AO2a"><div id="bgLayers_pageBackground_v1qh5" class="확인용7"><div id="bgMedia_pageBackground_v1qh5" class="높이백"></div></div></div></div></div><div id="site-root"><div id="마스터페이지" class="메시레이아웃"><header tabindex="-1" id="SITE_HEADER_WRAPPER"></header>


<main id="PAGES_CONTAINER" tabindex="-1"><div id="SITE_PAGES"><div class="스트레치"><div id="v1qh5" class="확인용2"><div class="확인용3"></div><div class="확인용4"><div id="Containerv1qh5" class="확인용5"><div data-mesh-id="Containerv1qh5inlineContent" data-testid="inline-content" ><div data-mesh-id="Containerv1qh5inlineContent-gridContainer" data-testid="mesh-container-content"><section id="comp-kpndplx6" class="확인용6"><div data-testid="columns" class="확인용8"><div id="comp-kpndplx7" class="릴레이티브비지블"><div data-mesh-id="comp-kpndplx7inlineContent" data-testid="inline-content" ><div data-mesh-id="comp-kpndplx7inlineContent-gridContainer" data-testid="mesh-container-content"></div></div></div></div></section><div id="TPASection_kpndpd4o" class="_2JOHk" style="overflow: hidden; height: 600px;">
<!-- 여기를 자르면 됨 -->
</div></div></div></div></div></div></div></div></main><div id="soapAfterPagesContainer" class="page-with-sosp"><div data-mesh-id="soapAfterPagesContainerinlineContent" data-testid="inline-content" ><div data-mesh-id="soapAfterPagesContainerinlineContent-gridContainer" data-testid="mesh-container-content"><div id="SOSP_CONTAINER_CUSTOM_ID" class="_2_2nr"><div class="_3oi4n" data-testid="container-bg"></div><div data-mesh-id="SOSP_CONTAINER_CUSTOM_IDinlineContent" data-testid="inline-content" ><div data-mesh-id="SOSP_CONTAINER_CUSTOM_IDinlineContent-gridContainer" data-testid="mesh-container-content"><div id="comp-kpndp2z9" style="height:auto"><div class="comp-kpndp2z9" data-reactroot=""><div data-hook="ProfileCard-wrapper" dir="ltr"><div data-hook="ProfileCard-verticalWidget"><div class="_24V6U"><div class="_31rtG"></div><div class="_1rug6 osdAp"><div class="_1jsW2"><div data-hook="ProfileCard-profilePhoto" class="_21JiY _1HjbT _3ZWaZ"><div class="_2oQc- _1w3no"><div class="_2oQc- _3wTA0"><svg width="71%" height="78%" viewBox="0 0 61 67" xmlns="http://www.w3.org/2000/svg" class="_1RgGn"><g><path d="M0,65.4388545 C0,47.7801858 10.7105078,38 30.332158,38 C49.9538082,38 60.6643159,47.7801858 60.75,65.4388545 L60.75,67.25 L0,67.25 L0,65.4388545 Z"></path><path d="M46.5,16.3421053 C46.5,25.9342105 39.4125,33.75 30.75,33.75 C22.0875,33.75 15,25.9342105 15,16.3421053 C15,7.01644737 21.7375,0 30.75,0 C39.7625,0 46.5,7.01644737 46.5,16.3421053 Z"></path></g></svg><div class="_2oQc- _3ZWaZ"></div><div class="_2oQc- _2Uvzj _3ZWaZ"></div><div class="_2ebCT"></div></div></div></div><div class="_pvtp"><div class="N_MN9"><div data-hook="ProfileCard-memberName" class="_3AkkR"><div class="_2_TEk"><span class="_2xV_H kl2Hr">userID</span><div class="_3rxad"></div></div></div><div data-hook="ProfileCard-followersFollowing" class="_2XRvR"><div data-hook="ProfileCard-followers" class="_18463"><button class="_2rBmt _3y1t9" type="button" tabindex="0"><span>0</span><div class="_3TgFJ">팔로워</div></button></div><div class="_25aDC"></div><div data-hook="ProfileCard-following"><button class="_2rBmt _2QmZl" type="button" tabindex="0"><span>0</span><div class="_3TgFJ">팔로잉</div></button></div></div></div><div class="_2Lfft"><div class="_1-zoY"><button class="_2rBmt UND4Z _3CtSz _1Yavx" data-hook="ProfileCard-editProfileCTA" type="button" tabindex="0">편집</button></div></div><div data-hook="ProfileCard-moreActionsWrapper" class="_1QY3s"><button data-hook="ProfileCard-moreActionsCTA" type="button" class="_1N5G0 rCNdV" aria-pressed="false" aria-haspopup="menu"><div class="_2GIz3"><div><div aria-label="more-button.more-actions" class="_17-Rt"><svg xmlns="http://www.w3.org/2000/svg" width="4" height="15.406" viewBox="0 0 4 15.406" style="fill-rule:evenodd" class="_2ZqjF"><path d="M1000,381.719a1.928,1.928,0,1,1,2-1.927A1.964,1.964,0,0,1,1000,381.719Zm0-5.78a1.928,1.928,0,1,1,2-1.927A1.964,1.964,0,0,1,1000,375.939Zm0,7.706a1.928,1.928,0,1,1-2,1.927A1.968,1.968,0,0,1,1000,383.645Z" transform="translate(-998 -372.094)"></path></svg></div></div></div></button></div></div></div></div></div></div></div></div></div><nav aria-label="Site" id="comp-kpndp7iz" class="_3rKL6 _25-B7"><ul class="-SaFH"><li class="XOxx5"><div data-testid="itemContentWrapper-0" class="_3Cpo0"><span class="_16rQy"><a data-testid="linkElement-0" href="https://jemilykoo.wixsite.com/website/profile/userID/profile" target="_self" class="_3VyKd" tabindex="0">프로필</a></span></div></li><li class="XOxx5"><div data-testid="itemContentWrapper-1" class="_3Cpo0"><span class="_16rQy"><a data-testid="linkElement-1" href="https://jemilykoo.wixsite.com/website/profile/userID/blog-comments" target="_self" class="_3VyKd" tabindex="0">Blog Comments </a></span></div></li><li class="XOxx5"><div data-testid="itemContentWrapper-2" class="_3Cpo0"><span class="_16rQy"><a data-testid="linkElement-2" href="https://jemilykoo.wixsite.com/website/profile/userID/blog-likes" target="_self" class="_3VyKd" tabindex="0">Blog Likes<span class="_3JSHe">(1)</span></a></span></div></li><li class="XOxx5"><div data-testid="itemContentWrapper-3" class="_3Cpo0"><span class="_16rQy"><a data-testid="linkElement-3" href="https://jemilykoo.wixsite.com/website/profile/userID/forum-comments" target="_self" class="_3VyKd" tabindex="0">Forum Comments<span class="_3JSHe">(2)</span></a></span></div></li><li class="XOxx5"><div data-testid="itemContentWrapper-4" class="_3Cpo0"><span class="_16rQy"><a data-testid="linkElement-4" href="https://jemilykoo.wixsite.com/website/profile/userID/forum-posts" target="_self" class="_3VyKd" tabindex="0">Forum Posts<span class="_3JSHe">(1)</span></a></span></div></li><li class="XOxx5"><div data-testid="itemContentWrapper-5" class="_3Cpo0"><span class="_16rQy"><a data-testid="linkElement-5" href="https://jemilykoo.wixsite.com/website/account/my-account" target="_self" class="_3VyKd" tabindex="0">내 계정</a></span></div></li><li class="XOxx5"><div data-testid="itemContentWrapper-6" class="_3Cpo0 _3MLhF"><span class="_16rQy"><a data-testid="linkElement-6" href="https://jemilykoo.wixsite.com/website/account/notifications" target="_self" class="_3VyKd" tabindex="0">알림</a></span></div></li><li class="XOxx5"><div data-testid="itemContentWrapper-7" class="_3Cpo0"><span class="_16rQy"><a data-testid="linkElement-7" href="https://jemilykoo.wixsite.com/website/account/settings" target="_self" class="_3VyKd" tabindex="0">설정</a></span></div></li></ul></nav></div></div></div></div></div></div></div></div></div></div>

<script>
    window.firstPageId = 'v1qh5'
    window.bi.sendBeat(12, 'Partially visible', {pageId: window.firstPageId})
    if (!window.__browser_deprecation__) {
		window.fedops.phaseStarted('partially_visible')
	}
    if (window.requestCloseWelcomeScreen) {
        window.requestCloseWelcomeScreen()
    }
</script>


</body></html>