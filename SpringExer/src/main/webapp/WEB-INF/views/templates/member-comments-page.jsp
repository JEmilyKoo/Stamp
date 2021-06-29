<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head dir="ltr">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
  
  
<script type="text/javascript" async="" src="member-comments-page_data/pinit_main.js"></script><script>
  try {
    if (window.parent) {
      var msgSent = false;
      var vars = window.location.search.replace('?', '').split('&');
      for (var i = 0; i < vars.length; i++) {
        var arr = vars[i].split('=');
        if (arr[0] == 'compId') {
          window.parent.postMessage('{"intent":"TPA2","callId":1,"type":"appIsAlive","compId":"' + arr[1] + '","deviceType":"desktop","data":{"version":"1.66.0"}}', '*')
          msgSent = true;
        }
      }
      if (!msgSent) {
        console.info('couldn\'t find compId in', window.location);
      }
    }
  } catch (e) {
    console.error('Error posting keep alive msg', e);
  }
</script>


<script>
  window.wixTpaWindowResize = {
    elSelector: '#content-wrapper',
    minHeight: 310
  };
</script>
<script>!function(){"use strict";!function(e){var n=e.wixTpaWindowResize;if(n){if(!n.elSelector)return console.error("Aborting window resize handler: you must specify a css selector");var i,t=decodeURIComponent(e.location.search).split("&").reduce(function(e,n){var i=n.split("=");return e[i[0]]=i[1],e},{}),o=320,r=n.elSelector,a=n.interval||160,s=n.minHeight||null,c=n.disableOnMobile||!1,l=n.enableViewportFix||!1,d="mobile"===t.deviceType,u=["editor","preview"].indexOf(t.viewMode)>-1,h=n.onInit||function(){},f=!1!==n.listenOnInit,v=!0===n.log;d&&c||(f&&g(),h({startListening:g,stopListening:m}))}function p(e){v&&console.log("window-resize-handler ",e)}function w(n){var i=n.scrollHeight*(d&&l?o/(u?o:function(){var n=!1;if(void 0!==e.orientation)n=90===e.orientation||-90===e.orientation;else{var i=e.matchMedia("(orientation: landscape)");n=!(!i||!0!==i.matches)}return n}()?Math.max(e.screen.width,e.screen.height):e.screen.width):1);return s?Math.max(i,s):i}function g(){var n=0;i=e.setInterval(function(){var i=e.document.querySelector(r);if(i){var t=w(i);n===t&&e.innerHeight===t||(n=t,function(n){e.Wix?(p("window.Wix.setHeight"),e.Wix.setHeight(n)):(p("window.parent.postMessage"),e.parent.postMessage('{"intent":"TPA2","callId":1,"type":"heightChanged","compId":"'+e.name+'","deviceType":"desktop","data":{"version":"1.66.0", "args":{"height":"'+n+'", "overflow":"false"}}}',"*"))}(t))}},a)}function m(){e.clearInterval(i)}}(window)}();
</script>

  <script type="text/javascript">
    window.__FEDOPS_APP_NAME__ = 'communities-forum-member-comments-page';
    (function () {
      var appName = window.__FEDOPS_APP_NAME__;
      window.fedops = window.fedops || {};
      window.fedops.apps = window.fedops.apps || {};
      window.fedops.apps[appName] = { startLoadTime: window.performance && window.performance.now && window.performance.now() };
      try { window.fedops.sessionId = window.localStorage.getItem('fedops.logger.sessionId'); } catch(e) {};
      window.fedops.sessionId = window.fedops.sessionId || 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) { var r = Math.random()*16|0, v = c == 'x' ? r : (r&0x3|0x8); return v.toString(16); });
      (new Image()).src = '//frog.wix.com/fed?appName=' + appName + '&src=72&evid=14&session_id=' + window.fedops.sessionId + '&_=' + Math.random();
    })();
  </script>


  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/modalcss.css" >


  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/memberPagesVendor.css" >
  
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/memberPagesCommons.css" >
  
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/member-comments-page.css" >
  
  

  




  

  <title data-react-helmet="true"></title>
  
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link rel="shortcut icon" href="https://wix.com/favicon.ico">

  
    <link rel="manifest" href="https://forums.wix.com/manifest.json">
    
    

<style wix-style="">
  .forum-title-font { font:500 72px/1.25em 'Noto Sanse KR',sans-serif;  line-height: normal; }
  .forum-header-font { font:500 20px/1.67em 'Noto Sans KR', sans-serif;  line-height: normal; }
  .forum-cards-background { background: #FFFFFF; }
  .forum-cards-border-color { border-color: #bfbfbf; }
  .forum-base-background { background: #FFFFFF; }
  .forum-primary-color { color: #193669; }
	.forum-primary-background-color { background-color: #193669; }
	.forum-primary-border-color { border-color: #193669; }
	.forum-primary-border-bottom-color { border-bottom-color: #193669; }
	.forum-primary-border-left-color { border-left-color: #193669; }
	.forum-primary-fill { fill: #193669; }
  .forum-secondary-fill { fill: #757575; }
  .forum-header-text-color { color: #FFFFFF; }
	.forum-header-text-fill { fill: #FFFFFF; }
  .forum-header-border-color { border-color: #000000; }
  .forum-border-color { border-color: #d1d1d1; }
  .forum-links-hashtags-color { color: rgb(25,54,105); }
  .app-desktop .forum-link-hover-color:hover { color: rgb(25,54,105); }


  .forum-disabled-border-color {
    border-color: #f0f0f0;
  }

  .forum-disabled-background-color {
    border-color: #f0f0f0;
  }

  /* Member area styles */
  .page-title-font { font:500 50px/1.34em 'Noto Sanse KR',sans-serif; font-size: 26px; line-height: normal; }
	.page-title-font { style.page-titleFont line-height: normal; }
  .page-title-color { color: #000000; }
	.page-title-color { color: #000000; }
  .page-background-color { background-color: #FFFFFF; }
	.page-background-color { background-color: #FFFFFF; }
  .page-border-color { border-color: #bfbfbf; }
	.page-border-color { border-color: #BFBFBF; }

  /* Post styles */
  .forum-text-color { color: rgb(0,0,0); }
	.forum-text-border-color { border-color: rgb(0,0,0); }
	.forum-text-background-color { background-color: rgb(0,0,0); }
  .forum-separator-background-color { background-color: rgb(0,0,0); }
  .forum-icon-fill { fill: rgb(0,0,0); }
	.forum-icon-stroke { stroke: rgb(0,0,0); }
  .forum-background-color { background-color: rgb(255,255,255); }
  .forum-card-background-color { background-color: rgb(255,255,255); }
	.forum-card-fill { fill: rgb(255,255,255); }
	.forum-card-stroke { stroke: rgb(255,255,255); }
	.forum-card-color { color: rgb(255,255,255); }
  .forum-inverted-separator-background-color { background-color: rgb(255,255,255); }
  .profile-photo-border-color { border-color: rgb(255,255,255); }
  .forum-card-border-color { border-color: rgba(0,0,0,0.25); }
  .forum-title-classic-font { font:500 18px/1.75em 'Noto Sans KR', sans-serif; font-size: 16px; line-height: normal; }
	.forum-title-classic-font { font:500 16px/20px proxima-n-w01-reg,sans-serif; line-height: normal; }
  .forum-title-small-font { font:500 18px/1.75em 'Noto Sans KR', sans-serif; font-size: 16px; line-height: normal; }
	.forum-title-small-font { font:500 16px/20px proxima-n-w01-reg,sans-serif; line-height: normal; }
  .forum-title-medium-font { font:500 18px/1.75em 'Noto Sans KR', sans-serif; font-size: 16px; line-height: normal; }
	.forum-title-medium-font { font:500 16px/20px proxima-n-w01-reg,sans-serif; line-height: normal; }
  .forum-title-large-font { font:500 18px/1.75em 'Noto Sans KR', sans-serif; font-size: 20px; line-height: normal; }
	.forum-title-large-font { font:500 20px/25px proxima-n-w01-reg,sans-serif; line-height: normal; }
  .forum-content-classic-font { font:500 18px/1.75em 'Noto Sans KR', sans-serif; font-size: 14px; line-height: normal; }
	.forum-content-classic-font { font:500 14px/17px proxima-n-w01-reg,sans-serif; line-height: normal; }
  .forum-content-small-font { font:500 18px/1.75em 'Noto Sans KR', sans-serif; font-size: 14px; line-height: normal; }
	.forum-content-small-font { font:500 14px/17px proxima-n-w01-reg,sans-serif; line-height: normal; }
  .forum-content-medium-font { font:500 18px/1.75em 'Noto Sans KR', sans-serif; font-size: 14px; line-height: normal; }
	.forum-content-medium-font { font:500 14px/17px proxima-n-w01-reg,sans-serif; line-height: normal; }
  .forum-content-large-font { font:500 18px/1.75em 'Noto Sans KR', sans-serif; font-size: 16px; line-height: normal; }
	.forum-content-large-font { font:500 16px/20px proxima-n-w01-reg,sans-serif; line-height: normal; }

  /* Button styles */
  .button-primary-text-color { color: rgb(255,255,255); }
	.button-primary-text-background-color { background-color: rgb(255,255,255); }
  .button-primary-icon-fill { fill: rgb(255,255,255); }
  .button-icon-fill { fill: #193669; }
  .button-color { color: rgb(25,54,105); }
	.button-background-color { background-color: rgb(25,54,105); }
	.button-border-color { border-color: rgb(25,54,105); }
	.button-fill { fill: rgb(25,54,105); }
	.button-stroke { stroke: rgb(25,54,105); }
  .button-hover-color:hover { color: rgb(25,54,105); }
	.button-hover-fill:hover { fill: rgb(25,54,105); }
  .button-hover-after-border-color:hover::after { border-color: rgb(25,54,105); }
  .button-after-border-color::after { border-color: rgb(25,54,105); }
  .icon-secondary-fill { fill: rgb(25,25,25); }
	.icon-secondary-background-color { background-color: rgb(25,25,25); }
	.icon-secondary-color { color: rgb(25,25,25); }

  /* Fixed styles */
  .default-desktop-header-text-color { color: #000000; }
  .default-forum-card-background-color { background-color: #FFFFFF; }
  .default-button-background-color { background-color: #193669; }
  .forum-quote-border-color { border-color: #757575; }
  .forum-editor-code-value-color { color: #b9b9b9; }
  .forum-profile-cover-background-color { background-color: #bfbfbf; }
</style>

    
  
<script src="pm-rpc.js" id="dynamic_script_PM_RPC"></script><link rel="stylesheet" type="text/css" href="member-comments-page_data/vendorsmember-card-async.css"><script charset="utf-8" src="member-comments-page_data/vendorsmember-card-async.js"></script><script charset="utf-8" src="member-comments-page_data/member-card-async.js"></script><style wix-style="">.Title{ font:500 22px/1.41em 'Noto Sans KR', sans-serif; } .Menu{ font:500 14px/1.79em 'Noto Sans KR', sans-serif; } .Page-title{ font:500 28px/1.375em 'Noto Sanse KR',sans-serif; } .Heading-XL{ font:500 88px/1.2em 'Noto Sanse KR',sans-serif; } .Heading-L{ font:500 72px/1.25em 'Noto Sanse KR',sans-serif; } .Heading-M{ font:500 50px/1.34em 'Noto Sanse KR',sans-serif; } .Heading-S{ font:500 40px/1.35em 'Noto Sanse KR',sans-serif; } .Body-L{ font:500 20px/1.67em 'Noto Sans KR', sans-serif; } .Body-M{ font:500 18px/1.75em 'Noto Sans KR', sans-serif; } .Body-S{ font:500 15px/1.875em 'Noto Sans KR', sans-serif; } .Body-XS{ font:500 14px/1.79em 'Noto Sans KR', sans-serif; } }</style><link type="text/css" rel="stylesheet" href="modal_data/css.css" id="wix-google-fonts"><link type="text/css" rel="stylesheet" href="modal_data/languages-woff2.css"><style>:focus {
    outline: none;
}

.js-focus-visible .focus-visible:focus,
.js-focus-visible .focus-visible:focus ~ .wixSdkShowFocusOnSibling
{
    box-shadow: inset 0 0 0 1px rgba(255, 255, 255, 0.9), 0 0 1px 2px #3899EC;
}
</style><script src="modal_data/focus-visible.js" id="dynamic_script_FOCUS_VISIBLE"></script><style type="text/css"> span.PIN_1624437643899_embed_grid { 
  width: 100%;
  max-width: 257px;
  min-width: 140px;
  display: inline-block;
  border: 1px solid rgba(0,0,0,.1);
  border-radius: 16px;
  overflow: hidden;
  font: 12px "Helvetica Neue", Helvetica, arial, sans-serif;
  color: rgb(54, 54, 54);
  box-sizing: border-box;
  background: #fff;
  cursor: pointer;
  -moz-font-smoothing: antialiased;
}
 span.PIN_1624437643899_embed_grid * { 
  display: block;
  position: relative;
  font: inherit;
  cursor: inherit;
  color: inherit;
  box-sizing: inherit;
  margin: 0;
  padding: 0;
  text-align: left;
}
 span.PIN_1624437643899_embed_grid .PIN_1624437643899_hd { 
  height: 55px;
}
 span.PIN_1624437643899_embed_grid .PIN_1624437643899_hd .PIN_1624437643899_img { 
  position: absolute;
  top: 10px;
  left: 10px;
  height: 36px;
  width: 36px;
  border-radius: 18px;
  background: transparent url () 0 0 no-repeat;
  background-size: cover;
}
 span.PIN_1624437643899_embed_grid .PIN_1624437643899_hd .PIN_1624437643899_pinner { 
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  width: 75%;
  position: absolute;
  top: 20px;
  left: 56px;
  font-size: 14px;
  font-weight: bold;
}
 span.PIN_1624437643899_embed_grid .PIN_1624437643899_bd { 
  padding: 0 10px;
  -moz-scrollbars: none;
  -ms-overflow-style: none;
  overflow-x: hidden;
  overflow-y: auto;
}
 span.PIN_1624437643899_embed_grid .PIN_1624437643899_bd .PIN_1624437643899_ct { 
  width: 100%;
  height: auto;
}
 span.PIN_1624437643899_embed_grid .PIN_1624437643899_bd .PIN_1624437643899_ct .PIN_1624437643899_col { 
  display: inline-block;
  width: 100%;
  padding: 1px;
  vertical-align: top;
  min-width: 60px;
}
 span.PIN_1624437643899_embed_grid .PIN_1624437643899_bd .PIN_1624437643899_ct .PIN_1624437643899_col .PIN_1624437643899_img { 
  margin: 0;
  display: inline-block;
  width: 100%;
  background: transparent url() 0 0 no-repeat;
  background-size: cover;
  border-radius: 8px;
}
 span.PIN_1624437643899_embed_grid .PIN_1624437643899_ft { 
  padding: 10px;
}
 span.PIN_1624437643899_embed_grid .PIN_1624437643899_ft .PIN_1624437643899_button { 
  border-radius: 16px;
  text-align: center;
  background-color: #efefef;
  border: 1px solid #efefef;
  position: relative;
  display: block;
  overflow: hidden;
  height: 32px;
  width: 100%;
  min-width: 70px;
  padding: 0 3px;
}
 span.PIN_1624437643899_embed_grid .PIN_1624437643899_ft .PIN_1624437643899_button .PIN_1624437643899_label { 
  position: absolute;
  left: 0;
  width: 100%;
  text-align: center;
}
 span.PIN_1624437643899_embed_grid .PIN_1624437643899_ft .PIN_1624437643899_button .PIN_1624437643899_label.PIN_1624437643899_top { 
  top: 0;
}
 span.PIN_1624437643899_embed_grid .PIN_1624437643899_ft .PIN_1624437643899_button .PIN_1624437643899_label.PIN_1624437643899_bottom { 
  bottom: 0;
}
 span.PIN_1624437643899_embed_grid .PIN_1624437643899_ft .PIN_1624437643899_button .PIN_1624437643899_label .PIN_1624437643899_string { 
  white-space: pre;
  color: #746d6a;
  font-size: 13px;
  font-weight: bold;
  vertical-align: top;
  display: inline-block;
  height: 32px;
  line-height: 32px;
}
 span.PIN_1624437643899_embed_grid .PIN_1624437643899_ft .PIN_1624437643899_button .PIN_1624437643899_label .PIN_1624437643899_logo { 
  display: inline-block;
  vertical-align: bottom;
  height: 32px;
  width: 80px;
  background: transparent url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGhlaWdodD0iMTJweCIgd2lkdGg9IjUwcHgiIHZpZXdCb3g9IjAgMCA1MCAxMiI+PGc+PHBhdGggZD0iTTE5LjY5LDkuMjggTDE5LjY5LDQuMjggTDIxLjI3LDQuMjggTDIxLjI3LDkuMjggTDE5LjY5LDkuMjggWiBNNS45NywwLjAwIEM5LjI3LDAuMDAgMTEuOTUsMi42OSAxMS45NSw2LjAwIEMxMS45NSw5LjMxIDkuMjcsMTIuMDAgNS45NywxMi4wMCBDNS4zOCwxMi4wMCA0LjgwLDExLjkxIDQuMjYsMTEuNzUgQzQuMjYsMTEuNzUgNC4yNiwxMS43NSA0LjI2LDExLjc1IEM0LjI1LDExLjc1IDQuMjQsMTEuNzQgNC4yMywxMS43NCBMNC4yMSwxMS43MyBDNC4yMSwxMS43MyA0LjIxLDExLjczIDQuMjEsMTEuNzMgQzQuNDUsMTEuMzMgNC44MSwxMC42OCA0Ljk1LDEwLjE2IEM1LjAyLDkuODggNS4zMiw4LjczIDUuMzIsOC43MyBDNS41Miw5LjExIDYuMDgsOS40MiA2LjY5LDkuNDIgQzguNDksOS40MiA5Ljc5LDcuNzYgOS43OSw1LjY5IEM5Ljc5LDMuNzEgOC4xOCwyLjIzIDYuMTEsMi4yMyBDMy41MywyLjIzIDIuMTYsMy45NiAyLjE2LDUuODYgQzIuMTYsNi43NCAyLjYzLDcuODMgMy4zNyw4LjE4IEMzLjQ5LDguMjMgMy41NSw4LjIxIDMuNTcsOC4xMCBDMy41OSw4LjAyIDMuNjksNy42MSAzLjc0LDcuNDIgQzMuNzUsNy4zNiAzLjc1LDcuMzEgMy43MCw3LjI1IEMzLjQ1LDYuOTUgMy4yNSw2LjM5IDMuMjUsNS44OCBDMy4yNSw0LjU1IDQuMjUsMy4yNyA1Ljk1LDMuMjcgQzcuNDIsMy4yNyA4LjQ1LDQuMjggOC40NSw1LjcxIEM4LjQ1LDcuMzQgNy42Myw4LjQ2IDYuNTcsOC40NiBDNS45OCw4LjQ2IDUuNTQsNy45OCA1LjY4LDcuMzggQzUuODUsNi42NyA2LjE4LDUuOTAgNi4xOCw1LjM4IEM2LjE4LDQuOTIgNS45Myw0LjU0IDUuNDIsNC41NCBDNC44Miw0LjU0IDQuMzQsNS4xNiA0LjM0LDUuOTkgQzQuMzQsNi41MiA0LjUyLDYuODggNC41Miw2Ljg4IEM0LjUyLDYuODggMy45Myw5LjQwIDMuODIsOS44NyBDMy43MCwxMC4zOCAzLjc1LDExLjExIDMuODAsMTEuNTkgTDMuODAsMTEuNTkgQzMuNzksMTEuNTkgMy43OCwxMS41OCAzLjc4LDExLjU4IEMzLjc3LDExLjU4IDMuNzYsMTEuNTggMy43NiwxMS41NyBDMy43NiwxMS41NyAzLjc2LDExLjU3IDMuNzYsMTEuNTcgQzEuNTYsMTAuNjkgMC4wMCw4LjUzIDAuMDAsNi4wMCBDMC4wMCwyLjY5IDIuNjcsMC4wMCA1Ljk3LDAuMDAgWiBNMTYuODcsMi4zMSBDMTcuNzEsMi4zMSAxOC4zNCwyLjU0IDE4Ljc2LDIuOTUgQzE5LjIxLDMuMzcgMTkuNDYsMy45NiAxOS40Niw0LjY2IEMxOS40Niw2LjAwIDE4LjU0LDYuOTUgMTcuMTEsNi45NSBMMTUuNzIsNi45NSBMMTUuNzIsOS4yOCBMMTQuMTIsOS4yOCBMMTQuMTIsMi4zMSBMMTYuODcsMi4zMSBaIE0xNi45NCw1LjU4IEMxNy41Niw1LjU4IDE3LjkxLDUuMjEgMTcuOTEsNC42NSBDMTcuOTEsNC4xMCAxNy41NSwzLjc2IDE2Ljk0LDMuNzYgTDE1LjcyLDMuNzYgTDE1LjcyLDUuNTggTDE2Ljk0LDUuNTggWiBNNTAuMDAsNS4yOCBMNDkuMTksNS4yOCBMNDkuMTksNy42MiBDNDkuMTksOC4wMSA0OS40MCw4LjExIDQ5Ljc0LDguMTEgQzQ5LjgzLDguMTEgNDkuOTMsOC4xMCA1MC4wMCw4LjEwIEw1MC4wMCw5LjI4IEM0OS44NCw5LjMxIDQ5LjU4LDkuMzMgNDkuMjIsOS4zMyBDNDguMzAsOS4zMyA0Ny42NCw5LjAzIDQ3LjY0LDcuOTYgTDQ3LjY0LDUuMjggTDQ3LjE2LDUuMjggTDQ3LjE2LDQuMjggTDQ3LjY0LDQuMjggTDQ3LjY0LDIuNzAgTDQ5LjE5LDIuNzAgTDQ5LjE5LDQuMjggTDUwLjAwLDQuMjggTDUwLjAwLDUuMjggWiBNNDUuMzEsNi4xMyBDNDYuMTgsNi4yNyA0Ny4yMSw2LjUwIDQ3LjIxLDcuNzcgQzQ3LjIxLDguODcgNDYuMjUsOS40MyA0NC45NSw5LjQzIEM0My41NSw5LjQzIDQyLjY1LDguODEgNDIuNTQsNy43OCBMNDQuMDUsNy43OCBDNDQuMTUsOC4yMCA0NC40Niw4LjQwIDQ0Ljk0LDguNDAgQzQ1LjQyLDguNDAgNDUuNzIsOC4yMiA0NS43Miw3LjkwIEM0NS43Miw3LjQ1IDQ1LjEyLDcuNDAgNDQuNDYsNy4yOSBDNDMuNTksNy4xNCA0Mi42Nyw2LjkxIDQyLjY3LDUuNzQgQzQyLjY3LDQuNjggNDMuNjQsNC4xNCA0NC44Miw0LjE0IEM0Ni4yMiw0LjE0IDQ2Ljk4LDQuNzUgNDcuMDYsNS43NCBMNDUuNjAsNS43NCBDNDUuNTQsNS4yOSA0NS4yNCw1LjE1IDQ0LjgwLDUuMTUgQzQ0LjQyLDUuMTUgNDQuMTIsNS4zMCA0NC4xMiw1LjYxIEM0NC4xMiw1Ljk2IDQ0LjY4LDYuMDEgNDUuMzEsNi4xMyBaIE0yMC40OCwyLjAwIEMyMS4wMCwyLjAwIDIxLjQzLDIuNDIgMjEuNDMsMi45NSBDMjEuNDMsMy40OCAyMS4wMCwzLjkwIDIwLjQ4LDMuOTAgQzE5Ljk1LDMuOTAgMTkuNTMsMy40OCAxOS41MywyLjk1IEMxOS41MywyLjQyIDE5Ljk1LDIuMDAgMjAuNDgsMi4wMCBaIE0yOC40OCw3LjYyIEMyOC40OCw4LjAxIDI4LjcwLDguMTEgMjkuMDQsOC4xMSBDMjkuMTAsOC4xMSAyOS4xOCw4LjEwIDI5LjI0LDguMTAgTDI5LjI0LDkuMjkgQzI5LjA4LDkuMzEgMjguODMsOS4zMyAyOC41Miw5LjMzIEMyNy42MCw5LjMzIDI2Ljk0LDkuMDMgMjYuOTQsNy45NiBMMjYuOTQsNS4yOCBMMjYuNDIsNS4yOCBMMjYuNDIsNC4yOCBMMjYuOTQsNC4yOCBMMjYuOTQsMi43MCBMMjguNDgsMi43MCBMMjguNDgsNC4yOCBMMjkuMjQsNC4yOCBMMjkuMjQsNS4yOCBMMjguNDgsNS4yOCBMMjguNDgsNy42MiBaIE0yNC42OSw0LjE0IEMyNS43Nyw0LjE0IDI2LjQxLDQuOTIgMjYuNDEsNi4wMyBMMjYuNDEsOS4yOCBMMjQuODMsOS4yOCBMMjQuODMsNi4zNSBDMjQuODMsNS44MiAyNC41Nyw1LjQ2IDI0LjA1LDUuNDYgQzIzLjUzLDUuNDYgMjMuMTgsNS45MCAyMy4xOCw2LjUyIEwyMy4xOCw5LjI4IEwyMS42MCw5LjI4IEwyMS42MCw0LjI4IEwyMy4xMiw0LjI4IEwyMy4xMiw0Ljk3IEwyMy4xNSw0Ljk3IEMyMy41Miw0LjQzIDI0LjAwLDQuMTQgMjQuNjksNC4xNCBaIE0zMy40Miw0Ljc2IEMzMi45OSw0LjM3IDMyLjQzLDQuMTQgMzEuNzIsNC4xNCBDMzAuMjAsNC4xNCAyOS4xNiw1LjI4IDI5LjE2LDYuNzcgQzI5LjE2LDguMjggMzAuMTcsOS40MiAzMS44MSw5LjQyIEMzMi40NCw5LjQyIDMyLjk1LDkuMjYgMzMuMzcsOC45NiBDMzMuODAsOC42NiAzNC4xMCw4LjIzIDM0LjIwLDcuNzggTDMyLjY2LDcuNzggQzMyLjUyLDguMTAgMzIuMjUsOC4yOCAzMS44Myw4LjI4IEMzMS4xOCw4LjI4IDMwLjgxLDcuODYgMzAuNzIsNy4xOSBMMzQuMjksNy4xOSBDMzQuMzAsNi4xOCAzNC4wMSw1LjMxIDMzLjQyLDQuNzYgTDMzLjQyLDQuNzYgWiBNNDEuNjYsNC43NiBDNDIuMjYsNS4zMSA0Mi41NSw2LjE4IDQyLjU0LDcuMTkgTDM4Ljk3LDcuMTkgQzM5LjA2LDcuODYgMzkuNDMsOC4yOCA0MC4wOCw4LjI4IEM0MC41MCw4LjI4IDQwLjc3LDguMTAgNDAuOTEsNy43OCBMNDIuNDUsNy43OCBDNDIuMzQsOC4yMyA0Mi4wNSw4LjY2IDQxLjYyLDguOTYgQzQxLjIwLDkuMjYgNDAuNjksOS40MiA0MC4wNiw5LjQyIEMzOC40Miw5LjQyIDM3LjQxLDguMjggMzcuNDEsNi43NyBDMzcuNDEsNS4yOCAzOC40NSw0LjE0IDM5Ljk3LDQuMTQgQzQwLjY3LDQuMTQgNDEuMjQsNC4zNyA0MS42Niw0Ljc2IFogTTMwLjczLDYuMjQgQzMwLjgzLDUuNjUgMzEuMTQsNS4yNyAzMS43NSw1LjI3IEMzMi4yNiw1LjI3IDMyLjYzLDUuNjUgMzIuNjksNi4yNCBMMzAuNzMsNi4yNCBaIE0zOC45OCw2LjI0IEw0MC45NCw2LjI0IEM0MC44OCw1LjY1IDQwLjUxLDUuMjcgNDAuMDAsNS4yNyBDMzkuMzksNS4yNyAzOS4wOCw1LjY1IDM4Ljk4LDYuMjQgWiBNMzcuNTQsNC4yMSBMMzcuNTQsNS42MCBDMzYuNjQsNS41MSAzNi4wNyw1Ljk5IDM2LjA3LDcuMDMgTDM2LjA3LDkuMjggTDM0LjQ4LDkuMjggTDM0LjQ4LDQuMjggTDM2LjAwLDQuMjggTDM2LjAwLDUuMDYgTDM2LjAzLDUuMDYgQzM2LjM4LDQuNDcgMzYuNzgsNC4yMSAzNy4zOSw0LjIxIEMzNy40NSw0LjIxIDM3LjUwLDQuMjEgMzcuNTQsNC4yMSBaIiBmaWxsPSIjZTYwMDIzIj48L3BhdGg+PC9nPjwvc3ZnPg==) 50% 50% no-repeat;
  background-size: contain;
}
 span.PIN_1624437643899_embed_grid .PIN_1624437643899_ft .PIN_1624437643899_button:hover { 
  border: 1px solid rgba(0,0,0,.1);
}
 span.PIN_1624437643899_embed_grid.PIN_1624437643899_noscroll .PIN_1624437643899_bd { 
  overflow: hidden;
}
 span.PIN_1624437643899_embed_grid.PIN_1624437643899_board .PIN_1624437643899_hd .PIN_1624437643899_pinner { 
  top: 10px;
}
 span.PIN_1624437643899_embed_grid.PIN_1624437643899_board .PIN_1624437643899_hd .PIN_1624437643899_board { 
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  width: 75%;
  position: absolute;
  bottom: 10px;
  left: 56px;
  color: #363636;
  font-size: 12px;
}
 span.PIN_1624437643899_embed_grid.PIN_1624437643899_c2 { 
  max-width: 494px;
  min-width: 140px;
}
 span.PIN_1624437643899_embed_grid.PIN_1624437643899_c2 .PIN_1624437643899_bd .PIN_1624437643899_ct .PIN_1624437643899_col { 
  width: 50%;
}
 span.PIN_1624437643899_embed_grid.PIN_1624437643899_c3 { 
  max-width: 731px;
  min-width: 200px;
}
 span.PIN_1624437643899_embed_grid.PIN_1624437643899_c3 .PIN_1624437643899_bd .PIN_1624437643899_ct .PIN_1624437643899_col { 
  width: 33.33%;
}
 span.PIN_1624437643899_embed_grid.PIN_1624437643899_c4 { 
  max-width: 968px;
  min-width: 260px;
}
 span.PIN_1624437643899_embed_grid.PIN_1624437643899_c4 .PIN_1624437643899_bd .PIN_1624437643899_ct .PIN_1624437643899_col { 
  width: 25%;
}
 span.PIN_1624437643899_embed_grid.PIN_1624437643899_c5 { 
  max-width: 1205px;
  min-width: 320px;
}
 span.PIN_1624437643899_embed_grid.PIN_1624437643899_c5 .PIN_1624437643899_bd .PIN_1624437643899_ct .PIN_1624437643899_col { 
  width: 20%;
}
 span.PIN_1624437643899_embed_grid.PIN_1624437643899_c6 { 
  max-width: 1442px;
  min-width: 380px;
}
 span.PIN_1624437643899_embed_grid.PIN_1624437643899_c6 .PIN_1624437643899_bd .PIN_1624437643899_ct .PIN_1624437643899_col { 
  width: 16.66%;
}
 span.PIN_1624437643899_embed_grid.PIN_1624437643899_c7 { 
  max-width: 1679px;
  min-width: 440px;
}
 span.PIN_1624437643899_embed_grid.PIN_1624437643899_c7 .PIN_1624437643899_bd .PIN_1624437643899_ct .PIN_1624437643899_col { 
  width: 14.28%;
}
 span.PIN_1624437643899_embed_grid.PIN_1624437643899_c8 { 
  max-width: 1916px;
  min-width: 500px;
}
 span.PIN_1624437643899_embed_grid.PIN_1624437643899_c8 .PIN_1624437643899_bd .PIN_1624437643899_ct .PIN_1624437643899_col { 
  width: 12.5%;
}
 span.PIN_1624437643899_embed_grid.PIN_1624437643899_c9 { 
  max-width: 2153px;
  min-width: 560px;
}
 span.PIN_1624437643899_embed_grid.PIN_1624437643899_c9 .PIN_1624437643899_bd .PIN_1624437643899_ct .PIN_1624437643899_col { 
  width: 11.11%;
}
 span.PIN_1624437643899_embed_grid.PIN_1624437643899_c10 { 
  max-width: 2390px;
  min-width: 620px;
}
 span.PIN_1624437643899_embed_grid.PIN_1624437643899_c10 .PIN_1624437643899_bd .PIN_1624437643899_ct .PIN_1624437643899_col { 
  width: 10%;
}
 span.PIN_1624437643899_embed_pin { 
  min-width: 160px;
  max-width: 236px;
  width: 100%;
  border-radius: 16px;
  font: 12px "SF Pro", "Helvetica Neue", Helvetica, arial, sans-serif;
  display: inline-block;
  background: rgba(0,0,0,.1);
  overflow: hidden;
  border: 1px solid rgba(0,0,0,.1);
  box-sizing: border-box;
  -moz-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
 span.PIN_1624437643899_embed_pin * { 
  display: block;
  position: relative;
  font: inherit;
  cursor: inherit;
  color: inherit;
  box-sizing: inherit;
  margin: 0;
  padding: 0;
  text-align: left;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages { 
  height: 100%;
  width: 100%;
  display: block;
  position: relative;
  overflow: hidden;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_page { 
  position: absolute;
  left: 0;
  transition-property: left;
  transition-duration: .25s;
  transition-timing-function: ease-in;
  height: inherit;
  width: inherit;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_page.PIN_1624437643899_past { 
  left: -100%;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_page.PIN_1624437643899_future { 
  left: 100%;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_page .PIN_1624437643899_blocks { 
  height: inherit;
  width: inherit;
  overflow: hidden;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_page .PIN_1624437643899_blocks .PIN_1624437643899_block { 
  position: absolute;
  height: 100%;
  width: 100%;
  overflowX: hidden;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_page .PIN_1624437643899_blocks .PIN_1624437643899_block .PIN_1624437643899_container { 
  position: absolute;
  width: 100%;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_page .PIN_1624437643899_blocks .PIN_1624437643899_block .PIN_1624437643899_container.PIN_1624437643899_top { 
  top: 0;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_page .PIN_1624437643899_blocks .PIN_1624437643899_block .PIN_1624437643899_container.PIN_1624437643899_middle { 
  top: 50%;
  transform: translateY(-50%);
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_page .PIN_1624437643899_blocks .PIN_1624437643899_block .PIN_1624437643899_container.PIN_1624437643899_bottom { 
  bottom: 0;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_page .PIN_1624437643899_blocks .PIN_1624437643899_block .PIN_1624437643899_container.PIN_1624437643899_left { 
  text-align: left;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_page .PIN_1624437643899_blocks .PIN_1624437643899_block .PIN_1624437643899_container.PIN_1624437643899_center { 
  text-align: center;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_page .PIN_1624437643899_blocks .PIN_1624437643899_block .PIN_1624437643899_container.PIN_1624437643899_right { 
  text-align: right;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_page .PIN_1624437643899_blocks .PIN_1624437643899_block .PIN_1624437643899_container .PIN_1624437643899_paragraph { 
  text-align: inherit;
  display: inline;
  word-break: break-word;
  font-size: 16px;
  line-height: 1.24em;
  border-radius: 3px;
  padding: 0.1em 0.2em;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_page .PIN_1624437643899_blocks .PIN_1624437643899_block .PIN_1624437643899_container _video { 
  position: absolute;
  height: 100%;
  width: auto;
  left: 50%;
  transform: translateX(-50%);
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_page .PIN_1624437643899_blocks .PIN_1624437643899_block .PIN_1624437643899_container.PIN_1624437643899_video { 
  height: 100%;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_page .PIN_1624437643899_blocks .PIN_1624437643899_block .PIN_1624437643899_image { 
  position: absolute;
  height: 100%;
  width: 100%;
  background-position: 50% 50%;
  background-repeat: no-repeat;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_page .PIN_1624437643899_blocks .PIN_1624437643899_block .PIN_1624437643899_image.PIN_1624437643899_containMe { 
  background-size: contain;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_page .PIN_1624437643899_blocks .PIN_1624437643899_block .PIN_1624437643899_image.PIN_1624437643899_coverMe { 
  background-size: cover;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_page .PIN_1624437643899_blocks .PIN_1624437643899_block video { 
  position: absolute;
  height: 100%;
  width: auto;
  left: 50%;
  transform: translateX(-50%);
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_page .PIN_1624437643899_blocks .PIN_1624437643899_block video.PIN_1624437643899_isNative { 
  width: 100%;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_overlay { 
  position: absolute;
  height: 100%;
  width: 100%;
  opacity: .001;
  background: rgba(0,0,0,.03);
  cursor: pointer;
  user-select: none;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_overlay .PIN_1624437643899_repin { 
  position: absolute;
  top: 12px;
  right: 12px;
  height: 40px;
  color: #fff;
  background: #e60023 url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGhlaWdodD0iMzBweCIgd2lkdGg9IjMwcHgiIHZpZXdCb3g9Ii0xIC0xIDMxIDMxIj48Zz48cGF0aCBkPSJNMjkuNDQ5LDE0LjY2MiBDMjkuNDQ5LDIyLjcyMiAyMi44NjgsMjkuMjU2IDE0Ljc1LDI5LjI1NiBDNi42MzIsMjkuMjU2IDAuMDUxLDIyLjcyMiAwLjA1MSwxNC42NjIgQzAuMDUxLDYuNjAxIDYuNjMyLDAuMDY3IDE0Ljc1LDAuMDY3IEMyMi44NjgsMC4wNjcgMjkuNDQ5LDYuNjAxIDI5LjQ0OSwxNC42NjIiIGZpbGw9IiNmZmYiIHN0cm9rZT0iI2ZmZiIgc3Ryb2tlLXdpZHRoPSIxIj48L3BhdGg+PHBhdGggZD0iTTE0LjczMywxLjY4NiBDNy41MTYsMS42ODYgMS42NjUsNy40OTUgMS42NjUsMTQuNjYyIEMxLjY2NSwyMC4xNTkgNS4xMDksMjQuODU0IDkuOTcsMjYuNzQ0IEM5Ljg1NiwyNS43MTggOS43NTMsMjQuMTQzIDEwLjAxNiwyMy4wMjIgQzEwLjI1MywyMi4wMSAxMS41NDgsMTYuNTcyIDExLjU0OCwxNi41NzIgQzExLjU0OCwxNi41NzIgMTEuMTU3LDE1Ljc5NSAxMS4xNTcsMTQuNjQ2IEMxMS4xNTcsMTIuODQyIDEyLjIxMSwxMS40OTUgMTMuNTIyLDExLjQ5NSBDMTQuNjM3LDExLjQ5NSAxNS4xNzUsMTIuMzI2IDE1LjE3NSwxMy4zMjMgQzE1LjE3NSwxNC40MzYgMTQuNDYyLDE2LjEgMTQuMDkzLDE3LjY0MyBDMTMuNzg1LDE4LjkzNSAxNC43NDUsMTkuOTg4IDE2LjAyOCwxOS45ODggQzE4LjM1MSwxOS45ODggMjAuMTM2LDE3LjU1NiAyMC4xMzYsMTQuMDQ2IEMyMC4xMzYsMTAuOTM5IDE3Ljg4OCw4Ljc2NyAxNC42NzgsOC43NjcgQzEwLjk1OSw4Ljc2NyA4Ljc3NywxMS41MzYgOC43NzcsMTQuMzk4IEM4Ljc3NywxNS41MTMgOS4yMSwxNi43MDkgOS43NDksMTcuMzU5IEM5Ljg1NiwxNy40ODggOS44NzIsMTcuNiA5Ljg0LDE3LjczMSBDOS43NDEsMTguMTQxIDkuNTIsMTkuMDIzIDkuNDc3LDE5LjIwMyBDOS40MiwxOS40NCA5LjI4OCwxOS40OTEgOS4wNCwxOS4zNzYgQzcuNDA4LDE4LjYyMiA2LjM4NywxNi4yNTIgNi4zODcsMTQuMzQ5IEM2LjM4NywxMC4yNTYgOS4zODMsNi40OTcgMTUuMDIyLDYuNDk3IEMxOS41NTUsNi40OTcgMjMuMDc4LDkuNzA1IDIzLjA3OCwxMy45OTEgQzIzLjA3OCwxOC40NjMgMjAuMjM5LDIyLjA2MiAxNi4yOTcsMjIuMDYyIEMxNC45NzMsMjIuMDYyIDEzLjcyOCwyMS4zNzkgMTMuMzAyLDIwLjU3MiBDMTMuMzAyLDIwLjU3MiAxMi42NDcsMjMuMDUgMTIuNDg4LDIzLjY1NyBDMTIuMTkzLDI0Ljc4NCAxMS4zOTYsMjYuMTk2IDEwLjg2MywyNy4wNTggQzEyLjA4NiwyNy40MzQgMTMuMzg2LDI3LjYzNyAxNC43MzMsMjcuNjM3IEMyMS45NSwyNy42MzcgMjcuODAxLDIxLjgyOCAyNy44MDEsMTQuNjYyIEMyNy44MDEsNy40OTUgMjEuOTUsMS42ODYgMTQuNzMzLDEuNjg2IiBmaWxsPSIjZTYwMDIzIj48L3BhdGg+PC9nPjwvc3ZnPg==) 10px 50% no-repeat;
  background-size: 18px 18px;
  text-indent: 36px;
  font-size: 14px;
  line-height: 40px;
  font-weight: bold;
  border-radius: 20px;
  padding: 0 12px 0 0;
  width: auto;
  z-index: 2;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_overlay .PIN_1624437643899_price { 
  position: absolute;
  top: 12px;
  left: 12px;
  height: 40px;
  background: rgba(255,255,255,.9);
  font-size: 14px;
  line-height: 40px;
  font-weight: bold;
  border-radius: 20px;
  padding: 0 12px;
  width: auto;
  z-index: 2;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_overlay .PIN_1624437643899_controls { 
  position: absolute;
  height: 64px;
  width: 64px;
  top: 50%;
  left: 50%;
  margin-top: -32px;
  margin-left: -32px;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_overlay .PIN_1624437643899_controls .PIN_1624437643899_play { 
  background: rgba(0,0,0,.8) url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGhlaWdodD0iMjRweCIgd2lkdGg9IjI0cHgiIHZpZXdCb3g9IjAgMCAyNCAyNCI+PGc+PHBhdGggZD0iTTIyLjYyIDkuNDhMOC42My40OEEzIDMgMCAwIDAgNCAzdjE4YTMgMyAwIDAgMCA0LjYzIDIuNTJsMTQtOWEzIDMgMCAwIDAgMC01LjA0IiBmaWxsPSIjZmZmIj48L3BhdGg+PC9nPjwvc3ZnPg==) 50% 50% no-repeat;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_overlay .PIN_1624437643899_controls .PIN_1624437643899_pause { 
  background: rgba(0,0,0,.8) url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGhlaWdodD0iMjRweCIgd2lkdGg9IjI0cHgiIHZpZXdCb3g9IjAgMCAyNCAyNCI+PGc+PHBhdGggZD0iTTcgMGMxLjY1IDAgMyAxLjM1IDMgM3YxOGMwIDEuNjUtMS4zNSAzLTMgM3MtMy0xLjM1LTMtM1YzYzAtMS42NSAxLjM1LTMgMy0zem0xMCAwYzEuNjUgMCAzIDEuMzUgMyAzdjE4YzAgMS42NS0xLjM1IDMtMyAzcy0zLTEuMzUtMy0zVjNjMC0xLjY1IDEuMzUtMyAzLTN6IiBmaWxsPSIjZmZmIj48L3BhdGg+PC9nPjwvc3ZnPg==) 50% 50% no-repeat;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_overlay .PIN_1624437643899_controls .PIN_1624437643899_pause,  span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_overlay .PIN_1624437643899_controls .PIN_1624437643899_play { 
  position: absolute;
  display: block;
  height: 64px;
  width: 64px;
  border-radius: 32px;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_overlay .PIN_1624437643899_nav { 
  user-select: none;
  position: absolute;
  height: 100%;
  width: 20%;
  background: transparent url() 0 0 no-repeat;
  background-size: 24px 24px;
  z-index: 1;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_overlay .PIN_1624437643899_nav.PIN_1624437643899_forward,  span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_overlay .PIN_1624437643899_nav.PIN_1624437643899_forward_noop { 
  right: 0;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_overlay .PIN_1624437643899_nav.PIN_1624437643899_backward,  span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_overlay .PIN_1624437643899_nav.PIN_1624437643899_backward_noop { 
  left: 0;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_overlay .PIN_1624437643899_nav.PIN_1624437643899_forward { 
  background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGhlaWdodD0iMjRweCIgd2lkdGg9IjI0cHgiIHZpZXdCb3g9IjAgMCAyNCAyNCI+PGc+PHBhdGggZD0iTTYuNzIgMjRjLjU3IDAgMS4xNC0uMjIgMS41Ny0uNjZMMTkuNSAxMiA4LjI5LjY2Yy0uODYtLjg4LTIuMjctLjg4LTMuMTQgMC0uODcuODgtLjg3IDIuMyAwIDMuMThMMTMuMjEgMTJsLTguMDYgOC4xNmMtLjg3Ljg4LS44NyAyLjMgMCAzLjE4LjQzLjQ0IDEgLjY2IDEuNTcuNjYiIGZpbGw9IiNmZmYiIHN0cm9rZT0iI2FhYSIgc3Ryb2tlLXdpZHRoPSIuNSI+PC9wYXRoPjwvZz48L3N2Zz4=);
  background-position: 100% 50%;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_overlay .PIN_1624437643899_nav.PIN_1624437643899_backward { 
  background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGhlaWdodD0iMjRweCIgd2lkdGg9IjI0cHgiIHZpZXdCb3g9IjAgMCAyNCAyNCI+PGc+PHBhdGggZD0iTTE3LjI4IDI0Yy0uNTcgMC0xLjE0LS4yMi0xLjU4LS42Nkw0LjUgMTIgMTUuNy42NmEyLjIxIDIuMjEgMCAwIDEgMy4xNSAwYy44Ny44OC44NyAyLjMgMCAzLjE4TDEwLjc5IDEybDguMDYgOC4xNmMuODcuODguODcgMi4zIDAgMy4xOC0uNDQuNDQtMSAuNjYtMS41Ny42NiIgZmlsbD0iI2ZmZiIgc3Ryb2tlPSIjYWFhIiBzdHJva2Utd2lkdGg9Ii41Ij48L3BhdGg+PC9nPjwvc3ZnPg==);
  background-position: 0 50%;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_overlay .PIN_1624437643899_progress { 
  position: absolute;
  bottom: 0;
  left: 0;
  height: 36px;
  width: 100%;
  background: linear-gradient(rgba(0,0,0,0), rgba(0,0,0,.2));
  text-align: center;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_overlay .PIN_1624437643899_progress .PIN_1624437643899_indicator { 
  display: inline-block;
  height: 8px;
  width: 8px;
  margin: 16px 2px 0;
  background: rgba(255,255,255,.5);
  border-radius: 50%;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_overlay .PIN_1624437643899_progress .PIN_1624437643899_indicator.PIN_1624437643899_current { 
  background: #fff;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_pages .PIN_1624437643899_overlay:hover { 
  opacity: 1;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_footer { 
  position: relative;
  display: block;
  height: 96px;
  padding: 16px;
  color: #333;
  background: #fff;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_footer .PIN_1624437643899_container { 
  position: relative;
  display: block;
  width: 100%;
  height: 100%;
  background: #fff;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_footer .PIN_1624437643899_container .PIN_1624437643899_title { 
  position: absolute;
  left: 0px;
  right: 0px;
  font-size: 16px;
  font-weight: bold;
  overflow: hidden;
  white-space: pre;
  text-overflow: ellipsis;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_footer .PIN_1624437643899_container .PIN_1624437643899_avatar { 
  position: absolute;
  bottom: 0;
  left: 0;
  height: 30px;
  width: 30px;
  border-radius: 50%;
  background: transparent url() 0 0 no-repeat;
  background-size: cover;
  box-shadow: 0 0 1px rgba(0,0,0,.5);
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_footer .PIN_1624437643899_container .PIN_1624437643899_deets { 
  position: absolute;
  left: 40px;
  right: 0px;
  bottom: 0px;
  height: 30px;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_footer .PIN_1624437643899_container .PIN_1624437643899_deets span { 
  left: 0px;
  right: 0px;
  position: absolute;
  font-size: 12px;
  overflow: hidden;
  white-space: pre;
  text-overflow: ellipsis;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_footer .PIN_1624437643899_container .PIN_1624437643899_deets .PIN_1624437643899_topline { 
  top: 0;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_footer .PIN_1624437643899_container .PIN_1624437643899_deets .PIN_1624437643899_bottomline { 
  bottom: 0;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_footer::after { 
  content: "------------------------------------------------------------------------------------------------------------------------";
  display: block;
  height: 1px;
  line-height: 1px;
  color: transparent;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_footer.PIN_1624437643899_uno .PIN_1624437643899_container .PIN_1624437643899_deets .PIN_1624437643899_topline { 
  top: 8px;
}
 span.PIN_1624437643899_embed_pin .PIN_1624437643899_footer.PIN_1624437643899_uno .PIN_1624437643899_container .PIN_1624437643899_deets .PIN_1624437643899_bottomline { 
  display: none;
}
 span.PIN_1624437643899_embed_pin.PIN_1624437643899_fresh .PIN_1624437643899_pages .PIN_1624437643899_overlay { 
  opacity: 1;
}
 span.PIN_1624437643899_embed_pin.PIN_1624437643899_medium { 
  min-width: 237px;
  max-width: 345px;
  border-radius: 24px;
}
 span.PIN_1624437643899_embed_pin.PIN_1624437643899_medium .PIN_1624437643899_pages .PIN_1624437643899_page .PIN_1624437643899_blocks .PIN_1624437643899_block .PIN_1624437643899_container .PIN_1624437643899_paragraph { 
  font-size: 21px;
  line-height: 1.23em;
  border-radius: 5px;
  padding: 2px 3px;
}
 span.PIN_1624437643899_embed_pin.PIN_1624437643899_medium .PIN_1624437643899_pages .PIN_1624437643899_overlay .PIN_1624437643899_progress .PIN_1624437643899_indicator { 
  margin: 16px 4px 0;
}
 span.PIN_1624437643899_embed_pin.PIN_1624437643899_large { 
  min-width: 346px;
  max-width: 600px;
  border-radius: 36px;
}
 span.PIN_1624437643899_embed_pin.PIN_1624437643899_large .PIN_1624437643899_pages .PIN_1624437643899_page .PIN_1624437643899_blocks .PIN_1624437643899_block .PIN_1624437643899_container .PIN_1624437643899_paragraph { 
  font-size: 27px;
  line-height: 1.11em;
  border-radius: 5px;
  padding: 3px 4.5px;
}
 span.PIN_1624437643899_embed_pin.PIN_1624437643899_large .PIN_1624437643899_pages .PIN_1624437643899_overlay .PIN_1624437643899_progress .PIN_1624437643899_indicator { 
  margin: 16px 4px 0;
}
 span.PIN_1624437643899_embed_pin.PIN_1624437643899_atStart .PIN_1624437643899_pages .PIN_1624437643899_overlay .PIN_1624437643899_backward { 
  display: none;
}
 span.PIN_1624437643899_embed_pin.PIN_1624437643899_atEnd .PIN_1624437643899_pages .PIN_1624437643899_overlay .PIN_1624437643899_forward { 
  display: none;
}
 .PIN_1624437643899_button_follow { 
  display: inline-block;
  color: #363636;
  box-sizing: border-box;
  box-shadow: inset 0 0 1px #888;
  border-radius: 3px;
  font: bold 11px/20px "Helvetica Neue", Helvetica, arial, sans-serif !important;
  cursor: pointer;
  -moz-font-smoothing: antialiased;
  height: 20px;
  padding: 0 4px 0 20px;
  background-color: #efefef;
  position: relative;
  white-space: nowrap;
  vertical-align: baseline;
}
 .PIN_1624437643899_button_follow:hover { 
  box-shadow: inset 0 0 1px #000;
}
 .PIN_1624437643899_button_follow::after { 
  content: "";
  position: absolute;
  height: 14px;
  width: 14px;
  top: 3px;
  left: 3px;
  background: transparent url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGhlaWdodD0iMzBweCIgd2lkdGg9IjMwcHgiIHZpZXdCb3g9Ii0xIC0xIDMxIDMxIj48Zz48cGF0aCBkPSJNMjkuNDQ5LDE0LjY2MiBDMjkuNDQ5LDIyLjcyMiAyMi44NjgsMjkuMjU2IDE0Ljc1LDI5LjI1NiBDNi42MzIsMjkuMjU2IDAuMDUxLDIyLjcyMiAwLjA1MSwxNC42NjIgQzAuMDUxLDYuNjAxIDYuNjMyLDAuMDY3IDE0Ljc1LDAuMDY3IEMyMi44NjgsMC4wNjcgMjkuNDQ5LDYuNjAxIDI5LjQ0OSwxNC42NjIiIGZpbGw9IiNmZmYiIHN0cm9rZT0iI2ZmZiIgc3Ryb2tlLXdpZHRoPSIxIj48L3BhdGg+PHBhdGggZD0iTTE0LjczMywxLjY4NiBDNy41MTYsMS42ODYgMS42NjUsNy40OTUgMS42NjUsMTQuNjYyIEMxLjY2NSwyMC4xNTkgNS4xMDksMjQuODU0IDkuOTcsMjYuNzQ0IEM5Ljg1NiwyNS43MTggOS43NTMsMjQuMTQzIDEwLjAxNiwyMy4wMjIgQzEwLjI1MywyMi4wMSAxMS41NDgsMTYuNTcyIDExLjU0OCwxNi41NzIgQzExLjU0OCwxNi41NzIgMTEuMTU3LDE1Ljc5NSAxMS4xNTcsMTQuNjQ2IEMxMS4xNTcsMTIuODQyIDEyLjIxMSwxMS40OTUgMTMuNTIyLDExLjQ5NSBDMTQuNjM3LDExLjQ5NSAxNS4xNzUsMTIuMzI2IDE1LjE3NSwxMy4zMjMgQzE1LjE3NSwxNC40MzYgMTQuNDYyLDE2LjEgMTQuMDkzLDE3LjY0MyBDMTMuNzg1LDE4LjkzNSAxNC43NDUsMTkuOTg4IDE2LjAyOCwxOS45ODggQzE4LjM1MSwxOS45ODggMjAuMTM2LDE3LjU1NiAyMC4xMzYsMTQuMDQ2IEMyMC4xMzYsMTAuOTM5IDE3Ljg4OCw4Ljc2NyAxNC42NzgsOC43NjcgQzEwLjk1OSw4Ljc2NyA4Ljc3NywxMS41MzYgOC43NzcsMTQuMzk4IEM4Ljc3NywxNS41MTMgOS4yMSwxNi43MDkgOS43NDksMTcuMzU5IEM5Ljg1NiwxNy40ODggOS44NzIsMTcuNiA5Ljg0LDE3LjczMSBDOS43NDEsMTguMTQxIDkuNTIsMTkuMDIzIDkuNDc3LDE5LjIwMyBDOS40MiwxOS40NCA5LjI4OCwxOS40OTEgOS4wNCwxOS4zNzYgQzcuNDA4LDE4LjYyMiA2LjM4NywxNi4yNTIgNi4zODcsMTQuMzQ5IEM2LjM4NywxMC4yNTYgOS4zODMsNi40OTcgMTUuMDIyLDYuNDk3IEMxOS41NTUsNi40OTcgMjMuMDc4LDkuNzA1IDIzLjA3OCwxMy45OTEgQzIzLjA3OCwxOC40NjMgMjAuMjM5LDIyLjA2MiAxNi4yOTcsMjIuMDYyIEMxNC45NzMsMjIuMDYyIDEzLjcyOCwyMS4zNzkgMTMuMzAyLDIwLjU3MiBDMTMuMzAyLDIwLjU3MiAxMi42NDcsMjMuMDUgMTIuNDg4LDIzLjY1NyBDMTIuMTkzLDI0Ljc4NCAxMS4zOTYsMjYuMTk2IDEwLjg2MywyNy4wNTggQzEyLjA4NiwyNy40MzQgMTMuMzg2LDI3LjYzNyAxNC43MzMsMjcuNjM3IEMyMS45NSwyNy42MzcgMjcuODAxLDIxLjgyOCAyNy44MDEsMTQuNjYyIEMyNy44MDEsNy40OTUgMjEuOTUsMS42ODYgMTQuNzMzLDEuNjg2IiBmaWxsPSIjZTYwMDIzIj48L3BhdGg+PC9nPjwvc3ZnPg==) 0 0 no-repeat;
  background-size: 14px 14px;
}
 .PIN_1624437643899_button_follow.PIN_1624437643899_tall { 
  height: 26px;
  line-height: 26px;
  font-size: 13px;
  padding: 0 6px 0 25px;
  border-radius: 3px;
}
 .PIN_1624437643899_button_follow.PIN_1624437643899_tall::after { 
  height: 18px;
  width: 18px;
  top: 4px;
  left: 4px;
  background-size: 18px 18px;
}
 .PIN_1624437643899_button_pin { 
  cursor: pointer;
  display: inline-block;
  box-sizing: border-box;
  box-shadow: inset 0 0 1px #888;
  border-radius: 3px;
  height: 20px;
  width: 40px;
  -moz-font-smoothing: antialiased;
  background: #efefef url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGhlaWdodD0iMThweCIgd2lkdGg9IjQycHgiIHZpZXdCb3g9IjAgMCA0MiAxOCI+PGc+PHBhdGggZD0iTTE2Ljg1Myw2LjM0NSBDMTcuNjMyLDYuMzQ1IDE4LjM4LDUuNzAyIDE4LjUxLDQuOTA5IEMxOC42NjQsNC4xMzggMTguMTM1LDMuNDk0IDE3LjM1NywzLjQ5NCBDMTYuNTc4LDMuNDk0IDE1LjgzLDQuMTM4IDE1LjY5OCw0LjkwOSBDMTUuNTQ2LDUuNzAyIDE2LjA1Myw2LjM0NSAxNi44NTMsNi4zNDUgWiBNNy40NTgsMCBDMi41LDAgMCwzLjUyMiAwLDYuNDU5IEMwLDguMjM3IDAuNjgsOS44MTkgMi4xMzcsMTAuNDA5IEMyLjM3NiwxMC41MDUgMi41OSwxMC40MTIgMi42NiwxMC4xNSBDMi43MDgsOS45NjkgMi44MjIsOS41MTEgMi44NzMsOS4zMiBDMi45NDMsOS4wNjEgMi45MTYsOC45NyAyLjcyMyw4Ljc0NCBDMi4zMDIsOC4yNTMgMi4wMzQsNy42MTcgMi4wMzQsNi43MTYgQzIuMDM0LDQuMTA0IDQuMDA3LDEuNzY1IDcuMTcyLDEuNzY1IEM5Ljk3NSwxLjc2NSAxMS41MTQsMy40NjEgMTEuNTE0LDUuNzI2IEMxMS41MTQsOC43MDggMTAuMTgzLDExLjE4IDguMjA2LDExLjE4IEM3LjExNCwxMS4xOCA2LjI5NywxMC4zMjkgNi41NTksOS4yMzMgQzYuODcyLDcuOTIyIDcuNDgsNi41MDkgNy40OCw1LjU2NCBDNy40OCw0LjcxNyA3LjAyMiw0LjAxMSA2LjA3Miw0LjAxMSBDNC45NTYsNC4wMTEgNC4wNiw1LjE1NSA0LjA2LDYuNjg3IEM0LjA2LDcuNjYzIDQuMzkzLDguMzIzIDQuMzkzLDguMzIzIEM0LjM5Myw4LjMyMyAzLjI1MSwxMy4xMTcgMy4wNTEsMTMuOTU3IEMyLjY1MiwxNS42MjkgMi45OTEsMTcuNjc5IDMuMDE5LDE3Ljg4NiBDMy4wMzYsMTguMDA5IDMuMTk1LDE4LjAzOCAzLjI2NywxNy45NDYgQzMuMzcsMTcuODEyIDQuNywxNi4xODcgNS4xNTEsMTQuNTYyIEM1LjI3OSwxNC4xMDIgNS44ODUsMTEuNzIgNS44ODUsMTEuNzIgQzYuMjQ4LDEyLjQwNiA3LjMwOCwxMy4wMDkgOC40MzUsMTMuMDA5IEMxMS43OSwxMy4wMDkgMTQuMDY2LDkuOTc5IDE0LjA2Niw1LjkyMyBDMTQuMDY2LDIuODU3IDExLjQ0NCwwIDcuNDU4LDAgWiBNMjYuODk2LDE0LjE4OSBDMjYuMzQ4LDE0LjE4OSAyNi4xMTcsMTMuOTE1IDI2LjExNywxMy4zMjggQzI2LjExNywxMi40MDQgMjcuMDM1LDEwLjA5MSAyNy4wMzUsOS4wNDEgQzI3LjAzNSw3LjYzOCAyNi4yNzYsNi44MjYgMjQuNzIsNi44MjYgQzIzLjczOSw2LjgyNiAyMi43MjIsNy40NTMgMjIuMjkxLDguMDAzIEMyMi4yOTEsOC4wMDMgMjIuNDIyLDcuNTUzIDIyLjQ2Nyw3LjM4IEMyMi41MTUsNy4xOTYgMjIuNDE1LDYuODg0IDIyLjE3Myw2Ljg4NCBMMjAuNjUxLDYuODg0IEMyMC4zMjgsNi44ODQgMjAuMjM4LDcuMDU1IDIwLjE5MSw3LjI0NCBDMjAuMTcyLDcuMzIgMTkuNjI0LDkuNTg0IDE5LjA5OCwxMS42MzIgQzE4LjczOCwxMy4wMzQgMTcuODYzLDE0LjIwNSAxNi45MjgsMTQuMjA1IEMxNi40NDcsMTQuMjA1IDE2LjIzMywxMy45MDYgMTYuMjMzLDEzLjM5OSBDMTYuMjMzLDEyLjk1OSAxNi41MTksMTEuODc3IDE2Ljg2LDEwLjUzNCBDMTcuMjc2LDguODk4IDE3LjY0Miw3LjU1MSAxNy42ODEsNy4zOTQgQzE3LjczMiw3LjE5MiAxNy42NDIsNy4wMTcgMTcuMzc5LDcuMDE3IEwxNS44NDksNy4wMTcgQzE1LjU3Miw3LjAxNyAxNS40NzMsNy4xNjEgMTUuNDE0LDcuMzYxIEMxNS40MTQsNy4zNjEgMTQuOTgzLDguOTc3IDE0LjUyNywxMC43NzUgQzE0LjE5NiwxMi4wNzkgMTMuODMsMTMuNDA5IDEzLjgzLDE0LjAzNCBDMTMuODMsMTUuMTQ4IDE0LjMzNiwxNS45NDQgMTUuNzI0LDE1Ljk0NCBDMTYuNzk2LDE1Ljk0NCAxNy42NDQsMTUuNDUgMTguMjkyLDE0Ljc2NCBDMTguMTk3LDE1LjEzNSAxOC4xMzYsMTUuNDE0IDE4LjEzLDE1LjQzOSBDMTguMDc0LDE1LjY1IDE4LjE0MiwxNS44MzggMTguMzk0LDE1LjgzOCBMMTkuOTYxLDE1LjgzOCBDMjAuMjMzLDE1LjgzOCAyMC4zMzcsMTUuNzMgMjAuMzk0LDE1LjQ5NCBDMjAuNDQ5LDE1LjI2OSAyMS42MTksMTAuNjY3IDIxLjYxOSwxMC42NjcgQzIxLjkyOCw5LjQ0MyAyMi42OTIsOC42MzIgMjMuNzY4LDguNjMyIEMyNC4yNzksOC42MzIgMjQuNzIsOC45NjcgMjQuNjY5LDkuNjE4IEMyNC42MTIsMTAuMzMzIDIzLjc0MSwxMi45MDMgMjMuNzQxLDE0LjAzMSBDMjMuNzQxLDE0Ljg4NCAyNC4wNiwxNS45NDUgMjUuNjgzLDE1Ljk0NSBDMjYuNzg5LDE1Ljk0NSAyNy42MDMsMTUuNDY0IDI4LjE5NSwxNC43ODYgTDI3LjQ4OSwxMy45NDEgQzI3LjMxMSwxNC4wOTQgMjcuMTE0LDE0LjE4OSAyNi44OTYsMTQuMTg5IFogTTQxLjcwMSw2Ljg3MyBMNDAuMTM0LDYuODczIEM0MC4xMzQsNi44NzMgNDAuODU2LDQuMTA5IDQwLjg3Myw0LjAzNSBDNDAuOTQyLDMuNzQ1IDQwLjY5OCwzLjU3OCA0MC40NDEsMy42MzEgQzQwLjQ0MSwzLjYzMSAzOS4yMywzLjg2NiAzOS4wMDUsMy45MTMgQzM4Ljc3OSwzLjk1OCAzOC42MDQsNC4wODEgMzguNTIyLDQuNDAzIEMzOC41MTIsNC40NDUgMzcuODgsNi44NzMgMzcuODgsNi44NzMgTDM2LjYyMiw2Ljg3MyBDMzYuMzg1LDYuODczIDM2LjI0NSw2Ljk2OCAzNi4xOTIsNy4xODggQzM2LjExNSw3LjUwNCAzNS45NzUsOC4xNDUgMzUuOTM2LDguMjk3IEMzNS44ODUsOC40OTQgMzYsOC42NDQgMzYuMjIyLDguNjQ0IEwzNy40NTcsOC42NDQgQzM3LjQ0OCw4LjY3NyAzNy4wNjQsMTAuMTI1IDM2LjcyNSwxMS41MjEgTDM2LjcyNCwxMS41MTYgQzM2LjcyLDExLjUzMiAzNi43MTYsMTEuNTQ2IDM2LjcxMiwxMS41NjIgTDM2LjcxMiwxMS41NTYgQzM2LjcxMiwxMS41NTYgMzYuNzA4LDExLjU3MSAzNi43MDIsMTEuNTk4IEMzNi4zMjQsMTIuOTY4IDM1LjExOCwxNC4yMDkgMzQuMjAxLDE0LjIwOSBDMzMuNzIxLDE0LjIwOSAzMy41MDYsMTMuOTA5IDMzLjUwNiwxMy40MDIgQzMzLjUwNiwxMi45NjMgMzMuNzkyLDExLjg4IDM0LjEzNCwxMC41MzcgQzM0LjU0OSw4LjkwMSAzNC45MTUsNy41NTUgMzQuOTU1LDcuMzk3IEMzNS4wMDYsNy4xOTYgMzQuOTE1LDcuMDIgMzQuNjUyLDcuMDIgTDMzLjEyMiw3LjAyIEMzMi44NDUsNy4wMiAzMi43NDYsNy4xNjQgMzIuNjg3LDcuMzY0IEMzMi42ODcsNy4zNjQgMzIuMjU3LDguOTggMzEuOCwxMC43NzggQzMxLjQ2OSwxMi4wODMgMzEuMTAzLDEzLjQxMiAzMS4xMDMsMTQuMDM3IEMzMS4xMDMsMTUuMTUxIDMxLjYwOSwxNS45NDggMzIuOTk3LDE1Ljk0OCBDMzQuMDcsMTUuOTQ4IDM1LjEzNiwxNS40NTMgMzUuNzgzLDE0Ljc2NyBDMzUuNzgzLDE0Ljc2NyAzNi4wMTEsMTQuNTIxIDM2LjIzLDE0LjIyOSBDMzYuMjQxLDE0LjU4MSAzNi4zMjQsMTQuODM3IDM2LjQxMSwxNS4wMTggQzM2LjQ1OCwxNS4xMTkgMzYuNTE1LDE1LjIxNSAzNi41ODEsMTUuMzAzIEMzNi41ODIsMTUuMzA0IDM2LjU4MywxNS4zMDYgMzYuNTg1LDE1LjMwOCBMMzYuNTg1LDE1LjMwOCBDMzYuODkxLDE1LjcxMyAzNy4zOTgsMTUuOTYyIDM4LjE1MSwxNS45NjIgQzM5Ljg5NCwxNS45NjIgNDAuOTQ0LDE0LjkzOCA0MS41NjIsMTMuOTA5IEw0MC43MDQsMTMuMjM5IEM0MC4zMzMsMTMuNzc0IDM5LjgzOSwxNC4xNzUgMzkuMzI0LDE0LjE3NSBDMzguODQ2LDE0LjE3NSAzOC41NzksMTMuODc4IDM4LjU3OSwxMy4zNzIgQzM4LjU3OSwxMi45MzUgMzguODg5LDExLjg2OCAzOS4yMjksMTAuNTMgQzM5LjM0NCwxMC4wODMgMzkuNTE2LDkuNDAxIDM5LjcwOCw4LjY0NCBMNDEuMzAyLDguNjQ0IEM0MS41MzksOC42NDQgNDEuNjc4LDguNTQ5IDQxLjczMiw4LjMyOSBDNDEuODA4LDguMDEyIDQxLjk0OCw3LjM3MiA0MS45ODgsNy4yMjEgQzQyLjAzOSw3LjAyMyA0MS45MjMsNi44NzMgNDEuNzAxLDYuODczIFogTTM0LjEyNiw2LjM0OCBDMzQuOTA1LDYuMzQ4IDM1LjY1Myw1LjcwNiAzNS43ODMsNC45MTIgQzM1LjkzNyw0LjE0MSAzNS40MDksMy40OTggMzQuNjMsMy40OTggQzMzLjg1MSwzLjQ5OCAzMy4xMDMsNC4xNDEgMzIuOTcxLDQuOTEyIEMzMi44MTksNS43MDYgMzMuMzI2LDYuMzQ4IDM0LjEyNiw2LjM0OCBaIiBmaWxsPSIjZTYwMDIzIj48L3BhdGg+PC9nPjwvc3ZnPg==) 50% 50% no-repeat;
  background-size: 75%;
  position: relative;
  font: 12px "Helvetica Neue", Helvetica, arial, sans-serif;
  color: #555;
  text-align: center;
  vertical-align: baseline;
}
 .PIN_1624437643899_button_pin:hover { 
  box-shadow: inset 0 0 1px #000;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_above .PIN_1624437643899_count { 
  position: absolute;
  top: -28px;
  left: 0;
  height: 28px;
  width: inherit;
  line-height: 24px;
  background: transparent url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGhlaWdodD0iNzZweCIgd2lkdGg9IjExNHB4IiB2aWV3Qm94PSIwIDAgMTE0IDc2Ij48Zz48cGF0aCBkPSJNOSAxQzQuNiAxIDEgNC42IDEgOXY0M2MwIDQuMyAzLjYgOCA4IDhoMjZsMTggMTVoNy41bDE2LTE1SDEwNWM0LjQgMCA4LTMuNyA4LThWOWMwLTQuNC0zLjYtOC04LThIOXoiIGZpbGw9IiNmZmYiIHN0cm9rZT0iI2I1YjViNSIgc3Ryb2tlLXdpZHRoPSIyIj48L3BhdGg+PC9nPjwvc3ZnPg==) 0 0 no-repeat;
  background-size: 40px 28px;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_above.PIN_1624437643899_padded { 
  margin-top: 28px;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_beside .PIN_1624437643899_count { 
  position: absolute;
  right: -45px;
  text-align: center;
  text-indent: 5px;
  height: inherit;
  width: 45px;
  font-size: 11px;
  line-height: 20px;
  background: transparent url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGhlaWdodD0iNTZweCIgd2lkdGg9IjEyNnB4IiB2aWV3Qm94PSIyIDAgMTMwIDYwIj48Zz48cGF0aCBkPSJNMTE5LjYgMmM0LjUgMCA4IDMuNiA4IDh2NDBjMCA0LjQtMy41IDgtOCA4SDIzLjNMMS42IDMyLjR2LTQuNkwyMy4zIDJoOTYuM3oiIGZpbGw9IiNmZmYiIHN0cm9rZT0iI2I1YjViNSIgc3Ryb2tlLXdpZHRoPSIyIj48L3BhdGg+PC9nPjwvc3ZnPg==);
  background-size: cover;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_beside.PIN_1624437643899_padded { 
  margin-right: 45px;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_ja { 
  background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGhlaWdodD0iMThweCIgd2lkdGg9IjQxcHgiIHZpZXdCb3g9IjAgMCA0MSAxOCI+PGc+PHBhdGggZD0iTTE5LjgyMiw3LjE3MyBDMTkuODIyLDYuNTEgMTkuODM1LDYuMjc2IDE5Ljg4Nyw1Ljk2NCBMMTguMTQ1LDUuOTY0IEMxOC4xOTcsNi4yODkgMTguMTk3LDYuNDk3IDE4LjE5Nyw3LjE2IEwxOC4yMSwxMy4xOTIgQzE4LjIxLDEzLjk0NiAxOC4yMjMsMTQuMTY3IDE4LjI0OSwxNC4zODggQzE4LjMyNywxNS4wMjUgMTguNTIyLDE1LjQ0MSAxOC44ODYsMTUuNzE0IEMxOS4zOTMsMTYuMTA0IDIwLjI5LDE2LjI3MyAyMS45MjgsMTYuMjczIEMyMi43MjEsMTYuMjczIDI0LjM1OSwxNi4xOTUgMjUuMTI2LDE2LjExNyBDMjYuNTA0LDE1Ljk4NyAyNi41NjksMTUuOTc0IDI2Ljg0MiwxNS45NzQgTDI2Ljc2NCwxNC4yNDUgQzI2LjE5MiwxNC40MTQgMjUuOTA2LDE0LjQ3OSAyNS4yODIsMTQuNTU3IEMyNC4zMzMsMTQuNjg3IDIzLjEzNywxNC43NjUgMjIuMjY2LDE0Ljc2NSBDMjEuMDA1LDE0Ljc2NSAyMC4yNjQsMTQuNjQ4IDIwLjA0MywxNC40MjcgQzE5Ljg2MSwxNC4yNDUgMTkuODA5LDEzLjk1OSAxOS44MDksMTMuMjMxIEMxOS44MDksMTMuMTc5IDE5LjgwOSwxMy4xMDEgMTkuODIyLDEzLjAyMyBMMTkuODIyLDExLjMwNyBDMjEuOTkzLDEwLjkwNCAyNC4wMDgsMTAuMjI4IDI1LjkzMiw5LjI0IEwyNi4yNyw5LjA3MSBDMjYuMzc0LDkuMDE5IDI2LjQsOS4wMDYgMjYuNTQzLDguOTU0IEwyNS41MDMsNy40ODUgQzI0LjY1OCw4LjI3OCAyMS43ODUsOS40MzUgMTkuODIyLDkuNzk5IEwxOS44MjIsNy4xNzMgWiBNMjcuMzEsNC44NzIgQzI2LjQ5MSw0Ljg3MiAyNS44MTUsNS41NDggMjUuODE1LDYuMzY3IEMyNS44MTUsNy4xOTkgMjYuNDkxLDcuODc1IDI3LjMxLDcuODc1IEMyOC4xNDIsNy44NzUgMjguODE4LDcuMTk5IDI4LjgxOCw2LjM2NyBDMjguODE4LDUuNTQ4IDI4LjE0Miw0Ljg3MiAyNy4zMSw0Ljg3MiBMMjcuMzEsNC44NzIgWiBNMjcuMzEsNS41MjIgQzI3Ljc5MSw1LjUyMiAyOC4xNjgsNS44OTkgMjguMTY4LDYuMzY3IEMyOC4xNjgsNi44MzUgMjcuNzkxLDcuMjI1IDI3LjMxLDcuMjI1IEMyNi44NDIsNy4yMjUgMjYuNDY1LDYuODM1IDI2LjQ2NSw2LjM2NyBDMjYuNDY1LDUuODk5IDI2Ljg0Miw1LjUyMiAyNy4zMSw1LjUyMiBMMjcuMzEsNS41MjIgWiBNMzAuNTg2LDcuNjU0IEMzMS43OTUsOC4zMyAzMi44NjEsOS4xODggMzMuOTAxLDEwLjI5MyBMMzUuMDE5LDguODc2IEMzNC4wMTgsNy45MjcgMzMuMjEyLDcuMzI5IDMxLjY2NSw2LjM2NyBMMzAuNTg2LDcuNjU0IFogTTMxLjA0MSwxNi4yMzQgQzMxLjM0LDE2LjEzIDMxLjM3OSwxNi4xMTcgMzEuODk5LDE2LjAxMyBDMzMuOTE0LDE1LjU4NCAzNS41MjYsMTQuOTQ3IDM2Ljg1MiwxNC4wNjMgQzM4LjYzMywxMi44OCAzOS44NjgsMTEuMzQ2IDQwLjk3Myw4Ljk2NyBDNDAuMzEsOC40OTkgNDAuMTAyLDguMzA0IDM5LjU5NSw3LjY5MyBDMzkuMjA1LDguNzQ2IDM4Ljg0MSw5LjQ2MSAzOC4yNjksMTAuMjkzIEMzNy4yNDIsMTEuNzc1IDM2LjAzMywxMi43NzYgMzQuNDA4LDEzLjQ3OCBDMzMuMjI1LDEzLjk5OCAzMS42NzgsMTQuMzc1IDMwLjU2LDE0LjQ0IEwzMS4wNDEsMTYuMjM0IFogTTcuNDU4LDAgQzIuNSwwIDAsMy41MjIgMCw2LjQ1OSBDMCw4LjIzNyAwLjY4LDkuODE5IDIuMTM3LDEwLjQwOSBDMi4zNzYsMTAuNTA1IDIuNTksMTAuNDEyIDIuNjYsMTAuMTUgQzIuNzA4LDkuOTY5IDIuODIyLDkuNTExIDIuODczLDkuMzIgQzIuOTQzLDkuMDYxIDIuOTE2LDguOTcgMi43MjMsOC43NDQgQzIuMzAyLDguMjUzIDIuMDM0LDcuNjE3IDIuMDM0LDYuNzE2IEMyLjAzNCw0LjEwNCA0LjAwNywxLjc2NSA3LjE3MiwxLjc2NSBDOS45NzUsMS43NjUgMTEuNTE0LDMuNDYxIDExLjUxNCw1LjcyNiBDMTEuNTE0LDguNzA4IDEwLjE4MywxMS4xOCA4LjIwNiwxMS4xOCBDNy4xMTQsMTEuMTggNi4yOTcsMTAuMzI5IDYuNTU5LDkuMjMzIEM2Ljg3Miw3LjkyMiA3LjQ4LDYuNTA5IDcuNDgsNS41NjQgQzcuNDgsNC43MTcgNy4wMjIsNC4wMTEgNi4wNzIsNC4wMTEgQzQuOTU2LDQuMDExIDQuMDYsNS4xNTUgNC4wNiw2LjY4NyBDNC4wNiw3LjY2MyA0LjM5Myw4LjMyMyA0LjM5Myw4LjMyMyBDNC4zOTMsOC4zMjMgMy4yNTEsMTMuMTE3IDMuMDUxLDEzLjk1NyBDMi42NTIsMTUuNjI5IDIuOTkxLDE3LjY3OSAzLjAxOSwxNy44ODYgQzMuMDM2LDE4LjAwOSAzLjE5NSwxOC4wMzggMy4yNjcsMTcuOTQ2IEMzLjM3LDE3LjgxMiA0LjcsMTYuMTg3IDUuMTUxLDE0LjU2MiBDNS4yNzksMTQuMTAyIDUuODg1LDExLjcyIDUuODg1LDExLjcyIEM2LjI0OCwxMi40MDYgNy4zMDgsMTMuMDA5IDguNDM1LDEzLjAwOSBDMTEuNzksMTMuMDA5IDE0LjA2Niw5Ljk3OSAxNC4wNjYsNS45MjMgQzE0LjA2NiwyLjg1NyAxMS40NDQsMCA3LjQ1OCwwIFoiIGZpbGw9IiNlNjAwMjMiPjwvcGF0aD48L2c+PC9zdmc+);
  background-size: 72%;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_red { 
  background-color: #e60023;
  background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGhlaWdodD0iMThweCIgd2lkdGg9IjQycHgiIHZpZXdCb3g9IjAgMCA0MiAxOCI+PGc+PHBhdGggZD0iTTE2Ljg1Myw2LjM0NSBDMTcuNjMyLDYuMzQ1IDE4LjM4LDUuNzAyIDE4LjUxLDQuOTA5IEMxOC42NjQsNC4xMzggMTguMTM1LDMuNDk0IDE3LjM1NywzLjQ5NCBDMTYuNTc4LDMuNDk0IDE1LjgzLDQuMTM4IDE1LjY5OCw0LjkwOSBDMTUuNTQ2LDUuNzAyIDE2LjA1Myw2LjM0NSAxNi44NTMsNi4zNDUgWiBNNy40NTgsMCBDMi41LDAgMCwzLjUyMiAwLDYuNDU5IEMwLDguMjM3IDAuNjgsOS44MTkgMi4xMzcsMTAuNDA5IEMyLjM3NiwxMC41MDUgMi41OSwxMC40MTIgMi42NiwxMC4xNSBDMi43MDgsOS45NjkgMi44MjIsOS41MTEgMi44NzMsOS4zMiBDMi45NDMsOS4wNjEgMi45MTYsOC45NyAyLjcyMyw4Ljc0NCBDMi4zMDIsOC4yNTMgMi4wMzQsNy42MTcgMi4wMzQsNi43MTYgQzIuMDM0LDQuMTA0IDQuMDA3LDEuNzY1IDcuMTcyLDEuNzY1IEM5Ljk3NSwxLjc2NSAxMS41MTQsMy40NjEgMTEuNTE0LDUuNzI2IEMxMS41MTQsOC43MDggMTAuMTgzLDExLjE4IDguMjA2LDExLjE4IEM3LjExNCwxMS4xOCA2LjI5NywxMC4zMjkgNi41NTksOS4yMzMgQzYuODcyLDcuOTIyIDcuNDgsNi41MDkgNy40OCw1LjU2NCBDNy40OCw0LjcxNyA3LjAyMiw0LjAxMSA2LjA3Miw0LjAxMSBDNC45NTYsNC4wMTEgNC4wNiw1LjE1NSA0LjA2LDYuNjg3IEM0LjA2LDcuNjYzIDQuMzkzLDguMzIzIDQuMzkzLDguMzIzIEM0LjM5Myw4LjMyMyAzLjI1MSwxMy4xMTcgMy4wNTEsMTMuOTU3IEMyLjY1MiwxNS42MjkgMi45OTEsMTcuNjc5IDMuMDE5LDE3Ljg4NiBDMy4wMzYsMTguMDA5IDMuMTk1LDE4LjAzOCAzLjI2NywxNy45NDYgQzMuMzcsMTcuODEyIDQuNywxNi4xODcgNS4xNTEsMTQuNTYyIEM1LjI3OSwxNC4xMDIgNS44ODUsMTEuNzIgNS44ODUsMTEuNzIgQzYuMjQ4LDEyLjQwNiA3LjMwOCwxMy4wMDkgOC40MzUsMTMuMDA5IEMxMS43OSwxMy4wMDkgMTQuMDY2LDkuOTc5IDE0LjA2Niw1LjkyMyBDMTQuMDY2LDIuODU3IDExLjQ0NCwwIDcuNDU4LDAgWiBNMjYuODk2LDE0LjE4OSBDMjYuMzQ4LDE0LjE4OSAyNi4xMTcsMTMuOTE1IDI2LjExNywxMy4zMjggQzI2LjExNywxMi40MDQgMjcuMDM1LDEwLjA5MSAyNy4wMzUsOS4wNDEgQzI3LjAzNSw3LjYzOCAyNi4yNzYsNi44MjYgMjQuNzIsNi44MjYgQzIzLjczOSw2LjgyNiAyMi43MjIsNy40NTMgMjIuMjkxLDguMDAzIEMyMi4yOTEsOC4wMDMgMjIuNDIyLDcuNTUzIDIyLjQ2Nyw3LjM4IEMyMi41MTUsNy4xOTYgMjIuNDE1LDYuODg0IDIyLjE3Myw2Ljg4NCBMMjAuNjUxLDYuODg0IEMyMC4zMjgsNi44ODQgMjAuMjM4LDcuMDU1IDIwLjE5MSw3LjI0NCBDMjAuMTcyLDcuMzIgMTkuNjI0LDkuNTg0IDE5LjA5OCwxMS42MzIgQzE4LjczOCwxMy4wMzQgMTcuODYzLDE0LjIwNSAxNi45MjgsMTQuMjA1IEMxNi40NDcsMTQuMjA1IDE2LjIzMywxMy45MDYgMTYuMjMzLDEzLjM5OSBDMTYuMjMzLDEyLjk1OSAxNi41MTksMTEuODc3IDE2Ljg2LDEwLjUzNCBDMTcuMjc2LDguODk4IDE3LjY0Miw3LjU1MSAxNy42ODEsNy4zOTQgQzE3LjczMiw3LjE5MiAxNy42NDIsNy4wMTcgMTcuMzc5LDcuMDE3IEwxNS44NDksNy4wMTcgQzE1LjU3Miw3LjAxNyAxNS40NzMsNy4xNjEgMTUuNDE0LDcuMzYxIEMxNS40MTQsNy4zNjEgMTQuOTgzLDguOTc3IDE0LjUyNywxMC43NzUgQzE0LjE5NiwxMi4wNzkgMTMuODMsMTMuNDA5IDEzLjgzLDE0LjAzNCBDMTMuODMsMTUuMTQ4IDE0LjMzNiwxNS45NDQgMTUuNzI0LDE1Ljk0NCBDMTYuNzk2LDE1Ljk0NCAxNy42NDQsMTUuNDUgMTguMjkyLDE0Ljc2NCBDMTguMTk3LDE1LjEzNSAxOC4xMzYsMTUuNDE0IDE4LjEzLDE1LjQzOSBDMTguMDc0LDE1LjY1IDE4LjE0MiwxNS44MzggMTguMzk0LDE1LjgzOCBMMTkuOTYxLDE1LjgzOCBDMjAuMjMzLDE1LjgzOCAyMC4zMzcsMTUuNzMgMjAuMzk0LDE1LjQ5NCBDMjAuNDQ5LDE1LjI2OSAyMS42MTksMTAuNjY3IDIxLjYxOSwxMC42NjcgQzIxLjkyOCw5LjQ0MyAyMi42OTIsOC42MzIgMjMuNzY4LDguNjMyIEMyNC4yNzksOC42MzIgMjQuNzIsOC45NjcgMjQuNjY5LDkuNjE4IEMyNC42MTIsMTAuMzMzIDIzLjc0MSwxMi45MDMgMjMuNzQxLDE0LjAzMSBDMjMuNzQxLDE0Ljg4NCAyNC4wNiwxNS45NDUgMjUuNjgzLDE1Ljk0NSBDMjYuNzg5LDE1Ljk0NSAyNy42MDMsMTUuNDY0IDI4LjE5NSwxNC43ODYgTDI3LjQ4OSwxMy45NDEgQzI3LjMxMSwxNC4wOTQgMjcuMTE0LDE0LjE4OSAyNi44OTYsMTQuMTg5IFogTTQxLjcwMSw2Ljg3MyBMNDAuMTM0LDYuODczIEM0MC4xMzQsNi44NzMgNDAuODU2LDQuMTA5IDQwLjg3Myw0LjAzNSBDNDAuOTQyLDMuNzQ1IDQwLjY5OCwzLjU3OCA0MC40NDEsMy42MzEgQzQwLjQ0MSwzLjYzMSAzOS4yMywzLjg2NiAzOS4wMDUsMy45MTMgQzM4Ljc3OSwzLjk1OCAzOC42MDQsNC4wODEgMzguNTIyLDQuNDAzIEMzOC41MTIsNC40NDUgMzcuODgsNi44NzMgMzcuODgsNi44NzMgTDM2LjYyMiw2Ljg3MyBDMzYuMzg1LDYuODczIDM2LjI0NSw2Ljk2OCAzNi4xOTIsNy4xODggQzM2LjExNSw3LjUwNCAzNS45NzUsOC4xNDUgMzUuOTM2LDguMjk3IEMzNS44ODUsOC40OTQgMzYsOC42NDQgMzYuMjIyLDguNjQ0IEwzNy40NTcsOC42NDQgQzM3LjQ0OCw4LjY3NyAzNy4wNjQsMTAuMTI1IDM2LjcyNSwxMS41MjEgTDM2LjcyNCwxMS41MTYgQzM2LjcyLDExLjUzMiAzNi43MTYsMTEuNTQ2IDM2LjcxMiwxMS41NjIgTDM2LjcxMiwxMS41NTYgQzM2LjcxMiwxMS41NTYgMzYuNzA4LDExLjU3MSAzNi43MDIsMTEuNTk4IEMzNi4zMjQsMTIuOTY4IDM1LjExOCwxNC4yMDkgMzQuMjAxLDE0LjIwOSBDMzMuNzIxLDE0LjIwOSAzMy41MDYsMTMuOTA5IDMzLjUwNiwxMy40MDIgQzMzLjUwNiwxMi45NjMgMzMuNzkyLDExLjg4IDM0LjEzNCwxMC41MzcgQzM0LjU0OSw4LjkwMSAzNC45MTUsNy41NTUgMzQuOTU1LDcuMzk3IEMzNS4wMDYsNy4xOTYgMzQuOTE1LDcuMDIgMzQuNjUyLDcuMDIgTDMzLjEyMiw3LjAyIEMzMi44NDUsNy4wMiAzMi43NDYsNy4xNjQgMzIuNjg3LDcuMzY0IEMzMi42ODcsNy4zNjQgMzIuMjU3LDguOTggMzEuOCwxMC43NzggQzMxLjQ2OSwxMi4wODMgMzEuMTAzLDEzLjQxMiAzMS4xMDMsMTQuMDM3IEMzMS4xMDMsMTUuMTUxIDMxLjYwOSwxNS45NDggMzIuOTk3LDE1Ljk0OCBDMzQuMDcsMTUuOTQ4IDM1LjEzNiwxNS40NTMgMzUuNzgzLDE0Ljc2NyBDMzUuNzgzLDE0Ljc2NyAzNi4wMTEsMTQuNTIxIDM2LjIzLDE0LjIyOSBDMzYuMjQxLDE0LjU4MSAzNi4zMjQsMTQuODM3IDM2LjQxMSwxNS4wMTggQzM2LjQ1OCwxNS4xMTkgMzYuNTE1LDE1LjIxNSAzNi41ODEsMTUuMzAzIEMzNi41ODIsMTUuMzA0IDM2LjU4MywxNS4zMDYgMzYuNTg1LDE1LjMwOCBMMzYuNTg1LDE1LjMwOCBDMzYuODkxLDE1LjcxMyAzNy4zOTgsMTUuOTYyIDM4LjE1MSwxNS45NjIgQzM5Ljg5NCwxNS45NjIgNDAuOTQ0LDE0LjkzOCA0MS41NjIsMTMuOTA5IEw0MC43MDQsMTMuMjM5IEM0MC4zMzMsMTMuNzc0IDM5LjgzOSwxNC4xNzUgMzkuMzI0LDE0LjE3NSBDMzguODQ2LDE0LjE3NSAzOC41NzksMTMuODc4IDM4LjU3OSwxMy4zNzIgQzM4LjU3OSwxMi45MzUgMzguODg5LDExLjg2OCAzOS4yMjksMTAuNTMgQzM5LjM0NCwxMC4wODMgMzkuNTE2LDkuNDAxIDM5LjcwOCw4LjY0NCBMNDEuMzAyLDguNjQ0IEM0MS41MzksOC42NDQgNDEuNjc4LDguNTQ5IDQxLjczMiw4LjMyOSBDNDEuODA4LDguMDEyIDQxLjk0OCw3LjM3MiA0MS45ODgsNy4yMjEgQzQyLjAzOSw3LjAyMyA0MS45MjMsNi44NzMgNDEuNzAxLDYuODczIFogTTM0LjEyNiw2LjM0OCBDMzQuOTA1LDYuMzQ4IDM1LjY1Myw1LjcwNiAzNS43ODMsNC45MTIgQzM1LjkzNyw0LjE0MSAzNS40MDksMy40OTggMzQuNjMsMy40OTggQzMzLjg1MSwzLjQ5OCAzMy4xMDMsNC4xNDEgMzIuOTcxLDQuOTEyIEMzMi44MTksNS43MDYgMzMuMzI2LDYuMzQ4IDM0LjEyNiw2LjM0OCBaIiBmaWxsPSIjZmZmIj48L3BhdGg+PC9nPjwvc3ZnPg==);
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_red.PIN_1624437643899_ja { 
  background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGhlaWdodD0iMThweCIgd2lkdGg9IjQxcHgiIHZpZXdCb3g9IjAgMCA0MSAxOCI+PGc+PHBhdGggZD0iTTE5LjgyMiw3LjE3MyBDMTkuODIyLDYuNTEgMTkuODM1LDYuMjc2IDE5Ljg4Nyw1Ljk2NCBMMTguMTQ1LDUuOTY0IEMxOC4xOTcsNi4yODkgMTguMTk3LDYuNDk3IDE4LjE5Nyw3LjE2IEwxOC4yMSwxMy4xOTIgQzE4LjIxLDEzLjk0NiAxOC4yMjMsMTQuMTY3IDE4LjI0OSwxNC4zODggQzE4LjMyNywxNS4wMjUgMTguNTIyLDE1LjQ0MSAxOC44ODYsMTUuNzE0IEMxOS4zOTMsMTYuMTA0IDIwLjI5LDE2LjI3MyAyMS45MjgsMTYuMjczIEMyMi43MjEsMTYuMjczIDI0LjM1OSwxNi4xOTUgMjUuMTI2LDE2LjExNyBDMjYuNTA0LDE1Ljk4NyAyNi41NjksMTUuOTc0IDI2Ljg0MiwxNS45NzQgTDI2Ljc2NCwxNC4yNDUgQzI2LjE5MiwxNC40MTQgMjUuOTA2LDE0LjQ3OSAyNS4yODIsMTQuNTU3IEMyNC4zMzMsMTQuNjg3IDIzLjEzNywxNC43NjUgMjIuMjY2LDE0Ljc2NSBDMjEuMDA1LDE0Ljc2NSAyMC4yNjQsMTQuNjQ4IDIwLjA0MywxNC40MjcgQzE5Ljg2MSwxNC4yNDUgMTkuODA5LDEzLjk1OSAxOS44MDksMTMuMjMxIEMxOS44MDksMTMuMTc5IDE5LjgwOSwxMy4xMDEgMTkuODIyLDEzLjAyMyBMMTkuODIyLDExLjMwNyBDMjEuOTkzLDEwLjkwNCAyNC4wMDgsMTAuMjI4IDI1LjkzMiw5LjI0IEwyNi4yNyw5LjA3MSBDMjYuMzc0LDkuMDE5IDI2LjQsOS4wMDYgMjYuNTQzLDguOTU0IEwyNS41MDMsNy40ODUgQzI0LjY1OCw4LjI3OCAyMS43ODUsOS40MzUgMTkuODIyLDkuNzk5IEwxOS44MjIsNy4xNzMgWiBNMjcuMzEsNC44NzIgQzI2LjQ5MSw0Ljg3MiAyNS44MTUsNS41NDggMjUuODE1LDYuMzY3IEMyNS44MTUsNy4xOTkgMjYuNDkxLDcuODc1IDI3LjMxLDcuODc1IEMyOC4xNDIsNy44NzUgMjguODE4LDcuMTk5IDI4LjgxOCw2LjM2NyBDMjguODE4LDUuNTQ4IDI4LjE0Miw0Ljg3MiAyNy4zMSw0Ljg3MiBMMjcuMzEsNC44NzIgWiBNMjcuMzEsNS41MjIgQzI3Ljc5MSw1LjUyMiAyOC4xNjgsNS44OTkgMjguMTY4LDYuMzY3IEMyOC4xNjgsNi44MzUgMjcuNzkxLDcuMjI1IDI3LjMxLDcuMjI1IEMyNi44NDIsNy4yMjUgMjYuNDY1LDYuODM1IDI2LjQ2NSw2LjM2NyBDMjYuNDY1LDUuODk5IDI2Ljg0Miw1LjUyMiAyNy4zMSw1LjUyMiBMMjcuMzEsNS41MjIgWiBNMzAuNTg2LDcuNjU0IEMzMS43OTUsOC4zMyAzMi44NjEsOS4xODggMzMuOTAxLDEwLjI5MyBMMzUuMDE5LDguODc2IEMzNC4wMTgsNy45MjcgMzMuMjEyLDcuMzI5IDMxLjY2NSw2LjM2NyBMMzAuNTg2LDcuNjU0IFogTTMxLjA0MSwxNi4yMzQgQzMxLjM0LDE2LjEzIDMxLjM3OSwxNi4xMTcgMzEuODk5LDE2LjAxMyBDMzMuOTE0LDE1LjU4NCAzNS41MjYsMTQuOTQ3IDM2Ljg1MiwxNC4wNjMgQzM4LjYzMywxMi44OCAzOS44NjgsMTEuMzQ2IDQwLjk3Myw4Ljk2NyBDNDAuMzEsOC40OTkgNDAuMTAyLDguMzA0IDM5LjU5NSw3LjY5MyBDMzkuMjA1LDguNzQ2IDM4Ljg0MSw5LjQ2MSAzOC4yNjksMTAuMjkzIEMzNy4yNDIsMTEuNzc1IDM2LjAzMywxMi43NzYgMzQuNDA4LDEzLjQ3OCBDMzMuMjI1LDEzLjk5OCAzMS42NzgsMTQuMzc1IDMwLjU2LDE0LjQ0IEwzMS4wNDEsMTYuMjM0IFogTTcuNDU4LDAgQzIuNSwwIDAsMy41MjIgMCw2LjQ1OSBDMCw4LjIzNyAwLjY4LDkuODE5IDIuMTM3LDEwLjQwOSBDMi4zNzYsMTAuNTA1IDIuNTksMTAuNDEyIDIuNjYsMTAuMTUgQzIuNzA4LDkuOTY5IDIuODIyLDkuNTExIDIuODczLDkuMzIgQzIuOTQzLDkuMDYxIDIuOTE2LDguOTcgMi43MjMsOC43NDQgQzIuMzAyLDguMjUzIDIuMDM0LDcuNjE3IDIuMDM0LDYuNzE2IEMyLjAzNCw0LjEwNCA0LjAwNywxLjc2NSA3LjE3MiwxLjc2NSBDOS45NzUsMS43NjUgMTEuNTE0LDMuNDYxIDExLjUxNCw1LjcyNiBDMTEuNTE0LDguNzA4IDEwLjE4MywxMS4xOCA4LjIwNiwxMS4xOCBDNy4xMTQsMTEuMTggNi4yOTcsMTAuMzI5IDYuNTU5LDkuMjMzIEM2Ljg3Miw3LjkyMiA3LjQ4LDYuNTA5IDcuNDgsNS41NjQgQzcuNDgsNC43MTcgNy4wMjIsNC4wMTEgNi4wNzIsNC4wMTEgQzQuOTU2LDQuMDExIDQuMDYsNS4xNTUgNC4wNiw2LjY4NyBDNC4wNiw3LjY2MyA0LjM5Myw4LjMyMyA0LjM5Myw4LjMyMyBDNC4zOTMsOC4zMjMgMy4yNTEsMTMuMTE3IDMuMDUxLDEzLjk1NyBDMi42NTIsMTUuNjI5IDIuOTkxLDE3LjY3OSAzLjAxOSwxNy44ODYgQzMuMDM2LDE4LjAwOSAzLjE5NSwxOC4wMzggMy4yNjcsMTcuOTQ2IEMzLjM3LDE3LjgxMiA0LjcsMTYuMTg3IDUuMTUxLDE0LjU2MiBDNS4yNzksMTQuMTAyIDUuODg1LDExLjcyIDUuODg1LDExLjcyIEM2LjI0OCwxMi40MDYgNy4zMDgsMTMuMDA5IDguNDM1LDEzLjAwOSBDMTEuNzksMTMuMDA5IDE0LjA2Niw5Ljk3OSAxNC4wNjYsNS45MjMgQzE0LjA2NiwyLjg1NyAxMS40NDQsMCA3LjQ1OCwwIFoiIGZpbGw9IiNmZmYiPjwvcGF0aD48L2c+PC9zdmc+);
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_white { 
  background-color: #fff;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_save { 
  border-radius: 2px;
  text-indent: 20px;
  width: auto;
  padding: 0 4px 0 0;
  text-align: center;
  text-decoration: none;
  font: 11px/20px "Helvetica Neue", Helvetica, sans-serif;
  font-weight: bold;
  color: #fff!important;
  background: #e60023 url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGhlaWdodD0iMzBweCIgd2lkdGg9IjMwcHgiIHZpZXdCb3g9Ii0xIC0xIDMxIDMxIj48Zz48cGF0aCBkPSJNMjkuNDQ5LDE0LjY2MiBDMjkuNDQ5LDIyLjcyMiAyMi44NjgsMjkuMjU2IDE0Ljc1LDI5LjI1NiBDNi42MzIsMjkuMjU2IDAuMDUxLDIyLjcyMiAwLjA1MSwxNC42NjIgQzAuMDUxLDYuNjAxIDYuNjMyLDAuMDY3IDE0Ljc1LDAuMDY3IEMyMi44NjgsMC4wNjcgMjkuNDQ5LDYuNjAxIDI5LjQ0OSwxNC42NjIiIGZpbGw9IiNmZmYiIHN0cm9rZT0iI2ZmZiIgc3Ryb2tlLXdpZHRoPSIxIj48L3BhdGg+PHBhdGggZD0iTTE0LjczMywxLjY4NiBDNy41MTYsMS42ODYgMS42NjUsNy40OTUgMS42NjUsMTQuNjYyIEMxLjY2NSwyMC4xNTkgNS4xMDksMjQuODU0IDkuOTcsMjYuNzQ0IEM5Ljg1NiwyNS43MTggOS43NTMsMjQuMTQzIDEwLjAxNiwyMy4wMjIgQzEwLjI1MywyMi4wMSAxMS41NDgsMTYuNTcyIDExLjU0OCwxNi41NzIgQzExLjU0OCwxNi41NzIgMTEuMTU3LDE1Ljc5NSAxMS4xNTcsMTQuNjQ2IEMxMS4xNTcsMTIuODQyIDEyLjIxMSwxMS40OTUgMTMuNTIyLDExLjQ5NSBDMTQuNjM3LDExLjQ5NSAxNS4xNzUsMTIuMzI2IDE1LjE3NSwxMy4zMjMgQzE1LjE3NSwxNC40MzYgMTQuNDYyLDE2LjEgMTQuMDkzLDE3LjY0MyBDMTMuNzg1LDE4LjkzNSAxNC43NDUsMTkuOTg4IDE2LjAyOCwxOS45ODggQzE4LjM1MSwxOS45ODggMjAuMTM2LDE3LjU1NiAyMC4xMzYsMTQuMDQ2IEMyMC4xMzYsMTAuOTM5IDE3Ljg4OCw4Ljc2NyAxNC42NzgsOC43NjcgQzEwLjk1OSw4Ljc2NyA4Ljc3NywxMS41MzYgOC43NzcsMTQuMzk4IEM4Ljc3NywxNS41MTMgOS4yMSwxNi43MDkgOS43NDksMTcuMzU5IEM5Ljg1NiwxNy40ODggOS44NzIsMTcuNiA5Ljg0LDE3LjczMSBDOS43NDEsMTguMTQxIDkuNTIsMTkuMDIzIDkuNDc3LDE5LjIwMyBDOS40MiwxOS40NCA5LjI4OCwxOS40OTEgOS4wNCwxOS4zNzYgQzcuNDA4LDE4LjYyMiA2LjM4NywxNi4yNTIgNi4zODcsMTQuMzQ5IEM2LjM4NywxMC4yNTYgOS4zODMsNi40OTcgMTUuMDIyLDYuNDk3IEMxOS41NTUsNi40OTcgMjMuMDc4LDkuNzA1IDIzLjA3OCwxMy45OTEgQzIzLjA3OCwxOC40NjMgMjAuMjM5LDIyLjA2MiAxNi4yOTcsMjIuMDYyIEMxNC45NzMsMjIuMDYyIDEzLjcyOCwyMS4zNzkgMTMuMzAyLDIwLjU3MiBDMTMuMzAyLDIwLjU3MiAxMi42NDcsMjMuMDUgMTIuNDg4LDIzLjY1NyBDMTIuMTkzLDI0Ljc4NCAxMS4zOTYsMjYuMTk2IDEwLjg2MywyNy4wNTggQzEyLjA4NiwyNy40MzQgMTMuMzg2LDI3LjYzNyAxNC43MzMsMjcuNjM3IEMyMS45NSwyNy42MzcgMjcuODAxLDIxLjgyOCAyNy44MDEsMTQuNjYyIEMyNy44MDEsNy40OTUgMjEuOTUsMS42ODYgMTQuNzMzLDEuNjg2IiBmaWxsPSIjZTYwMDIzIj48L3BhdGg+PC9nPjwvc3ZnPg==) 3px 50% no-repeat;
  background-size: 14px 14px;
  -webkit-font-smoothing: antialiased;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_save:hover { 
  background-color: #e60023;
  box-shadow: none;
  color: #fff!important;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_save .PIN_1624437643899_count { 
  text-indent: 0;
  position: absolute;
  color: #555;
  background: #efefef;
  border-radius: 2px;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_save .PIN_1624437643899_count::before { 
  content: "";
  position: absolute;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_save.PIN_1624437643899_beside .PIN_1624437643899_count { 
  right: -46px;
  height: 20px;
  width: 40px;
  font-size: 10px;
  line-height: 20px;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_save.PIN_1624437643899_beside .PIN_1624437643899_count::before { 
  top: 3px;
  left: -4px;
  border-right: 7px solid #efefef;
  border-top: 7px solid transparent;
  border-bottom: 7px solid transparent;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_save.PIN_1624437643899_above .PIN_1624437643899_count { 
  top: -36px;
  width: 100%;
  height: 30px;
  font-size: 10px;
  line-height: 30px;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_save.PIN_1624437643899_above .PIN_1624437643899_count::before { 
  bottom: -4px;
  left: 4px;
  border-top: 7px solid #efefef;
  border-right: 7px solid transparent;
  border-left: 7px solid transparent;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_save.PIN_1624437643899_above.PIN_1624437643899_padded { 
  margin-top: 28px;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_tall { 
  height: 28px;
  width: 56px;
  border-radius: 3px;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_tall.PIN_1624437643899_above .PIN_1624437643899_count { 
  position: absolute;
  height: 37px;
  width: inherit;
  top: -37px;
  left: 0;
  line-height: 30px;
  font-size: 14px;
  background: transparent url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGhlaWdodD0iNzZweCIgd2lkdGg9IjExNHB4IiB2aWV3Qm94PSIwIDAgMTE0IDc2Ij48Zz48cGF0aCBkPSJNOSAxQzQuNiAxIDEgNC42IDEgOXY0M2MwIDQuMyAzLjYgOCA4IDhoMjZsMTggMTVoNy41bDE2LTE1SDEwNWM0LjQgMCA4LTMuNyA4LThWOWMwLTQuNC0zLjYtOC04LThIOXoiIGZpbGw9IiNmZmYiIHN0cm9rZT0iI2I1YjViNSIgc3Ryb2tlLXdpZHRoPSIyIj48L3BhdGg+PC9nPjwvc3ZnPg==);
  background-size: cover;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_tall.PIN_1624437643899_above.PIN_1624437643899_padded { 
  margin-top: 37px;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_tall.PIN_1624437643899_beside .PIN_1624437643899_count { 
  text-indent: 5px;
  position: absolute;
  right: -63px;
  height: inherit;
  width: 63px;
  font-size: 14px;
  line-height: 28px;
  background: transparent url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGhlaWdodD0iNTZweCIgd2lkdGg9IjEyNnB4IiB2aWV3Qm94PSIyIDAgMTMwIDYwIj48Zz48cGF0aCBkPSJNMTE5LjYgMmM0LjUgMCA4IDMuNiA4IDh2NDBjMCA0LjQtMy41IDgtOCA4SDIzLjNMMS42IDMyLjR2LTQuNkwyMy4zIDJoOTYuM3oiIGZpbGw9IiNmZmYiIHN0cm9rZT0iI2I1YjViNSIgc3Ryb2tlLXdpZHRoPSIyIj48L3BhdGg+PC9nPjwvc3ZnPg==);
  background-size: cover;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_tall.PIN_1624437643899_beside.PIN_1624437643899_padded { 
  margin-right: 63px;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_tall.PIN_1624437643899_save { 
  border-radius: 4px;
  width: auto;
  background-position-x: 6px;
  background-size: 18px 18px;
  text-indent: 29px;
  font: 14px/28px "Helvetica Neue", Helvetica, Arial, "sans-serif";
  font-weight: bold;
  padding: 0 6px 0 0;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_tall.PIN_1624437643899_save .PIN_1624437643899_count { 
  position: absolute;
  color: #555;
  font-size: 12px;
  text-indent: 0;
  background: #efefef;
  border-radius: 4px;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_tall.PIN_1624437643899_save .PIN_1624437643899_count::before { 
  content: "";
  position: absolute;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_tall.PIN_1624437643899_save.PIN_1624437643899_above .PIN_1624437643899_count { 
  font-size: 14px;
  top: -50px;
  width: 100%;
  height: 44px;
  line-height: 44px;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_tall.PIN_1624437643899_save.PIN_1624437643899_above .PIN_1624437643899_count::before { 
  bottom: -4px;
  left: 7px;
  border-top: 7px solid #efefef;
  border-right: 7px solid transparent;
  border-left: 7px solid transparent;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_tall.PIN_1624437643899_save.PIN_1624437643899_beside .PIN_1624437643899_count { 
  font-size: 14px;
  right: -63px;
  width: 56px;
  height: 28px;
  line-height: 28px;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_tall.PIN_1624437643899_save.PIN_1624437643899_beside .PIN_1624437643899_count::before { 
  top: 7px;
  left: -4px;
  border-right: 7px solid #efefef;
  border-top: 7px solid transparent;
  border-bottom: 7px solid transparent;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_round { 
  height: 16px;
  width: 16px;
  background: transparent url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGhlaWdodD0iMzBweCIgd2lkdGg9IjMwcHgiIHZpZXdCb3g9Ii0xIC0xIDMxIDMxIj48Zz48cGF0aCBkPSJNMjkuNDQ5LDE0LjY2MiBDMjkuNDQ5LDIyLjcyMiAyMi44NjgsMjkuMjU2IDE0Ljc1LDI5LjI1NiBDNi42MzIsMjkuMjU2IDAuMDUxLDIyLjcyMiAwLjA1MSwxNC42NjIgQzAuMDUxLDYuNjAxIDYuNjMyLDAuMDY3IDE0Ljc1LDAuMDY3IEMyMi44NjgsMC4wNjcgMjkuNDQ5LDYuNjAxIDI5LjQ0OSwxNC42NjIiIGZpbGw9IiNmZmYiIHN0cm9rZT0iI2ZmZiIgc3Ryb2tlLXdpZHRoPSIxIj48L3BhdGg+PHBhdGggZD0iTTE0LjczMywxLjY4NiBDNy41MTYsMS42ODYgMS42NjUsNy40OTUgMS42NjUsMTQuNjYyIEMxLjY2NSwyMC4xNTkgNS4xMDksMjQuODU0IDkuOTcsMjYuNzQ0IEM5Ljg1NiwyNS43MTggOS43NTMsMjQuMTQzIDEwLjAxNiwyMy4wMjIgQzEwLjI1MywyMi4wMSAxMS41NDgsMTYuNTcyIDExLjU0OCwxNi41NzIgQzExLjU0OCwxNi41NzIgMTEuMTU3LDE1Ljc5NSAxMS4xNTcsMTQuNjQ2IEMxMS4xNTcsMTIuODQyIDEyLjIxMSwxMS40OTUgMTMuNTIyLDExLjQ5NSBDMTQuNjM3LDExLjQ5NSAxNS4xNzUsMTIuMzI2IDE1LjE3NSwxMy4zMjMgQzE1LjE3NSwxNC40MzYgMTQuNDYyLDE2LjEgMTQuMDkzLDE3LjY0MyBDMTMuNzg1LDE4LjkzNSAxNC43NDUsMTkuOTg4IDE2LjAyOCwxOS45ODggQzE4LjM1MSwxOS45ODggMjAuMTM2LDE3LjU1NiAyMC4xMzYsMTQuMDQ2IEMyMC4xMzYsMTAuOTM5IDE3Ljg4OCw4Ljc2NyAxNC42NzgsOC43NjcgQzEwLjk1OSw4Ljc2NyA4Ljc3NywxMS41MzYgOC43NzcsMTQuMzk4IEM4Ljc3NywxNS41MTMgOS4yMSwxNi43MDkgOS43NDksMTcuMzU5IEM5Ljg1NiwxNy40ODggOS44NzIsMTcuNiA5Ljg0LDE3LjczMSBDOS43NDEsMTguMTQxIDkuNTIsMTkuMDIzIDkuNDc3LDE5LjIwMyBDOS40MiwxOS40NCA5LjI4OCwxOS40OTEgOS4wNCwxOS4zNzYgQzcuNDA4LDE4LjYyMiA2LjM4NywxNi4yNTIgNi4zODcsMTQuMzQ5IEM2LjM4NywxMC4yNTYgOS4zODMsNi40OTcgMTUuMDIyLDYuNDk3IEMxOS41NTUsNi40OTcgMjMuMDc4LDkuNzA1IDIzLjA3OCwxMy45OTEgQzIzLjA3OCwxOC40NjMgMjAuMjM5LDIyLjA2MiAxNi4yOTcsMjIuMDYyIEMxNC45NzMsMjIuMDYyIDEzLjcyOCwyMS4zNzkgMTMuMzAyLDIwLjU3MiBDMTMuMzAyLDIwLjU3MiAxMi42NDcsMjMuMDUgMTIuNDg4LDIzLjY1NyBDMTIuMTkzLDI0Ljc4NCAxMS4zOTYsMjYuMTk2IDEwLjg2MywyNy4wNTggQzEyLjA4NiwyNy40MzQgMTMuMzg2LDI3LjYzNyAxNC43MzMsMjcuNjM3IEMyMS45NSwyNy42MzcgMjcuODAxLDIxLjgyOCAyNy44MDEsMTQuNjYyIEMyNy44MDEsNy40OTUgMjEuOTUsMS42ODYgMTQuNzMzLDEuNjg2IiBmaWxsPSIjZTYwMDIzIj48L3BhdGg+PC9nPjwvc3ZnPg==) 0 0 no-repeat;
  background-size: 16px 16px;
  box-shadow: none;
}
 .PIN_1624437643899_button_pin.PIN_1624437643899_round.PIN_1624437643899_tall { 
  height: 32px;
  width: 32px;
  background-size: 32px 32px;
}
</style></head>
<body class="js-focus-visible" data-pin-hover="true">
  

  
  <script>
    window.__INITIAL_STATE__ = {"appSettings":{"style":{"unstructuredFonts":{},"googleFontsCssUrl":"\u002F\u002Ffonts.googleapis.com\u002Fcss?family=Raleway:n,b,i,bi|&subset=hebrew,arabic,latin","booleans":{"widget-isLoginButtonEnabled":false},"colors":{"header-notificationBubbleColor":{"themeName":"color-15","value":"rgb(25,25,25)"},"post-appBackgroundColor":{"themeName":"color-1","value":"rgb(255,255,255)"},"header-textColor":{"themeName":"color-5","value":"rgb(0,0,0)"},"category-textColor-598964cffc2f7b001024f16d":{"value":"rgb(255,255,255)"},"forum-overlayColor-b09ed3df-92f8-4182-bc8f-e1fa956e7624":{"value":"rgba(65,65,65,0)"},"post-textColor":{"themeName":"color-5","value":"rgb(0,0,0)"},"icon-secondaryColor":{"themeName":"color-15","value":"rgb(25,25,25)"},"category-overlayColor-598964cffc2f7b001024f170":{"value":"rgba(44,44,43,0.3)"},"category-overlayColor-598964cffc2f7b001024f16f":{"value":"rgba(0,0,0,0.25)"},"post-cardBorderColor":{"themeName":"color-5","value":"rgba(0,0,0,0.25)"},"category-textColor-5be3f175c9183600620b9465":{"value":"rgb(255,255,255)"},"category-backgroundColor-598964cffc2f7b001024f16e":{"value":"rgb(127,204,247)"},"category-overlayColor-5be3f175c9183600620b9465":{"value":"rgba(0,0,0,0.25)"},"category-textColor-598964cffc2f7b001024f16e":{"value":"rgb(255,255,255)"},"header-backgroundColor":{"themeName":"color-1","value":"rgb(255,255,255)"},"button-primaryTextColor":{"themeName":"color-1","value":"rgb(255,255,255)"},"forum-backgroundColor-2b2ad150-cebf-47ae-ac10-c4261222fb07":{"value":"rgba(127,204,247,0)"},"category-backgroundColor-598964cffc2f7b001024f16d":{"value":"rgb(127,204,247)"},"button-linksHashtags":{"themeName":"color-8","value":"rgb(25,54,105)"},"button-color":{"themeName":"color-8","value":"rgb(25,54,105)"},"forum-overlayColor-2b2ad150-cebf-47ae-ac10-c4261222fb07":{"value":"rgba(65,65,65,0)"},"category-backgroundColor-5bf139940be09501f1dc7f2a":{"value":"rgb(127,204,247)"},"category-overlayColor-598964cffc2f7b001024f16e":{"value":"rgba(44,44,43,0.3)"},"category-textColor-598964cffc2f7b001024f170":{"value":"rgb(255,255,255)"},"category-backgroundColor-5be3f175c9183600620b9465":{"value":"rgb(127,204,247)"},"category-textColor-598964cffc2f7b001024f16f":{"value":"rgb(255,255,255)"},"category-backgroundColor-598964cffc2f7b001024f16f":{"value":"rgb(127,204,247)"},"forum-backgroundColor-b09ed3df-92f8-4182-bc8f-e1fa956e7624":{"value":"rgba(127,204,247,0)"},"category-textColor-5bf139940be09501f1dc7f2a":{"themeName":"color-1","value":"rgb(255,255,255)"},"forum-textColor-2b2ad150-cebf-47ae-ac10-c4261222fb07":{"value":"rgb(65,65,65)"},"category-overlayColor-598964cffc2f7b001024f16d":{"value":"rgba(44,44,43,0.3)"},"header-notificationBubbleTextColor":{"themeName":"color-1","value":"rgb(255,255,255)"},"category-overlayColor-5bf139940be09501f1dc7f2a":{"themeName":"color-5","value":"rgba(0,0,0,0.35)"},"forum-textColor-b09ed3df-92f8-4182-bc8f-e1fa956e7624":{"value":"rgb(65,65,65)"},"post-cardBackgroundColor":{"themeName":"color-1","value":"rgb(255,255,255)"},"category-backgroundColor-598964cffc2f7b001024f170":{"value":"rgb(127,204,247)"},"button-secondaryTextColor":{"themeName":"color-8","value":"rgb(25,54,105)"}},"numbers":{"layout-headerHeight":300,"layout-type":1,"layout-mainPage-type":0},"fonts":{"post-contentFontMedium":{"displayName":"Paragraph 2","family":"proxima-n-w01-reg","fontStyleParam":true,"preset":"Custom","size":14,"style":{"bold":false,"italic":false,"underline":false},"value":"font:500 14px\u002F17px proxima-n-w01-reg,sans-serif;"},"post-titleFontSmall":{"displayName":"Paragraph 2","family":"proxima-n-w01-reg","fontStyleParam":true,"preset":"Custom","size":16,"style":{"bold":false,"italic":false,"underline":false},"value":"font:500 16px\u002F20px proxima-n-w01-reg,sans-serif;"},"post-titleFontLarge":{"displayName":"Paragraph 2","family":"proxima-n-w01-reg","fontStyleParam":true,"preset":"Custom","size":20,"style":{"bold":false,"italic":false,"underline":false},"value":"font:500 20px\u002F25px proxima-n-w01-reg,sans-serif;"},"header-descriptionFont":{"family":"proxima-n-w01-reg","fontStyleParam":true,"preset":"Custom","size":20,"style":{"bold":false,"italic":false,"underline":false},"value":"font:500 20px\u002F25px proxima-n-w01-reg,sans-serif;"},"header-font":{"displayName":"Paragraph 2","family":"proxima-n-w01-reg","fontStyleParam":true,"preset":"Custom","size":14,"style":{"bold":false,"italic":false,"underline":false},"value":"font:500 14px\u002F17px proxima-n-w01-reg,sans-serif;"},"post-contentFontCompact":{"displayName":"Paragraph 2","family":"proxima-n-w01-reg","fontStyleParam":true,"preset":"Custom","size":12,"style":{"bold":false,"italic":false,"underline":false},"value":"font:500 12px\u002F15px proxima-n-w01-reg,sans-serif;"},"header-titleFont":{"displayName":"Heading 5","family":"avenir-lt-w01_85-heavy1475544","fontStyleParam":true,"preset":"Heading-M","size":50,"style":{"bold":false,"italic":false,"underline":false},"value":"font:500 50px\u002F1.34em 'Noto Sanse KR',sans-serif;"},"post-contentFontLarge":{"displayName":"Paragraph 2","family":"proxima-n-w01-reg","fontStyleParam":true,"preset":"Custom","size":16,"style":{"bold":false,"italic":false,"underline":false},"value":"font:500 16px\u002F20px proxima-n-w01-reg,sans-serif;"},"post-titleFontMedium":{"displayName":"Paragraph 2","family":"proxima-n-w01-reg","fontStyleParam":true,"preset":"Custom","size":16,"style":{"bold":false,"italic":false,"underline":false},"value":"font:500 16px\u002F20px proxima-n-w01-reg,sans-serif;"},"post-titleFontClassic":{"displayName":"Paragraph 2","family":"proxima-n-w01-reg","fontStyleParam":true,"preset":"Custom","size":16,"style":{"bold":false,"italic":false,"underline":false},"value":"font:500 16px\u002F20px proxima-n-w01-reg,sans-serif;"},"post-contentFontSmall":{"displayName":"Paragraph 2","family":"proxima-n-w01-reg","fontStyleParam":true,"preset":"Custom","size":14,"style":{"bold":false,"italic":false,"underline":false},"value":"font:500 14px\u002F17px proxima-n-w01-reg,sans-serif;"},"post-contentFontClassic":{"displayName":"Paragraph 2","family":"proxima-n-w01-reg","fontStyleParam":true,"preset":"Custom","size":14,"style":{"bold":false,"italic":false,"underline":false},"value":"font:500 14px\u002F17px proxima-n-w01-reg,sans-serif;"},"post-titleFontCompact":{"displayName":"Paragraph 2","family":"proxima-n-w01-reg","fontStyleParam":true,"preset":"Custom","size":14,"style":{"bold":false,"italic":false,"underline":false},"value":"font:500 14px\u002F17px proxima-n-w01-reg,sans-serif;"}}},"colorPresets":[{"name":"color_1","value":"#000000","reference":"white\u002Fblack"},{"name":"color_2","value":"#193669","reference":"black\u002Fwhite"},{"name":"color_3","value":"#191919","reference":"primery-1"},{"name":"color_4","value":"#F7F7F7","reference":"primery-2"},{"name":"color_5","value":"#26529C","reference":"primery-3"},{"name":"color_11","value":"#FFFFFF","reference":"color-1"},{"name":"color_12","value":"#bfbfbf","reference":"color-2"},{"name":"color_13","value":"#808080","reference":"color-3"},{"name":"color_14","value":"#404040","reference":"color-4"},{"name":"color_15","value":"#000000","reference":"color-5"},{"name":"color_16","value":"#99b5e7","reference":"color-6"},{"name":"color_17","value":"#326bce","reference":"color-7"},{"name":"color_18","value":"#193669","reference":"color-8"},{"name":"color_19","value":"#112446","reference":"color-9"},{"name":"color_20","value":"#081223","reference":"color-10"},{"name":"color_21","value":"#d1d1d1","reference":"color-11"},{"name":"color_22","value":"#a3a3a3","reference":"color-12"},{"name":"color_23","value":"#757575","reference":"color-13"},{"name":"color_24","value":"#474747","reference":"color-14"},{"name":"color_25","value":"#191919","reference":"color-15"},{"name":"color_26","value":"#fbfbfb","reference":"color-16"},{"name":"color_27","value":"#F7F7F7","reference":"color-17"},{"name":"color_28","value":"#b9b9b9","reference":"color-18"},{"name":"color_29","value":"#7c7c7c","reference":"color-19"},{"name":"color_30","value":"#3e3e3e","reference":"color-20"},{"name":"color_31","value":"#80a4e0","reference":"color-21"},{"name":"color_32","value":"#26529C","reference":"color-22"},{"name":"color_33","value":"#1c3d75","reference":"color-23"},{"name":"color_34","value":"#13294e","reference":"color-24"},{"name":"color_35","value":"#0a1427","reference":"color-25"}],"textPresets":{"Body-XS":{"editorKey":"font_10","lineHeight":"1.79em","size":"14px","style":"normal","value":"font:500 14px\u002F1.79em 'Noto Sans KR', sans-serif;","weight":"normal","fontFamily":"raleway"},"Title":{"editorKey":"font_0","lineHeight":"1.41em","size":"22px","style":"normal","value":"font:500 22px\u002F1.41em 'Noto Sans KR', sans-serif;","weight":"normal","fontFamily":"raleway"},"Menu":{"editorKey":"font_1","lineHeight":"1.79em","size":"14px","style":"normal","value":"font:500 14px\u002F1.79em 'Noto Sans KR', sans-serif;","weight":"normal","fontFamily":"raleway"},"Heading-XL":{"editorKey":"font_3","lineHeight":"1.2em","size":"88px","style":"normal","value":"font:500 88px\u002F1.2em 'Noto Sanse KR',sans-serif;","weight":"normal","fontFamily":"avenir-lt-w01_85-heavy1475544"},"Page-title":{"editorKey":"font_2","lineHeight":"1.375em","size":"28px","style":"normal","value":"font:500 28px\u002F1.375em 'Noto Sanse KR',sans-serif;","weight":"normal","fontFamily":"avenir-lt-w01_85-heavy1475544"},"Body-S":{"editorKey":"font_9","lineHeight":"1.875em","size":"15px","style":"normal","value":"font:500 15px\u002F1.875em 'Noto Sans KR', sans-serif;","weight":"normal","fontFamily":"raleway"},"Heading-L":{"editorKey":"font_4","lineHeight":"1.25em","size":"72px","style":"normal","value":"font:500 72px\u002F1.25em 'Noto Sanse KR',sans-serif;","weight":"normal","fontFamily":"avenir-lt-w01_85-heavy1475544"},"Body-L":{"editorKey":"font_7","lineHeight":"1.67em","size":"20px","style":"normal","value":"font:500 20px\u002F1.67em 'Noto Sans KR', sans-serif;","weight":"normal","fontFamily":"raleway"},"Heading-M":{"editorKey":"font_5","lineHeight":"1.34em","size":"50px","style":"normal","value":"font:500 50px\u002F1.34em 'Noto Sanse KR',sans-serif;","weight":"normal","fontFamily":"avenir-lt-w01_85-heavy1475544"},"Heading-S":{"editorKey":"font_6","lineHeight":"1.35em","size":"40px","style":"normal","value":"font:500 40px\u002F1.35em 'Noto Sanse KR',sans-serif;","weight":"normal","fontFamily":"avenir-lt-w01_85-heavy1475544"},"Body-M":{"editorKey":"font_8","lineHeight":"1.75em","size":"18px","style":"normal","value":"font:500 18px\u002F1.75em 'Noto Sans KR', sans-serif;","weight":"normal","fontFamily":"raleway"}},"updatedAt":1624437643070},"auth":{"currentUser":{"name":"userID","siteMemberId":"fd8c5604-905b-46f1-9747-3549a723cb15","isOwner":false,"isBlocked":false,"privacyStatus":"PUBLIC","rolesList":[],"badges":[],"groups":[],"createdDate":new Date("2021-06-23T07:56:43.000Z"),"permissions":{"role":"user"},"slug":"userID","contactId":"fd8c5604-905b-46f1-9747-3549a723cb15"},"currentUserSettings":null,"isAuthenticated":true,"isAuthenticating":false},"communitiesContext":{"14cc59bc-f0b7-15b8-e1c7-89ce41d0e0c9":{"isInstalled":true},"14724f35-6794-cd1a-0244-25fd138f9242":{"isInstalled":true,"instanceId":"a1a30873-9bad-4fe3-a350-bacb7be3c6c8","sectionUrl":"https:\u002F\u002Fjemilykoo.wixsite.com\u002Fwebsite\u002Fforum","metaSiteId":"0858e1c1-becd-479d-b78e-4f96e1892037","siteId":"e209736b-cfdf-43f1-92e3-cd9a14a1dbb9"}},"customRoutes":{},"experiments":{"specs.UouSubscriptionServiceUseApiGatewayClient":"true","specs.membersArea.UseMembersNgApiUpdate":"false","specs.media.MediaManager3":"true","specs.membersArea.NewAppSettingsService":"false","specs.membersArea.CheckUserContributorPermissions":"true","specs.membersArea.HandleMembersNgUpdateDomainEvents":"true","specs.membersArea.ApiGwClientToDetectTemplate":"false","specs.membersfollow.ActivityCounters":"false","specs.membersArea.MembersApiDeleteUseMembersNgApi":"false","specs.wixForum.CreatePostCaptchaBySpammedFlag":"true","specs.membersArea.viewerCustomProfile":"false","specs.wixForum.PreYEFLockIn":"true","specs.membersArea.CustomProfileReduceSpacing":"false","specs.ricos.useQualityPreload":"true","specs.wixForum.RequestThrottlingPerIp":"true","specs.membersArea.NewAppSettingsRead":"false","specs.membersArea.DoNotSyncWithSiteMembers":"false","specs.membersArea.RefreshWidgetsOnSettingsChange":"false","specs.membersArea.setResponsiveLayoutForApps":"false","specs.wixForum.PreYEFLockInEditor":"true","specs.ricos.pastedFilesSupport":"true","specs.wixRicos.OOIRicosViewerEmptyStateGFPP":"true","specs.membersArea.SkipTemplateHandlerForSettings":"false","specs.wixForum.BMMonetizeCategory":"true","specs.membersArea.MemberHandlerUseMembersNgApi":"true","se_santaMembers":"new","specs.membersArea.UseMembersNgApi":"true","specs.membersArea.DoNotCreateTeamMember":"true","specs.wixForum.ForumAppMigrationToApiGw":"false","specs.AddMinHeight":"false","specs.membersArea.SendSsrCaccheInvalidationRequests":"true","specs.membersArea.PlatformUninstallation":"true","specs.ricos.useSrcSet":"false","specs.membersArea.ShowMoreMembersWithBadge":"false","specs.membersArea.UseGroupsToResolveMemberRoles":"true","specs.membersArea.MembersApiUseMembersNgApiQuery":"true","specs.wixForum.MembersNg":"true","specs.ricos.UseUndoForPlugins":"true","specs.membersArea.AddUninstallMAAction":"false","specs.ricos.removeUsmFromImageUrls":"true","specs.membersArea.customProfile":"false","specs.wixForum.BMCategoriesPage":"true","specs.santaMembers.FilterPagesByRoles":"true","specs.membersArea.MetaSiteSpecialConsumerV2":"true","specs.wixForum.ServerSignSearchRequests":"true","specs.wixForum.EmailDigestNotification":"true","specs.membersArea.ManageBadgesButton":"true","specs.wixForum.NewDefaultForumTemplates":"true","specs.wixForum.BMEnableReviewModal":"false","specs.membersArea.AppWidgets":"false","specs.membersArea.MyAccountRtlSupport":"true","specs.wixForum.WriteKillSwitch":"false","specs.wixForum.OOIInEditor":"false","specs.membersArea.EditorXControllersDeletion":"true","specs.membersArea.EnableMemberPagePermissions":"false","specs.wixForum.DuplexerHttpStreaming":"false","specs.wixForum.PaidPlans":"true","specs.membersfollow.MembersNgClient":"true","specs.membersArea.PolicyChangedToContributor":"true","specs.wixForum.ICUTranslations":"false","specs.wixForum.PPOfflineMigrations":"true","specs.membersArea.urlMembersArea":"false","specs.membersArea.ADIHorizontalLayout":"false","specs.membersArea.HandleMembersNgDomainEvents":"true","specs.membersArea.MembersApiListMembersUseMembersNgApi":"true","specs.wixRicos.useSeo":"false","specs.wixForum.PinterestToggle":"true","specs.membersArea.NewStyleSantaModals":"false","specs.membersArea.MembersApiUseMembersNgApiGet":"true","specs.membersArea.PWCardLayoutEditPhoto":"false","specs.ricos.useHeadingOne":"true","specs.membersArea.UseGetOrCreateMemberV2":"true","specs.numbers.AsyncNumbersWriter":"true","specs.wixForum.ForumDigestEmail":"true","specs.membersArea.disableAutoRemoval":"true","specs.membersArea.ClearSettings":"true","specs.membersArea.AppsManager":"true","specs.wixForum.BMSettingsPage":"true"},"forumData":{"_id":"a1a30873-9bad-4fe3-a350-bacb7be3c6c8","label":"여행 리뷰\u002F정보","description":"게시판에서 여행 관련 주제의 글에 참여해보세요.","coverType":"image","communityId":null,"overlayColor":{"color":"#414141","opacity":0},"backgroundColor":{"color":"#7FCCF7","opacity":0},"textColor":{"color":"#FFFFFF","opacity":1},"language":"ko","cover":{"original_file_name":"8bde4fb7e0db407693c87bdcc9150c9e.jpg","file_name":"8bde4fb7e0db407693c87bdcc9150c9e.jpg","width":4211,"height":1829},"headerTitle":"여행 리뷰\u002F정보","isHot":true,"status":"published","guidelinesEnabled":false,"registrationOpened":true,"registrationManuallyApproved":false,"baseUrl":"https:\u002F\u002Fjemilykoo.wixsite.com\u002Fwebsite","sectionUrl":"\u002Fforum","isForumSpammed":false},"isDemoMode":false,"isLoaded":{"profile-comments":{"":true}},"isLoading":{"profile-comments":{"":false}},"maNavigation":{"profileLinkTemplate":""},"message":{},"modal":{"byId":{},"idList":[],"resolvedIdList":[]},"pagination":{"posts":{"UNCATEGORIZED":{"entitiesByPage":{},"entityCount":0,"sort":null}},"comments":{}},"userComments":{"idList":["60d2f28188d0340015ed3abd","60d2f27a88d0340015ed3abb"],"map":{"60d2f28188d0340015ed3abd":{"_id":"60d2f28188d0340015ed3abd","content":{"blocks":[{"key":"foo","text":"fffff","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{},"VERSION":"8.44.2"},"hashtags":[],"mentions":[],"createdDate":"2021-06-23T08:36:17.522Z","lastActivityDate":"2021-06-23T08:36:17.522Z","likeCount":0,"parentId":"60d2f27a88d0340015ed3abb","ownerSId":"fd8c5604-905b-46f1-9747-3549a723cb15","instanceId":"a1a30873-9bad-4fe3-a350-bacb7be3c6c8","postId":"60becb4785f7df001562fb6a","isTopComment":false,"isBestAnswer":false,"likes":[],"likesOffset":0,"likesLimit":3,"isLiked":false,"isUpvoted":false,"isDownvoted":false,"owner":{"name":"userID","siteMemberId":"fd8c5604-905b-46f1-9747-3549a723cb15","isOwner":false,"isBlocked":false,"privacyStatus":"PUBLIC","rolesList":[],"badges":[],"groups":[],"createdDate":"2021-06-23T07:56:43.000Z","permissions":{"role":"user"},"slug":"userID","contactId":"fd8c5604-905b-46f1-9747-3549a723cb15"},"post":{"_id":"60becb4785f7df001562fb6a","totalComments":2,"likeCount":1,"viewCount":4,"title":"여름에 가족이 함께 가기 좋은 휴양지 추천해주세요!","categoryId":"60becb4785f7df001562fb67","isLiked":true,"slug":"yeoreume-gajogi-hamgge-gagi-joheun-hyuyangji-cuceonhaejuseyo"}},"60d2f27a88d0340015ed3abb":{"_id":"60d2f27a88d0340015ed3abb","content":{"blocks":[{"key":"foo","text":"fff","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{},"VERSION":"8.44.2"},"hashtags":[],"mentions":[],"createdDate":"2021-06-23T08:36:10.956Z","lastActivityDate":"2021-06-23T08:36:17.522Z","likeCount":0,"replyCount":1,"ownerSId":"fd8c5604-905b-46f1-9747-3549a723cb15","upvoteCount":0,"downvoteCount":0,"score":0,"instanceId":"a1a30873-9bad-4fe3-a350-bacb7be3c6c8","postId":"60becb4785f7df001562fb6a","isTopComment":false,"isBestAnswer":false,"likes":[],"likesOffset":0,"likesLimit":3,"isLiked":false,"isUpvoted":false,"isDownvoted":false,"owner":{"name":"userID","siteMemberId":"fd8c5604-905b-46f1-9747-3549a723cb15","isOwner":false,"isBlocked":false,"privacyStatus":"PUBLIC","rolesList":[],"badges":[],"groups":[],"createdDate":"2021-06-23T07:56:43.000Z","permissions":{"role":"user"},"slug":"userID","contactId":"fd8c5604-905b-46f1-9747-3549a723cb15"},"post":{"_id":"60becb4785f7df001562fb6a","totalComments":2,"likeCount":1,"viewCount":4,"title":"여름에 가족이 함께 가기 좋은 휴양지 추천해주세요!","categoryId":"60becb4785f7df001562fb67","isLiked":true,"slug":"yeoreume-gajogi-hamgge-gagi-joheun-hyuyangji-cuceonhaejuseyo"}}},"metadata":{"count":2}},"routing":{"locationBeforeTransitions":{"pathname":"\u002Fmember-comments-page","search":"?pageId=josie&compId=TPAMultiSection_kpndqbpi&viewerCompId=TPAMultiSection_kpndqbpi&siteRevision=414&viewMode=site&deviceType=desktop&locale=ko&tz=Asia%2FSeoul&regionalLanguage=ko&width=660&height=600&instance=aN_G-YOVZxoE5bbaPEQtmqk3xACyhgUHrygrG9veqp8.eyJpbnN0YW5jZUlkIjoiYTFhMzA4NzMtOWJhZC00ZmUzLWEzNTAtYmFjYjdiZTNjNmM4IiwiYXBwRGVmSWQiOiIxNDcyNGYzNS02Nzk0LWNkMWEtMDI0NC0yNWZkMTM4ZjkyNDIiLCJtZXRhU2l0ZUlkIjoiMDg1OGUxYzEtYmVjZC00NzlkLWI3OGUtNGY5NmUxODkyMDM3Iiwic2lnbkRhdGUiOiIyMDIxLTA2LTIzVDA4OjIxOjA3LjUyOVoiLCJ1aWQiOiJmZDhjNTYwNC05MDViLTQ2ZjEtOTc0Ny0zNTQ5YTcyM2NiMTUiLCJkZW1vTW9kZSI6ZmFsc2UsIm9yaWdpbkluc3RhbmNlSWQiOiJmZWE2NGM1ZS05MjM1LTQ3MDAtOTMxMS0wODViNzcyNTA5ZWYiLCJhaWQiOiJmNjQ1Mjc3ZS1jYTYyLTRlNWMtYTEwOS05MDRhZGQ4OTlkZjIiLCJiaVRva2VuIjoiYTlmYmU5YjItMjU2MC0wODdlLTE0ZGUtZjU1ZDlhNmFlNmZmIiwic2l0ZU93bmVySWQiOiI4YmNiNDI1Yy0xNDBhLTQ3MzctODFjYi1hZTY5MDgyYzQ0NjUiLCJleHBpcmF0aW9uRGF0ZSI6IjIwMjEtMDYtMjNUMTI6MjE6MDcuNTI5WiIsImhhc1VzZXJSb2xlIjpmYWxzZX0&currency=KRW&currentCurrency=KRW&commonConfig=%7B%22brand%22%3A%22wix%22%2C%22bsi%22%3A%228dfd4817-f941-400e-89fa-55ee45a136a8%7C74%22%2C%22BSI%22%3A%228dfd4817-f941-400e-89fa-55ee45a136a8%7C74%22%7D&routerData=%7B%22viewedUser%22%3A%7B%22id%22%3A%22fd8c5604-905b-46f1-9747-3549a723cb15%22%2C%22slug%22%3A%22userID%22%2C%22name%22%3A%22userID%22%2C%22roles%22%3A%5B%5D%7D%7D&target=_top&section-url=https%3A%2F%2Fjemilykoo.wixsite.com%2Fwebsite%2Fblank-7-1%2F&vsi=a904233c-4964-491e-8cd5-8ef8308456c3","hash":"","action":"POP","key":null,"query":{"commonConfig":"{\"brand\":\"wix\",\"bsi\":\"8dfd4817-f941-400e-89fa-55ee45a136a8|74\",\"BSI\":\"8dfd4817-f941-400e-89fa-55ee45a136a8|74\"}","compId":"TPAMultiSection_kpndqbpi","currency":"KRW","currentCurrency":"KRW","deviceType":"desktop","height":"600","instance":"aN_G-YOVZxoE5bbaPEQtmqk3xACyhgUHrygrG9veqp8.eyJpbnN0YW5jZUlkIjoiYTFhMzA4NzMtOWJhZC00ZmUzLWEzNTAtYmFjYjdiZTNjNmM4IiwiYXBwRGVmSWQiOiIxNDcyNGYzNS02Nzk0LWNkMWEtMDI0NC0yNWZkMTM4ZjkyNDIiLCJtZXRhU2l0ZUlkIjoiMDg1OGUxYzEtYmVjZC00NzlkLWI3OGUtNGY5NmUxODkyMDM3Iiwic2lnbkRhdGUiOiIyMDIxLTA2LTIzVDA4OjIxOjA3LjUyOVoiLCJ1aWQiOiJmZDhjNTYwNC05MDViLTQ2ZjEtOTc0Ny0zNTQ5YTcyM2NiMTUiLCJkZW1vTW9kZSI6ZmFsc2UsIm9yaWdpbkluc3RhbmNlSWQiOiJmZWE2NGM1ZS05MjM1LTQ3MDAtOTMxMS0wODViNzcyNTA5ZWYiLCJhaWQiOiJmNjQ1Mjc3ZS1jYTYyLTRlNWMtYTEwOS05MDRhZGQ4OTlkZjIiLCJiaVRva2VuIjoiYTlmYmU5YjItMjU2MC0wODdlLTE0ZGUtZjU1ZDlhNmFlNmZmIiwic2l0ZU93bmVySWQiOiI4YmNiNDI1Yy0xNDBhLTQ3MzctODFjYi1hZTY5MDgyYzQ0NjUiLCJleHBpcmF0aW9uRGF0ZSI6IjIwMjEtMDYtMjNUMTI6MjE6MDcuNTI5WiIsImhhc1VzZXJSb2xlIjpmYWxzZX0","locale":"ko","pageId":"josie","regionalLanguage":"ko","routerData":"{\"viewedUser\":{\"id\":\"fd8c5604-905b-46f1-9747-3549a723cb15\",\"slug\":\"userID\",\"name\":\"userID\",\"roles\":[]}}","section-url":"https:\u002F\u002Fjemilykoo.wixsite.com\u002Fwebsite\u002Fblank-7-1\u002F","siteRevision":"414","target":"_top","tz":"Asia\u002FSeoul","viewMode":"site","viewerCompId":"TPAMultiSection_kpndqbpi","vsi":"a904233c-4964-491e-8cd5-8ef8308456c3","width":"660"}}},"siteInfo":{},"sitePages":[],"categories":[{"_id":"60becb4785f7df001562fb67","totalPosts":6,"instanceId":"a1a30873-9bad-4fe3-a350-bacb7be3c6c8","slugs":["yeohaeng-gesipan"],"label":"여행 게시판","description":"여행 관련 주제의 글에 참여해보세요. 새 게시물을 추가하거나 기존 게시물을 편집하여 활동을 시작할 수 있습니다.","rank":0,"cover":{"original_file_name":"8bde4fb7e0db407693c87bdcc9150c9e.jpg","file_name":"8bde4fb7e0db407693c87bdcc9150c9e.jpg","width":4211,"height":1829},"overlayColor":{"color":"#000000","opacity":0.25},"coverType":"image","textColor":{"color":"#FFFFFF","opacity":1},"backgroundColor":{"color":"#7FCCF7","opacity":1},"headerTitle":"여행 게시판","parentId":null,"creationOrigin":"provision","isSubscribed":false,"slug":"yeohaeng-gesipan","postTypes":["question","discussion"],"guidelinesEnabled":false},{"_id":"60c16db69a4160002b480db2","totalPosts":1,"rank":1,"label":"[카테고리1:산]","headerTitle":"[무제] 카테고리","description":"산 카테고리","coverType":"image","cover":{"file_name":"8bcb42_6667f3839f8a446cb4789de804ae5f8b~mv2.jpg","height":400,"width":700,"original_file_name":"8bcb42_6667f3839f8a446cb4789de804ae5f8b~mv2.jpg"},"backgroundColor":{"color":"#FFFFFF","opacity":1},"overlayColor":{"color":"#000000","opacity":0.3},"textColor":{"color":"#000000","opacity":1},"postTypes":["discussion"],"type":"public","groups":[],"visible":"all","isWriteProtected":false,"slugs":["kategori1-san"],"instanceId":"a1a30873-9bad-4fe3-a350-bacb7be3c6c8","parentId":null,"isSubscribed":false,"slug":"kategori1-san","guidelinesEnabled":false},{"_id":"60c16de19a4160002b480db3","totalPosts":0,"rank":2,"label":"[카테고리2:서울]","headerTitle":"서울","description":"카테고리2:서울","coverType":"image","backgroundColor":{"color":"#FFFFFF","opacity":1},"overlayColor":{"color":"#000000","opacity":0.3},"textColor":{"color":"#000000","opacity":1},"postTypes":["discussion"],"type":"public","groups":[],"visible":"all","isWriteProtected":false,"slugs":["kategori2-seoul"],"instanceId":"a1a30873-9bad-4fe3-a350-bacb7be3c6c8","cover":{"file_name":"8bcb42_b338a391d2d64fc08eb00528f030a989~mv2.png","height":751,"width":1000,"original_file_name":"8bcb42_b338a391d2d64fc08eb00528f030a989~mv2.png"},"parentId":null,"isSubscribed":false,"slug":"kategori2-seoul","guidelinesEnabled":false},{"_id":"60c190d1b7afff002b51e5f2","totalPosts":0,"rank":3,"label":"추천여행정보","headerTitle":"추천여행정보","description":"추천여행정보","coverType":"color","backgroundColor":{"color":"#FFFFFF","opacity":1},"overlayColor":{"color":"#000000","opacity":0.3},"textColor":{"color":"#000000","opacity":1},"postTypes":["discussion"],"type":"public","groups":[],"visible":"all","isWriteProtected":false,"slugs":["cuceonyeohaengjeongbo"],"instanceId":"a1a30873-9bad-4fe3-a350-bacb7be3c6c8","parentId":null,"isSubscribed":false,"slug":"cuceonyeohaengjeongbo","guidelinesEnabled":false},{"_id":"60c1913ac0b14e002b3fc9f6","totalPosts":0,"rank":4,"label":"자유게시판","headerTitle":"자유게시판","description":"자유게시판","coverType":"color","backgroundColor":{"color":"#FFFFFF","opacity":1},"overlayColor":{"color":"#000000","opacity":0.3},"textColor":{"color":"#000000","opacity":1},"postTypes":["discussion"],"type":"public","groups":[],"visible":"all","isWriteProtected":false,"slugs":["jayugesipan"],"instanceId":"a1a30873-9bad-4fe3-a350-bacb7be3c6c8","parentId":null,"isSubscribed":false,"slug":"jayugesipan","guidelinesEnabled":false}],"users":{"undefined":{"name":"userID","siteMemberId":"fd8c5604-905b-46f1-9747-3549a723cb15","isOwner":false,"isBlocked":false,"privacyStatus":"PUBLIC","rolesList":[],"badges":[],"groups":[],"createdDate":new Date("2021-06-23T07:56:43.000Z"),"permissions":{"role":"user"},"slug":"userID","contactId":"fd8c5604-905b-46f1-9747-3549a723cb15"}},"viewMode":"site","searchParams":{"pageId":"josie","compId":"TPAMultiSection_kpndqbpi","viewerCompId":"TPAMultiSection_kpndqbpi","siteRevision":"414","viewMode":"site","deviceType":"desktop","locale":"ko","tz":"Asia\u002FSeoul","regionalLanguage":"ko","width":"660","height":"600","instance":"aN_G-YOVZxoE5bbaPEQtmqk3xACyhgUHrygrG9veqp8.eyJpbnN0YW5jZUlkIjoiYTFhMzA4NzMtOWJhZC00ZmUzLWEzNTAtYmFjYjdiZTNjNmM4IiwiYXBwRGVmSWQiOiIxNDcyNGYzNS02Nzk0LWNkMWEtMDI0NC0yNWZkMTM4ZjkyNDIiLCJtZXRhU2l0ZUlkIjoiMDg1OGUxYzEtYmVjZC00NzlkLWI3OGUtNGY5NmUxODkyMDM3Iiwic2lnbkRhdGUiOiIyMDIxLTA2LTIzVDA4OjIxOjA3LjUyOVoiLCJ1aWQiOiJmZDhjNTYwNC05MDViLTQ2ZjEtOTc0Ny0zNTQ5YTcyM2NiMTUiLCJkZW1vTW9kZSI6ZmFsc2UsIm9yaWdpbkluc3RhbmNlSWQiOiJmZWE2NGM1ZS05MjM1LTQ3MDAtOTMxMS0wODViNzcyNTA5ZWYiLCJhaWQiOiJmNjQ1Mjc3ZS1jYTYyLTRlNWMtYTEwOS05MDRhZGQ4OTlkZjIiLCJiaVRva2VuIjoiYTlmYmU5YjItMjU2MC0wODdlLTE0ZGUtZjU1ZDlhNmFlNmZmIiwic2l0ZU93bmVySWQiOiI4YmNiNDI1Yy0xNDBhLTQ3MzctODFjYi1hZTY5MDgyYzQ0NjUiLCJleHBpcmF0aW9uRGF0ZSI6IjIwMjEtMDYtMjNUMTI6MjE6MDcuNTI5WiIsImhhc1VzZXJSb2xlIjpmYWxzZX0","currency":"KRW","currentCurrency":"KRW","commonConfig":"{\"brand\":\"wix\",\"bsi\":\"8dfd4817-f941-400e-89fa-55ee45a136a8|74\",\"BSI\":\"8dfd4817-f941-400e-89fa-55ee45a136a8|74\"}","routerData":{"viewedUser":{"id":"fd8c5604-905b-46f1-9747-3549a723cb15","slug":"userID","name":"userID","roles":[]}},"target":"_top","section-url":"https:\u002F\u002Fjemilykoo.wixsite.com\u002Fwebsite\u002Fblank-7-1\u002F","vsi":"a904233c-4964-491e-8cd5-8ef8308456c3"},"posts":{"60becb4785f7df001562fb6a":{"_id":"60becb4785f7df001562fb6a","totalComments":2,"likeCount":1,"viewCount":4,"title":"여름에 가족이 함께 가기 좋은 휴양지 추천해주세요!","categoryId":"60becb4785f7df001562fb67","isLiked":true,"slug":"yeoreume-gajogi-hamgge-gagi-joheun-hyuyangji-cuceonhaejuseyo"}},"badges":[]};
    window.__CONFIG__ = {"bundleName":"member-comments-page","imageHost":"static.wixstatic.com","videoHost":"video.wixstatic.com","sectionUrl":"https:\u002F\u002Fjemilykoo.wixsite.com\u002Fwebsite\u002Fblank-7-1\u002F"};
    window.__EXPERIMENTS__ = {"specs.UouSubscriptionServiceUseApiGatewayClient":"true","specs.membersArea.UseMembersNgApiUpdate":"false","specs.media.MediaManager3":"true","specs.membersArea.NewAppSettingsService":"false","specs.membersArea.CheckUserContributorPermissions":"true","specs.membersArea.HandleMembersNgUpdateDomainEvents":"true","specs.membersArea.ApiGwClientToDetectTemplate":"false","specs.membersfollow.ActivityCounters":"false","specs.membersArea.MembersApiDeleteUseMembersNgApi":"false","specs.wixForum.CreatePostCaptchaBySpammedFlag":"true","specs.membersArea.viewerCustomProfile":"false","specs.wixForum.PreYEFLockIn":"true","specs.membersArea.CustomProfileReduceSpacing":"false","specs.ricos.useQualityPreload":"true","specs.wixForum.RequestThrottlingPerIp":"true","specs.membersArea.NewAppSettingsRead":"false","specs.membersArea.DoNotSyncWithSiteMembers":"false","specs.membersArea.RefreshWidgetsOnSettingsChange":"false","specs.membersArea.setResponsiveLayoutForApps":"false","specs.wixForum.PreYEFLockInEditor":"true","specs.ricos.pastedFilesSupport":"true","specs.wixRicos.OOIRicosViewerEmptyStateGFPP":"true","specs.membersArea.SkipTemplateHandlerForSettings":"false","specs.wixForum.BMMonetizeCategory":"true","specs.membersArea.MemberHandlerUseMembersNgApi":"true","se_santaMembers":"new","specs.membersArea.UseMembersNgApi":"true","specs.membersArea.DoNotCreateTeamMember":"true","specs.wixForum.ForumAppMigrationToApiGw":"false","specs.AddMinHeight":"false","specs.membersArea.SendSsrCaccheInvalidationRequests":"true","specs.membersArea.PlatformUninstallation":"true","specs.ricos.useSrcSet":"false","specs.membersArea.ShowMoreMembersWithBadge":"false","specs.membersArea.UseGroupsToResolveMemberRoles":"true","specs.membersArea.MembersApiUseMembersNgApiQuery":"true","specs.wixForum.MembersNg":"true","specs.ricos.UseUndoForPlugins":"true","specs.membersArea.AddUninstallMAAction":"false","specs.ricos.removeUsmFromImageUrls":"true","specs.membersArea.customProfile":"false","specs.wixForum.BMCategoriesPage":"true","specs.santaMembers.FilterPagesByRoles":"true","specs.membersArea.MetaSiteSpecialConsumerV2":"true","specs.wixForum.ServerSignSearchRequests":"true","specs.wixForum.EmailDigestNotification":"true","specs.membersArea.ManageBadgesButton":"true","specs.wixForum.NewDefaultForumTemplates":"true","specs.wixForum.BMEnableReviewModal":"false","specs.membersArea.AppWidgets":"false","specs.membersArea.MyAccountRtlSupport":"true","specs.wixForum.WriteKillSwitch":"false","specs.wixForum.OOIInEditor":"false","specs.membersArea.EditorXControllersDeletion":"true","specs.membersArea.EnableMemberPagePermissions":"false","specs.wixForum.DuplexerHttpStreaming":"false","specs.wixForum.PaidPlans":"true","specs.membersfollow.MembersNgClient":"true","specs.membersArea.PolicyChangedToContributor":"true","specs.wixForum.ICUTranslations":"false","specs.wixForum.PPOfflineMigrations":"true","specs.membersArea.urlMembersArea":"false","specs.membersArea.ADIHorizontalLayout":"false","specs.membersArea.HandleMembersNgDomainEvents":"true","specs.membersArea.MembersApiListMembersUseMembersNgApi":"true","specs.wixRicos.useSeo":"false","specs.wixForum.PinterestToggle":"true","specs.membersArea.NewStyleSantaModals":"false","specs.membersArea.MembersApiUseMembersNgApiGet":"true","specs.membersArea.PWCardLayoutEditPhoto":"false","specs.ricos.useHeadingOne":"true","specs.membersArea.UseGetOrCreateMemberV2":"true","specs.numbers.AsyncNumbersWriter":"true","specs.wixForum.ForumDigestEmail":"true","specs.membersArea.disableAutoRemoval":"true","specs.membersArea.ClearSettings":"true","specs.membersArea.AppsManager":"true","specs.wixForum.BMSettingsPage":"true"};
    window.__INITIAL_I18N__ = {"localeData":{"report-abuse-form.offensive-content":"부적절한 텍스트","edit-category-form.change-cover":"이미지 변경","demo-modal.demo-mode":"데모 모드","recent-activity.posted":"게시:","private-profile-actions.settings":"설정","recent-activity.replied":"댓글","demote-moderator-modal.disable-commenting":"댓글 차단","edit-category-form.description-placeholder":"카테고리 설명을 추가하세요.","category-page.private-empty-state.content":"Begin by adding members or creating a new post.","manage-categories-actions.edit":"편집","mobile-search-page.load-less":"Show less results","manage-category-members-roles-empty-state.you-dont-have-any-roles":"역할이 없습니다.","manage-category-members-modal.done":"완료","footer-posts.related-posts":"관련 게시물","comment-edit-modal.edit-comment":"댓글 편집","role.wixCodeForumNinja":"Forum Ninja","unfollow-all-categories-modal.unfollow":"팔로우 중지","text-editor.placeholder-give-details-intro":"질문을 등록할 때 아래의 내용을 고려하면 적절한 답변을 얻을 수 있습니다.","discard-comment-modal.discard-answer":"답변 작업 중지 및 나가기","messages.commenting-enabled":"\u003Cstrong\u003E게시물이 활성화되었습니다.\u003C\u002Fstrong\u003E 이제 회원들이 답변 또는 의견을 추가할 수 있습니다.","category-radio.discussion-only":"그룹 대화","manage-category-members-badges-empty-state.cta":"+ 배지 추가","number":"{count,number,compact}","comment.edited-tag":"편집됨","category-radio.current-category":"Current category","post-sorting.likes":"인기순","profile.cancel":"취소","discard-comment-modal.are-you-sure-answer":"해당 답변 작업을 중지하고 페이지를 나가시겠습니까?","post-list-item.question-post-type":"문의","share-button.via-twitter":"Share via Twitter","post-sorting.sortByLastActivity":"최근 활동","breadcrumbs.following":"팔로잉","share-post-modal.share-post":"공유","manage-category-members-badges-modal.title":"카테고리 액세스 가능 배지","follow-member-modal.unfollow":"Unfollow","edit-subcategory-form.general-section":"하위 카테고개","post-auto-suggestions.no-answer":"No answers","share-link.cancel":"취소","category-actions.manage-category-members-sm":"{count, plural, other {회원 {count,number}명}}","messages.rce-file-upload-limited":"파일 업로드 제한을 초과하였습니다.","edit-category-form.permissions-section":"카테고리 권한","new-feature-indicator.radio-option":"신규","edit-category-form.button-create":"추가","manage-categories.categories":"카테고리","followers-page.empty-state-title":"팔로워가 없습니다!","edit-category-form.post-types-question":"문의","footer-posts.title":"신규 게시물","move-to-category.cancel":"취소","report-post-modal.report-post":"게시물 신고","messages.demo-mode-editor":"해당 게시판을 더블 클릭하시면 사용자 지정 작업을 시작할 수 있습니다. ","demote-moderator-modal.will-no-longer":"다음 작업을 수행할 수 없게 됩니다:","mixed-category-page.create-new-post.title":"게시물을 작성하시겠습니까?","private-category-restriction-for-paying-members.content":"그룹 대화에 참여하려면 플랜을 구독하세요.","sorting.sort-by":"정렬:","comment.question.reply":"댓글","edit-forum-form.description-tooltip":"게시판 설명을 추가하세요. 게시판 홈페이지 입장 시 방문자에게 게시판에서 가능한 활동이 무엇인지 알려주세요.","breadcrumbs.notifications":"알림","report-abuse-form.submit-button":"신고","discard-comment-modal.are-you-sure":"정말 해당 댓글을 삭제하시겠습니까?","create-post-button.create-new-discussion":"그룹 대화","default-category-title":"새 카테고리","post-create-actions.move-post":"Move Post","messages.rce-file-upload-failure":"파일을 업로드하지 못하였습니다. 인터넷 연결 상태를 확인한 후 다시 시도하세요.","comment.answer":"답변","badge.owner":"운영자","a11y-lives-messages.search-no-results":"검색 결과가 없습니다.","search-button.search":" ","text-editor.placeholder-give-details-line.third":"상황을 설명할 수 있는 이미지를 추가하세요.","guidelines.title.forum-guidelines":"Forum Guidelines","subcategory-list-item.views":"조회","breadcrumbs.profile-settings":"설정","discard-category-changes-modal.description":"계속 카테고리를 편집하거나 변경사항을 제거할 수 있습니다.","categories-manager.delete-category-img":"커버 이미지 삭제","unfollow-category-modal.are-you-sure":"정말 해당 카테고리 팔로우를 중지하시겠습니까?","category-page.private-empty-state.title":"Get This Category Started","new-content.new":"신규","manage-categories-actions.move-to-top":"메인 카테고리","share-button.via-facebook":"Share via Facebook","private-category-restriction-anonymous-register-all.content":"게시물을 확인하고 반응 및 댓글을 추가하려면 게시판에 가입하세요. ","text-editor.placeholder-give-details":"더 많은 정보를 추가하고 답변을 받아보세요.","post-form.your-question-here":"문의사항","manage-categories.create-category-button-desktop":"+ 카테고리 추가","demo-modal.message-template":"해당 게시판을 사용하려면 템플릿 편집을 시작하세요.","edit-category-form.upload-cover":"카테고리 이미지 추가","manage-category-members-plans-empty-state.you-dont-have-any-plans":"You don't have any paid plans","new-content.new-posts":"최신 게시물을 확인하세요.","discard-post-modal.confirm":"나가기","category-list-item.total-views":"{count, plural, other {조회수 {count,number}회}}","post-auto-suggestions.external-links":"리소스 링크:","discard-comment-modal.confirm":"삭제","post-form.require-fields":"제목 및 내용을 입력하세요!  ","edit-category-form.post-types-discussion":"그룹 대화","category-radio.question-only":"문의","broken-state.title":"Something Isn’t Working…","move-post-confirmation-modal.cancel":"취소","not-found.nothings-showing-up":"페이지 검색 불가","manage-category-members-modal.filter-all":"전체","category-dropdown-select.placeholder":"Select a category","new-post-message.new-posts":"새 게시물","post-actions.report-post":"게시물 신고","pagination.first-page":"First page","category-dropdown-select.selected-members":"Selected members only","manage-category-members-roles-modal.title":"카테고리 액세스 가능 역할","category-actions.follow-notification-tooltip":"해당 카테고리를 팔로우하고 \u003Cbr\u002F\u003E신규 게시물 알림을 수신하세요.\n","following-page.empty-state-title-current-user":"팔로우할 회원을 찾아보세요!","post-sorting.comments":"댓글순","promote-moderator-modal.delete-posts":"게시물 삭제 및 핀 추가","post-page-sidebar-stats.answer-count":"{count, plural, other {답변 {count,number}개}}","category-actions.manage-category-members-roles-empty":"역할","delete-comment-modal.are-you-sure-answer":"해당 답변을 정말 삭제하시겠습니까?","move-post-modal.select-category-description":"게시물을 이동할 카테고리를 선택하세요. 질문을 허용하는 카테고리만 선택할 수 있습니다.","edit-forum-form.description-placeholder":"게시판 설명을 추가하세요.","post-auto-suggestions.comment-count":"{count, plural, other {댓글 {count,number}개}}","rich-content-editor.video-upload-limited":"Video upload limit reached.","messages.site-storage-full":"사이트 저장용량이 부족합니다.","post-actions.unpin-post":"핀 제거","paid-plan.validity.recurring-until-canceled-weeks":"취소될 때까지 매주","post-auto-suggestions.turn-off-suggestions":"유사 게시물 비공개","members-page.sign-up-content":"다른 회원 프로필을 조회하거나 게시물을 팔로우하려면 회원 가입이 필요합니다.","unfollow-category-modal.title":"카테고리 팔로우 중지","manage-categories-actions.move-to-child":"하위 카테고리","comment-actions.report-reply":"댓글 신고","edit-category-form.read-permissions-members.subtitle":"로그인한 방문자에게만 게시물 공개","post-page-sidebar-stats.reply-count":"{count, plural, other {답글 {count,number}개}}","edit-forum-form.header-title-tooltip":"방문자가 내 커뮤니티의 성격을 파악할 수 있도록 게시판 메인 페이지 제목을 추가하세요.","paid-plan.validity.valid-one-weeks":"1주간 유효","edit-category-form.write-permissions-all":"액세스 가능 회원","messages.activate-subscriptions":"구독을 활성화하려면 {link}하세요.","comment-bar.send":"등록","demote-moderator-modal.move-posts":"게시물 카테고리 변경","edit-category-form.header-title-tooltip":"카테고리 페이지에 표시될 제목을 추가하세요.","post-form-update.uploading":"업로드가 완료되면 업데이트를 클릭하세요.  ","subcategory-list-item.posts":"게시물","edit-category-form.title-tooltip":"해당 카테고리명은 게시판 메인 페이지와 탐색 메뉴에 표시됩니다.","paid-plan.validity.recurring-one-weeks":"Every week for one week","followers-page.empty-state-content":"아직 팔로워가 없는 회원입니다. 첫 팔로워가 되어보세요.","follow-button.follow":"팔로우","profile-stats.posts-count":"{count,number,compact}개","comment-create-modal.continue-writing":"계속 작성하세요...","post-actions.enable-commenting":"게시물 활성화","manage-category-members-modal.filter-by":"필터","messages.answering-disabled":"\u003Cstrong\u003E문의가 비활성화되었습니다\u003C\u002Fstrong\u003E. 회원들이 더는 답변을 남길 수 없습니다.","comment-actions.delete-comment":"삭제","demo-confirmation.cancel-button":"닫기","category-radio.discussions":"그룹 대화","edit-forum-form.button-cancel":"취소","messages.answering-enabled":"\u003Cstrong\u003E문의가 활성화되었습니다.\u003C\u002Fstrong\u003E 회원들이 답변을 남길 수 있습니다.","private-profile-actions.logout":"로그아웃","pagination.page-selected":"{page,number} 페이지. 현재 위치","a11y-lives-messages.post-like-success":"좋아요가 추가되었습니다.","post-list-item.total-answers":"{count, plural, other {답변 {count,number}개}}","edit-category-form.visibility-permissions-membersOnly":"카테고리 액세스 가능 회원\n","unfollow-all-categories-modal.are-you-sure":"정말 계속하시겠습니까? 팔로우 중지를 선택하면 신규 게시물 알림이 발송되지 않습니다.","private-category-restriction.title":"비공개 카테고리","post-page-sidebar-stats.comment-count":"{count, plural, other {댓글 {count,number}개}}","manage-category-members-list-item.members-count":"{count, plural, other {회원 {count,number}명}}","profile-menu.notifications":"알림","messages.comment-too-large":"댓글이 너무 커서 게시할 수 없습니다. 추가되어 있는 미디어를 삭제해보세요.","provision-page.open-editor":"Open the Editor to add the forum to your site.","messages.answer-updated":"답변이 \u003Cstrong\u003E업데이트\u003C\u002Fstrong\u003E되었습니다.","post-form.cancel":"취소","I_am_TNT":"ACDC님이 삭제를 원하는 키의 예시입니다.","messages.demo-mode-preview":" ","post-page.commenting-off":"닫힘","role.wixCommunityChamp":"Community Champ","messages.category-unsubscribed":"해당 카테고리 \u003Cstrong\u003E팔로우를\u003C\u002Fstrong\u003E 중지합니다.","create-first-plan-modal.text-line-1":"플랜 설정이 완료되면 다시 현재창으로 돌아와 카테고리를 업데이트하세요.","messages.reply-deleted":"답글이 \u003Cstrong\u003E삭제\u003C\u002Fstrong\u003E되었습니다.","no-comments.content":"다음에 다시 확인해주세요.","manage-category-members-badges-empty-state.to-create-badges-go-to":"배지를 추가하면 해당 배지에 대한 액세스 권한을 다른 회원에게 제공할 수 있습니다.","edit-category-form.post-types-label":"회원들이 추가할 수 있는 게시물 유형을 선택하세요.","login-button.sign-up":"가입","post-form.submitting":"Submitting","edit-forum-form.header-title-placeholder":"제목 추가","block-member-modal.confirm":"차단","post-page.answering-disabled":"Answering is off for this post.","comment-actions.report-comment":"댓글 신고","post.load-comments":"댓글 더보기","post-page.back-to-forum":"뒤로","messages.user-unsubscribed":"회원 팔로우를 중지합니다. \u003Cstrong\u003E \u003C\u002Fstrong\u003E  ","create-post-button.create-new-question-info":"직접 커뮤니티 답변을 받아보세요.","messages.post-unsubscribed":"게시물 팔로우를 중지합니다. \u003Cstrong\u003E \u003C\u002Fstrong\u003E  ","broken-state.suggestion-3":"다른 브라우저에서 사이트에 접속합니다.","move-to-category.select-category":"카테고리 선택","post-actions.disable-answering":"문의 비활성화","categories-link.all-posts":"전체 카테고리","recent-posts-widget.empty-state.unauthenticated.title":"Join the Discussion","demote-moderator-modal.are-you-sure":"해당 회원의 관리자 지정을 정말 해제하시겠습니까?","reply-to-answer-actions.edit.reply":"댓글 편집","post-actions.enable-answering":"문의 활성화","edit-category-form.header-title-label":"머리글 제목","manage-category-members-list-item.edit":"Edit","edit-category-form.description-tooltip":"'유럽 여행지 추천' 등 해당 카테고리 게시물에 대한 간략한 설명을 추가하세요.","category-list-item.private":"비공개","edit-subcategory-form.write-permissions-label":"하위 카테고리 게시 권한","comment.like-count":"{count,number,compact}개","paid-plan.validity.recurring-until-canceled":"취소될 때까지 매월","post-page.header-title":"게시","followers-menu.followers":"팔로워","post-page.commenting-bar-off":"댓글 기능이 차단되었습니다.","move-post-confirmation-modal.membersOnly.title":"회원 전용 카테고리로 이동하시겠습니까?","share-comment-modal.share-reply":"댓글 공유","quick-user-info.top-comments":"베스트 답변","restriction.content":"해당 카테고리는 회원전용 카테고리입니다. 카테고리에 액세스하려면 가입 및 로그인하세요.","post-page.view-more-replies":"{count, plural, other {{count,number}개 댓글 더 보기}}","manage-category-members-plans-list-item.connect":"연결","discard-post-modal.discard-question":"질문 폐기","manage-category-members-roles-empty-state.cta":"+ 역할 추가하기","post-sorting.newest":"최신순","move-post-confirmation-modal.private.title":"비공개 카테고리 이동 안내","post-list-classic.table-header-avatar":"Avatar","manage-category-members-modal.show":"보기:","comment-form.answer":"답변","following-page.members-page-link":"회원 보기","no-search-results.try-again":"해당 키워드에 대한 검색 결과를 찾을 수 없습니다. 다른 키워드를 사용해보세요.","badge.moderator":"관리자","a11y-lives-messages.category-ranks-update-success":"Categories order and ranks updates successfully","create-post-button.create-new-post-title":"그룹 대화","restriction-private-member.button":"가입하기","edit-category-form.read-permissions-specific-members.subtitle":"개별 회원, 역할, 배지 또는 구독 선택","category-actions.manage-category-members-badges":"{count, plural, other {배지 {count,number}개}}","post-auto-suggestions.answers-count":"{count, plural, other {답변 {count,number}개}}","paid-plans-vertical-status-content.title":"채널 구독을 감사드립니다!","preview-blocker.popup":"실제 작동 상태를 확인하려면 라이브 사이트로 이동하세요.","not-logged-in-with-plans-empty-state.login":"로그인","post-actions.move-to-cateogory":"변경","post-page-sidebar-category-list.see-all-categories":"전체 카테고리 보기","broken-state.btn-text":"Refresh Page","create-first-plan-modal.option-4":"가격 페이지 사용자 지정","paid-plans-vertical-status-content.back-to-category":"게시물 확인하기","following-page.empty-state-title":"팔로잉 활동이 없습니다!","post-form.require-title":"제목을 입력하세요!","post-list-item.total-comments":"{count, plural, other {댓글 {count,number}개}}","typing-list-loader.typing":"입력 중...","post-page.answering-blocked":"You are unable to answer","member-sort-field.newest-first":"정렬: 최신순","post-actions.pin-post":"핀 추가","breadcrumbs.breadcrumbs":"Breadcrumbs","category-actions.subscribe-category":"카테고리 팔로우","paid-plan.validity.recurring-until-canceled-months":"취소될 때까지 매월","post-page.not-found-title":"게시물 검색 불가","pagination.next-page":"Next page","category-actions.unfollow":"팔로잉","recent-posts-widget.empty-state.unauthenticated.content":"The category is members only, sign up to join in","unfollow-category-modal.cancel":"취소","delete-confirmation.cancel":"취소","post-filter.label":"필터:","breadcrumbs.create-post":"게시물 작성","comment-actions.share-answer":"답변 공유","post-list-compact.likes":"Likes","messages.post-fields-required":"제목 및 내용을 입력하세요! \u003Cstrong\u003E \u003C\u002Fstrong\u003E   \u003Cstrong\u003E \u003C\u002Fstrong\u003E  ","edit-forum-form.upload-cover":"이미지 업로드","no-member-results.no-members-found":"{name} 회원을 찾을 수 없습니다.","messages.profile-image-uploading":"프로필 이미지를 업로드 중입니다! \u003Cstrong\u003E\u003C\u002Fstrong\u003E","new-content.new-post-single":" 최신 게시물을 놓치지 마세요. ","category-actions.manage-category-members-total-paying-members":"{count, plural, other {(유료 회원 {count,number}명)}}","category-actions.delete-category":"카테고리 삭제","create-post-button.create-new-post":"게시물 작성하기","manage-category-members-no-plans-modal.title":"No Subscriptions Yet","footer-posts.create-new-post":"첫 카테고리 게시물을 작성해보세요.","not-logged-in-with-plans-empty-state.see-plans":"플랜 보기","post-list-item.recent-activity-nav-a11y":"Navigate to most recent activity","recent-posts-widget.recent-posts":"최근 게시물","disconnect-plan-modal.confirm":"연결 해제","messages.profile-cover-uploading":"프로필 커버를 업로드 중입니다! \u003Cstrong\u003E\u003C\u002Fstrong\u003E","post-page-sidebar-new-posts.related-posts|abTranslate_1|similarPostsTest":"관련 게시물","post-form.hide-guidelines":"Hide guidelines","manage-category-members-modal.manage-badges-link":"+ 배지 추가","messages.profile-update-failed":"프로필 변경사항 저장 실패!","category-actions.manage-category-members-badges-empty":"배지","messages.post-link-copied":"게시물 링크 복사 완료","post-list-item.like-count":"{count,number,compact}개","pagination.pagination":"Pagination","manage-category-members-plans-list-item.disconnect":"연결 해제","forum.desktop.feed.comment.deleted":"삭제됨","messages.answer-limit-reached":"일일 답글 제한에 도달하였습니다.","manage-category-members-list.type-member":"회원","edit-forum-form.title-placeholder":"게시판 이름을 입력하세요.","delete-comment-modal.are-you-sure-reply":"해당 댓글을 정말 삭제하시겠습니까?","post-list-item.pinned-post":"Pinned post","create-post-button.create-new-post-info":"다른 회원들과 대화를 나눠보세요.","member-sort-field.role":"정렬: 회원 권한","manage-category-members-modal.filter-badges":"배지","quick-user-info.likes":"개 좋아요","recent-posts-widget.empty-state.no-posts.button":"게시물 작성하기","manage-category-members-modal.filter-paid-plans":"Paid plans","private-profile-actions.profile-page":"내 프로필","edit-subcategory-form.visibility-permissions-tooltip":"하위 카테고리 접근 권한을 설정하세요. 예를 들면, 유료 회원 카테고리는 전체 공개되지만 비밀 관리자 하위 카테고리는 비공개로 설정할 수 있습니다.","choose-category-modal.title":"카테고리 선택","create-category-card.have-something-to-say":"Have something to say?","discard-comment-modal.are-you-sure-reply":"해당 댓글을 정말 삭제하시겠습니까?","report-comment-modal.help-us-understand-answer":"해당 답변을 신고하는 이유는 무엇입니까?","post-form.publish":"게시","post-filter.label-mobile":"Filter","comment-form.submitting":"Submitting","messages.answer-deleted":"답변이 \u003Cstrong\u003E삭제\u003C\u002Fstrong\u003E되었습니다.","text-editor.placeholder-give-details-line.second":"중요한 정보를 포함하세요.","move-post-confirmation-modal.public.title":"공개 카테고리로 이동하시겠습니까?","text-editor.placeholder-give-details-line.first":"한 번에 한 가지 질문을 작성하세요.","login-to-comment.desktop.login.title":"댓글을 작성하시겠습니까?","following-page.empty-state-content":"아직 팔로잉 활동이 없는 회원입니다.","manage-category-members-modal.cancel":"취소","manage-category-members-badges-empty-state.you-dont-have-any-badges":"배지가 없습니다.","messages.reply-updated":"댓글이 \u003Cstrong\u003E업데이트\u003C\u002Fstrong\u003E되었습니다.","post-main-actions.share":"공유","messages.user-subscribed":"회원 팔로우를 시작합니다. \u003Cstrong\u003E \u003C\u002Fstrong\u003E  ","private-profile-actions.login":"로그인\u002F가입 ","private-category-restriction-all.content":"해당 카테고리에는 선택 회원만 액세스할 수 있습니다.","post-list-classic.comments":"Comments","login-to-comment.login":"로그인","block-member-modal.are-you-sure":"해당 회원을 정말 차단 조치합니까?","paid-plans-vertical-status-content.back-to-forum":"Back to Forum","category-list-item.total-posts":"{count, plural, other {게시물 {count,number}개}}","comment-actions.share-comment":"공유","breadcrumbs.edit-category":"Edit Category","edit-category-form.description-label":"머리글 부제","manage-category-members-plans-list-item.connected":"연결됨","private-profile-actions.my-drafts":"임시보관","not-logged-in-with-plans-empty-state.title":"{forumTitle} 페이지 구독하기","category-actions.manage-category-members-sm-empty":"회원","manage-categories-list.specific-members-only-tooltip":"비공개","private-category-restriction-anonymous-view-plans-all.cta":"View Plans","post-list-classic.likes":"Likes","report-abuse-form.spam":"스팸 및 광고 콘텐츠","unfollow-category-modal.unfollow":"팔로우 중지","corvid.post-auto-suggestions.turn-off-suggestions":"추천 게시물 비공개","breadcrumbs.account-suspended":"사용이 정지된 계정입니다!","restriction.title":"액세스 권한이 없습니다.","messages.post-moved":"게시물 이전 완료! \u003Cstrong\u003E \u003C\u002Fstrong\u003E ","create-post-button.create-new-question-info|abTranslate_1|similarPostsTest":"회원들의 응답 및 투표를 통해 베스트 답변을 선정합니다.","messages.comment-updated":"댓글이 \u003Cstrong\u003E업데이트\u003C\u002Fstrong\u003E되었습니다.","comment-edit-page-header.update":"저장","rich-content-editor.site-storage-limited":"파일을 업로드할 수 없습니다. 저희에게 문의해주세요.","publish-button.continue":"다음","member-sort-field.posts-count":"정렬: 게시물 수","recent-posts-widget.empty-state.no-posts.cant-create.content":"Currently there are no posts in this category","mobile-search-page.load-more":"Show more results","messages.user-unblocked":"\u003Cstrong\u003E해당 회원 차단 조치를 해제했습니다.\u003C\u002Fstrong\u003E ","no-member-results.nothings-coming-up":"검색 결과가 없습니다!","category-dropdown-select.error":"Category is not selected","post-list-item.view-count":"{count, plural, other {조회수 {count,number}회}}","profile-stats.follower-count-label_plural":"팔로워","unblock-member-modal.unblock-user":"이용자 차단 해제","manage-category-members-list-item.has-access-plan":"{plan} 역할 보유","paid-plan.validity.valid-until-canceled":"취소될 때까지 유효","move-post-confirmation-modal.public.description":"해당 게시물이 모두에게 공개됩니다.","manage-category-members-roles-search-empty-state.no-results-found":"역할을 찾을 수 없습니다.","role.moderator":"관리자","breadcrumbs.members":"회원","messages.profile-updated":"프로필이 업데이트 되었습니다!","category-actions.manage-category-members-plans":"{count, plural, other {구독자 {count,number}명}}","typing-list.is-typing":"{count, plural, other {회원 {count,number}명 입력 중...}}","paid-plan.validity.recurring-until-canceled-years":"취소될 때까지 매년","post-page-sidebar-new-posts.title":"최근 게시물","widget-sign-up-button":"가입\u002F로그인","manage-category-members-modal.member-management":"사이트 회원 관리","manage-category-members-modal.show-all":"전체","broken-state.suggestion-2":"인터넷 연결 상태를 확인합니다.","create-first-plan-modal.cancel":"취소","share-link.copy":"링크 복사","who-liked.header-title":"좋아요 {likes,number,compact}개","demo-modal.message-preview":"해당 게시판을 사용하려면 게시판을 활성화하세요.","profile-forum-posts.forum-posts":"게시판 게시물","role.wixExpert":"Wix Expert","messages.user-demoted-moderator":"해당 회원의 게시판 관리자 지정을 해제했습니다.","post-page.answering-off":"닫힘","delete-comment-modal.delete-answer":"답변 삭제","new-content.new-post":"새 게시물","unfollow-all-categories-modal.title":"전체 카테고리 팔로우 중지","manage-categories-list.paid-plans-tooltip":"구독","app.loading":"Loading...","promote-moderator-modal.have-access-to-categories":"해당 회원을 관리자로 지정하면 게시판 내의 모든 카테고리에 접속할 수 있는 권한이 주어집니다.","post-list-classic.recent-activity":"최근 활동","category-radio.category-subscribers":"구독자","messages.category-deleted":"카테고리 \u003Cstrong\u003E삭제 완료\u003C\u002Fstrong\u003E","login-to-comment.desktop.signup.description":"아직 회원이 아니세요? 지금 가입하여 게시물 및 댓글 활동을 시작할 수 있습니다.","paid-plan.validity.recurring-some-weeks":"{amount,number}주간 매주","messages.comment-invalid":"해당 댓글은 스팸으로 분류되어 게시할 수 없습니다.","post-list-compact.views":"Views","post-form.give-this-post-a-title":"+ 제목","category-select.all-posts":"전체 카테고리","members-placeholder.content":"모든 회원 목록을 확인하려면 사이트를 라이브로 게시한 후 Wix 계정으로 로그인하세요.","follow-member-modal.unfollow-user":"Unfollow {{name}}?","edit-category-form.title-edit":"카테고리 편집","login-to-comment.desktop.signup.title":"지금 가입하시겠습니까?","like-button.total-likes":"{count, plural, other {좋아요 {count,number}개}}","messages.reply-limit-reached":"You’ve reached your reply limit for today.","post-form.next":"다음","discard-post-modal.are-you-sure-discard-changes":"해당 변경 사항을 정말 취소하시겠습니까?","paid-plan.validity.valid-some-months":"{amount,number}개월간 유효","pagination.page":"Page {{page, number}}","like-button.is-unliked":"Is unliked","post-stats.view-count":"{count, plural, other {조회수 {count,number}회}}","post-stats.comment-count":"{count, plural, other {댓글 {count,number}개}}","manage-category-members-plans-empty-state.to-create-plans-go-to":"유료 회원에게 카테고리 액세스 권한을 제공하세요.\n\n\"유료 플랜 추가\" 버튼을 클릭하면 새로운 탭을 열 수 있습니다. 작업이 완료되면 해당 페이지로 다시 돌아와 플랜을 추가하세요.","comment.solved.best":"베스트 답변","comment-actions.report-answer":"답변 신고","demote-moderator-modal.delete-posts":"게시물 삭제 및 핀 추가","members-page.sign-up-title":"회원으로 가입하시겠습니까?","login-to-comment.desktop.signup.button":"가입하기","edit-category-form.read-permissions-all":"전체 이용자","discard-category-changes-modal.discard":"변경사항 취소","post-form.require-category":"First select a category then go ahead and publish","messages.post-deleted":"게시물이 삭제되었습니다.","profile-stats.follower-count":"{count,number,compact}명","a11y-lives-messages.post-create-success":"게시물이 추가되었습니다.","private-profile-actions.create-post":"Create a Post","promote-moderator-modal.disable-commenting":"댓글 차단","breadcrumbs.create-question":"문의 게시물 추가","messages.user-promoted-moderator":"해당 회원의 게시판 관리자 지정이 완료되었습니다.","manage-category-members-list-item.has-access":"액세스 권한 있음","manage-category-members-modal.filter-members":"회원","disconnect-plan-modal.disconnect-plan":"“{planName}” 플랜 연결을 해제하시겠습니까?","a11y-lives-messages.comment-like-success":"댓글에 좋아요가 추가되었습니다.","manage-category-members-list.type-role":"Role","no-search-results.no-results-found-title":"검색 결과가 없습니다!","walking_on_the_moon":"Sting님이 삭제를 원하는 키의 예시입니다.","comment-create-modal.tooltip":"You can minimize this window","demote-moderator-modal.confirm":"확인","breadcrumbs.profile":"내 프로필","comment.edited":"수정: {timeAgo}","edit-forum-form.write-permissions-tooltip":"게시판의 모든 회원이 해당 카테고리에서 게시물을 작성할 수 있도록 설정하거나 관리자 및 운영자만 작성할 수 있도록 설정합니다.","text-editor.placeholder":"게시물 내용을 입력하고  이미지, 동영상 등을 추가하여 더 많은 독자를 유도할 수 있습니다.","edit-category-form.read-permissions-tooltip":"해당 카테고리 사용 권한을 설정하세요. 회원만 열람할 수 있도록 설정하거나 모두에게 공개할 수 있습니다.","comment.solved":"베스트 답변 선택 완료","reply-button.reply-to":"{userName}님에게 댓글","post-actions.follow":"게시물 팔로우","create-first-plan-modal.option-3":"정기 또는 1회 결제 서비스 지원","manage-category-members-list-item.has-access-role":"{role} 역할 보유","share-button.link":"공유","edit-forum-form.title-label":"게시판 이름","post-stats.reply-count":"{count, plural, other {댓글 {count,number}개}}","corgies_are_great":"The Queen님은 해당 키의 삭제를 원하지 않습니다.","manage-category-members-modal.manage-roles-link":"+ 역할 추가","category-radio.questions":"질문","who-liked.aria-label":"List of people who liked this","create-post-card.create-new-question":"문의 게시물","post-form.show-guidelines":"Show guidelines","manage-category-members-plans-modal.create-plan":"+ 플랜 추가","questions-category-page.no-posts-yet.title":"게시물을 작성하시겠습니까?","move-post-confirmation-modal.membersOnly.description":"해당 게시물은 로그인 회원만 열람할 수 있습니다.","share-comment-modal.share-answer":"답변 공유","filter-and-sort-button.filter":"필터","manage-category-members-search-empty-state.try-another-search":"다른 검색어를 사용해보세요.","edit-category-form.visibility-permissions-tooltip":"카테고리 접근 권한을 설정하세요. 예를 들면, 유료 회원 카테고리는 전체 공개되지만 비밀 관리자 카테고리는 비공개로 설정할 수 있습니다.","publish-button.publish":"게시","post-sorting.views":"조회순","provision-page.go-to-editor":"Go to Editor","block-member-modal.block-user":"회원 차단","search-page.no-results-content":"게시판, 게시물은 물론, 댓글 및 회원까지 검색하실 수 있습니다.","edit-category-form.visibility-permissions-all":"전체 이용자","manage-category-members-modal.title":"Manage Category Access","recent-posts-widget.empty-state.no-posts.cant-create.title":"Wait for Conversation","messages.post-invalid":"해당 게시물은 스팸으로 분류되어 게시할 수 없습니다.","private-category-restriction-anonymous-view-plans-all.title":"View Pricing Plans","members-placeholder.title":"회원 페이지입니다.","messages.profile-name-required":"작성자 이름을 입력하세요! \u003Cstrong\u003E \u003C\u002Fstrong\u003E  ","comment-create-modal.reply-to":"답글 상대:","category-dropdown-select.questions":"Questions only","a11y-lives-messages.comment-publish-success":"댓글이 게시되었습니다.","share-form.share-link":"링크 공유","badge.admin":"운영자","post-actions.edit-post":"편집","post-page.answering-bar-off":"답변 기능이 차단되었습니다.","like-button.is-liked":"Is liked","post-filter.discussions":"그룹 대화","edit-forum-form.button-update":"저장","post-page.edited":"수정:","manage-category-members-modal.search":"검색하기","comment-actions.edit-comment":"댓글 수정","disconnect-plan-modal.text-line-1":"“{planName}” 구독 플랜 회원은 더 이상 해당 카테고리에 액세스할 수 없습니다.","messages.all-categories-unsubscribed":"팔로우 중인 카테고리가 없습니다.","post-create-modal.create-new-post":"Create New Post","breadcrumbs.search":" ","messages.post-solved-comment-added":"\u003Cstrong\u003E베스트 답변\u003C\u002Fstrong\u003E으로 표시하였습니다.","search-input.placeholder":" ","no-posts.title":"아직 게시물이 없습니다.","discard-comment-modal.discard-post":"댓글을 삭제합니까?","member-sort-field.follower-count":"정렬: 팔로워 수","create-category-card.get-conversation-going":"Get the conversation going with a brand new category","category-dropdown-select.discussions":"Discussions only","role.wixTribeLeader":"Tribe Leader","broken-state.suggestions-title":"기술적인 오류가 발생하였습니다. 로그인 없이 창을 닫으면 변경사항은 저장되지 않습니다.","post-stats.answer-count":"{count, plural, other {답변 {count,number}개}}","post-form.update":"저장","discard-comment-modal.cancel":"취소","post-page.commenting-blocked":"댓글 추가 권한이 없습니다.","category-actions.manage-category-members-plans-empty":"구독","login-screen.login-description":"해당 카테고리는 회원전용 카테고리입니다. 카테고리에 액세스하려면 가입 및 로그인하세요.","post-edit-page-header.update":"저장","move-category-confirmation.confirm":"Move","comment-edit-modal.edit-answer":"답변 편집","report-abuse-form.offensive-media":"부적절한 이미지","create-first-plan-modal.make-money":"게시판을 통한 수익 창출","video-embed.load-video":"재생","date":"{time,date,wcShortDate}","messages.demo-mode-site":"설정이 완료되지 않은 게시판입니다. 잠시 후 다시 시도하세요!","category-actions.manage-category-members-total-members":"{count, plural, other {(회원 {count,number}명)}}","account-suspended.contact-owner":"자세한 사항은 사이트 소유자에게 문의하세요.","manage-categories.update-button":"완료","comment-actions.edit-reply":"댓글 편집","share-comment-modal.share-comment":"공유","paid-plan.validity.valid-some-days":"Valid for {{amount, number}} days","demote-moderator-modal.remove-moderator-permissions":"관리자 지정을 해제합니다","messages.post-unpinned":"게시물 핀이 제거되었습니다. \u003Cstrong\u003E \u003C\u002Fstrong\u003E ","breadcrumbs-actions.manage-categories":"카테고리 관리","edit-category-form.title-create":"카테고리 추가","private-category-restriction.content":"해당 카테고리에는 선택 회원만 액세스할 수 있습니다.","choose-category-modal.subtitle":"어떤 카테고리에 게시물을 게시하시겠습니까?","post-list-footer.recent-activity":"최근 활동","comment-actions.unmark-as-solved":"베스트 답변 표시 취소","login-to-comment.desktop.login.description":"토론 및 댓글 활동을 시작하세요.","comment-actions.share-reply":"댓글 공유","category-actions.follow":"팔로우","followers-page.empty-state-content-current-user":"팔로우를 유도하려면 게시물을 작성하거나 다른 회원을 팔로우해보세요.","role.admin":"운영자","discard-post-modal.discard-post":"게시물 삭제 안내","edit-category-form.write-permissions-label":"카테고리 게시 권한","comment-edit-modal.edit-reply":"댓글 편집","messages.post-updated":"변경사항 저장 완료! \u003Cstrong\u003E \u003C\u002Fstrong\u003E ","share-button.via-link":"Share via link","fullDate":"{time,date,wcFullDate}","breadcrumbs.edit-post":"편집","post-edit-modal.edit-post":"게시물 편집","unfollow-all-categories-modal.cancel":"취소","unblock-member-modal.confirm":"해제","paid-plan.validity.valid-one-years":"1년간 유효","more-button.more-actions":"More actions","category-actions.follow-notification-tooltip-following":"현재 해당 카테고리를 팔로우하고 신규 게시물 알림을 수신하고 있습니다.","comment-actions.edit-answer":"답변 편집","category-list-item.subscription":"Subscribers","broken-state.suggestion-1":"페이지를 새로고침합니다.","messages.commenting-disabled":"\u003Cstrong\u003E게시물이 비활성화되었습니다.\u003C\u002Fstrong\u003E 회원들이 답변 또는 의견을 추가할 수 없습니다.","messages.site-storage-limited":"파일을 업로드할 수 없습니다. 저희에게 문의해주세요.","role.wixArenaMember":"Wix Marketplace 회원","discard-post-modal.are-you-sure-question":"해당 질문 관련 변경사항을 정말 취소하시겠습니까?","role.wixConMiami":"WixCon Miami 2018","category-create-button.create":"Create","paid-plan.validity.recurring-one-months":"Every month for one month","private-category-restriction-anonymous-login-all.title":"이미 사용 중인 계정이 있습니까?","edit-forum-form.header-title-label":"머리글 제목","messages.comment-limit-reached":"You’ve reached your comment limit for today.","category-actions.manage-category-members-add-btn":"추가","private-category-restriction.cta":"메인 페이지","following-page.empty-state-content-current-user":"게시판에서 활동하는 회원들을 조회 및 팔로우해보세요.","move-to-category.private-tooltip":"비공개","filter-and-sort-modal.apply":"Apply","manage-category-members-plans-empty-state.cta":"플랜 추가","post-form.title":"Title","post-page-sidebar-new-posts.related-posts":"유사 게시물","private-category-restriction-anonymous-register-all.title":"지금 가입하시겠습니까?","move-to-category.move-to-category":"카테고리 선택하기","create-post-button.create-new-question":"문의 게시물","manage-category-members-plans-search-empty-state.no-results-found":"No Paid Plans Found","post-sorting.bestMatch":"Best Match","post-auto-suggestions.looking-for-content":"유사 게시물 검색 중...","report-member-modal.report-member":"회원 신고","edit-category-form.write-permissions-specific-members":"카테고리 액세스 가능 회원","promote-moderator-modal.cancel":"취소","discard-category-changes-modal.cancel":"계속 편집","header-back-button.back":"뒤로","demo-modal.message-site":"설정이 완료되지 않은 게시판입니다. 잠시 후 다시 시도하세요!","followers-menu.following":"팔로잉","edit-forum-form.delete-cover":"삭제","post-main-actions.like-count":"{{count, number}}개","messages.post-limit-reached":"일일 게시물 게시 제한에 도달하였습니다.","paid-plan.validity.valid-some-weeks":"{amount,number}주간 유효","header-buttons.sign-up":"가입하기","reply-to-answer-comment-actions.delete-reply":"댓글 삭제","move-post-modal.move-this-post":"게시물 이동 대상:","messages.post-solved-comment-removed":"\u003Cstrong\u003E베스트 답변\u003C\u002Fstrong\u003E 표시를 취소하였습니다.","profile-menu-item.posts-count":"{count, number, compact}","private-category-restriction-anonymous-login-all.content":"게시판에 액세스하려면 로그인하세요.","paid-plan.free-trial-days":"{freeTrialDays, plural, other {{freeTrialDays,number}일 무료 체험}}","profile-page.edit-profile":"프로필 편집","post-auto-suggestions.no-comments":"댓글 0개","edit-forum-form.title-edit":"메인 페이지 편집","default-category-description":"카테고리의 주제를 정해주세요. 이용자가 관심사에 따라 게시판 카테고리를 선택할 수 있습니다.","promote-moderator-modal.set-as-moderator":"관리자로 지정합니다","broken-state.main-message":"Refresh the page to try again.","role.wixCodeExpert":"Wix Code Expert","post-actions.share-post":"공유","move-category-confirmation.cancel":"취소","delete-category-modal.will-delete-posts-and-comments":"게시물과 댓글이 모두 삭제됩니다. 삭제를 원하지 않을 경우 다른 위치로 카테고리로 옮겨주세요.","profile-stats.follower-count-label":"팔로워","filter-and-sort-modal.filter":"Filter","recent-posts-widget.empty-state.no-posts.content":"첫 카테고리 게시물을 작성해보세요.","comment-actions.delete-answer":"답변 삭제","messages.mark-all-as-read":"모든 게시물을 읽음으로 표시하였습니다.","manage-category-members-list-item.has-access-badge":"{badge} 배지 보유","edit-category-form.read-permissions-specific-members":"선택 회원","post-list-classic.table-header-more-button":"Item option menu","comment-create-modal.publish":"게시","filter-and-sort-modal.sort":"Sort","promote-moderator-modal.move-posts":"게시물 카테고리 변경","input-text.characters-left":"{count}자 남았습니다.","breadcrumbs-actions.edit-forum":"메인 페이지 편집","pagination.last-page":"Last page","recent-activity.mark-all-as-read":"전체 읽은 메시지로 표시","post-actions.disable-commenting":"댓글 차단","no-member-results.try-again":"다른 검색어를 사용해보세요.","header.sign-up-button":"가입\u002F로그인","recent-posts-widget.empty-state.no-posts.title":"게시물을 작성하시겠습니까?","manage-categories-list.members-only-tooltip":"비공개","post-page-sidebar-category-list.title":"카테고리","delete-post-modal.will-detele-comments":"게시물을 삭제하면 게시물의 댓글도 함께 삭제됩니다.","post-create-modal.publish":"게시","member-sort-field.oldest-first":"정렬: 오래된순","comment.comment":"댓글","no-user-posts.check-back-soon":"해당 회원이 게시물을 추가하면 팔로우 및 공유할 수 있습니다. 잠시 후 다시 확인해 주세요.","post-title.discussion-post-type":"그룹 대화","breadcrumbs.followers":"팔로워","edit-category-form.general-section":"카테고리 정보","category-list-item.view-category":"카테고리 보기","video-embed.disabled-tooltip":"동영상을 재생하려면 라이브 사이트에서 해당 게시물을 열람하세요.","delete-post-modal.delete-post":"삭제","rich-content-editor.upload-size-limit":"파일이 너무 큽니다. 최대 크기 제한은 {amount,number,compact}입니다.","edit-category-form.visibility-permissions-label":"카테고리 목록에서 해당 카테고리를 조회할 수 있는 사용자를 선택하세요.","text-editor.comment-placeholder":"댓글을 입력하세요.","post-page.commenting-disabled":"닫힘","discard-category-changes-modal.title":"편집이 완료되었나요?","category-radio.category-private":"비공개","login-to-comment.desktop.login.button":"로그인","forum_web_forum_new_category_description":"카테고리의 주제를 정해주세요. 이용자가 관심사에 따라 게시판 카테고리를 선택할 수 있습니다.","promote-moderator-modal.confirm":"확인","not-found.back":"뒤로","create-post-button.create-new-question-title":"문의 게시물","provision-page.get-forum":"Get Your Forum","messages.post-top-comment-added":"\u003Cstrong\u003E베스트 댓글\u003C\u002Fstrong\u003E로 지정되었습니다.","manage-category-members-no-plans-modal.content":"Give paying members access to this category. You can create subscription plans on desktop.","report-post-modal.help-us-understand":"해당 게시물을 신고하는 이유는 무엇입니까?","move-to-category.subscribers-tooltip":"구독자","comment.solved.label":"Navigate to solved comment","edit-category-form.delete-cover":"이미지 삭제","category-radio.questions-and-discussions":"질문 및 그룹 대화","restriction-private-member.content":"커뮤니티 회원으로 가입하여 토론에 참여하세요.","edit-subcategory-form.visibility-permissions-label":"카테고리 목록에서 하위 카테고리를 조회할 수 있는 사용자를 선택하세요.","manage-category-members-modal.show-added":"Added","messages.all-categories-subscribed":"전체 카테고리를 팔로우합니다.","post-list-classic.views":"조회","edit-subcategory-form.title-edit":"Edit Subcategory","demo-modal.confirm":"확인","move-to-category.members-tooltip":"회원","private-category-restriction-for-paying-members.title":"{forumTitle} 페이지 구독하기","edit-category-form.button-update":"저장","messages.category-subscribed":"해당 카테고리 \u003Cstrong\u003E팔로우를\u003C\u002Fstrong\u003E 시작합니다.","comment-form.publish":"게시","messages.activate-subscriptions-link":"유료 플랜 앱을 추가하세요.","more-button.more-actions-for":"{target}에 대한 추가 작업","categories-settings-form.img-is-uploading":"이미지 불러오기가 완료되면 업데이트를 클릭하세요.","report-comment-modal.report-answer":"답변 신고","no-user-posts.nothing-here-yet":"게시물이 없습니다!","follow-member-modal.cancel":"취소","header-title.default-title":"회원","no-posts.content":"다음에 다시 확인해주세요.","report-comment-modal.report-comment":"댓글 신고","corvid.post-auto-suggestions.turn-on-suggestions":"추천 게시물 표시","create-first-plan-modal.option-2":"다양한 구독 플랜 추가","not-found.head-back":"검색하신 페이지는 삭제된 페이지입니다. 계속 게시판 게시물을 확인하려면 이전 페이지로 돌아가주세요.","messages.rce-file-too-big":"파일이 너무 큽니다. 최대 크기 제한은 {size}MB입니다.","profile-forum-comments.forum-comments":"게시판 댓글","comment.reply":"댓글","manage-categories.main-page":"메인 페이지 머리글","private-category-restriction-for-paying-members.cta":"플랜 보기","post-page.not-fount-content":"검색하신 게시물은 삭제된 게시물입니다. 계속 게시판 게시물을 확인하려면 이전 페이지로 돌아가주세요.","messages.category-created":"카테고리가 \u003Cstrong\u003E추가\u003C\u002Fstrong\u003E되었습니다.","manage-category-members-roles-empty-state.to-create-roles-go-to":"역할을 추가하면 해당 카테고리에 대한 동일한 액세스 권한을 다른 회원에게 제공할 수 있습니다.","breadcrumbs.create-category":"Create Category","search-page.no-results-title":"게시판 및 게시물을 찾아보세요!","move-to-category.move-post":"변경","post-form.content-error-tooltip":"Post title area appears to be blank. Please write something to publish your post.","a11y-separator.dash":"대시","followers-page.empty-state-title-current-user":"팔로워가 없습니다!","edit-forum-form.title-tooltip":"짧고 기억하기 좋은 게시판 이름을 추가하세요.","create-post-card.create-post":"게시물 작성하기","text-editor.answer-placeholder":"답변을 알고 있다면 여기에 내용을 적어주세요.","category-actions.manage-category-members-roles":"{count, plural, other {역할 {count,number}개}}","report-abuse-form.cancel-button":"취소","demo-modal.activate-forum":"활성화","messages.post-top-comment-removed":"\u003Cstrong\u003E베스트 댓글\u003C\u002Fstrong\u003E 지정이 취소되었습니다.","category-actions.subscribe-all-categories":"전체 카테고리 팔로우","post-filter.questions":"문의","category-actions.edit-category":"카테고리 편집","profile-stats.posts-count-label_plural":"게시물","login-screen.login-required":"액세스 권한이 없습니다.","edit-forum-form.read-permissions-tooltip":"해당 카테고리 사용 권한을 설정하세요. 회원만 열람할 수 있도록 설정하거나 모두에게 공개할 수 있습니다.","post-form.uploading":"업로드가 완료되면 게시 버튼을 클릭하세요.","profile-menu-item.posts-label":"게시판 게시물","quick-user-info.comments":"댓글","move-post-confirmation-modal.confirm":"게시물 이동","private-category-restriction-anonymous-login-all.cta":"로그인","manage-category-members-plans-list-item.edit":"편집","create-first-plan-modal.confirm":"플랜 추가","messages.post-pinned":"게시물 핀 추가 완료! \u003Cstrong\u003E \u003C\u002Fstrong\u003E ","move-category-confirmation.are-you-sure":"\"{child}\" 카테고리를 \"{parent}\" 카테고리의 하위 카테고리로 지정하시겠습니까? 선택된 회원에게만 액세스 권한이 제공됩니다.","edit-forum-form.description-label":"머리글 부제","post-title.question-post-type":"문의","comment-actions.delete-reply":"댓글 삭제","edit-category-form.title-label":"이름","category-actions.manage-category-members":"권한 설정","category-page-desktop-header.categories":"카테고리","discard-post-modal.are-you-sure":"해당 게시물 변경사항을 정말 취소하시겠습니까?","manage-category-form.read-permissions-tooltip":"특정 회원, 배지, 역할 또는 구독에 액세스 권한을 제공하려면 “선택 회원” 옵션을 선택하세요.","manage-category-members-search-empty-state.no-results-found":"회원을 찾을 수 없습니다.","profile.confirm":"확인","post-list-compact.comments":"Comments","post-list-item.title-in-category":"in","no-filtered-posts.title":"게시물이 없습니다.","profile-stats.following-count":"{count,number,compact}명","messages.demo-mode-preview-activate":"게시판 활성화하기 \u003E","a11y-lives-messages.search-results":"{count, plural, other {검색 결과 {count,number}개 발견}}","manage-categories.create-category-button":"+ 카테고리 추가","delete-comment-modal.are-you-sure":"해당 댓글을 정말 삭제하시겠습니까?","paid-plan.validity.recurring-some-years":"{amount,number}년간 매년","comment-form.send":"등록","questions-category-page.no-posts-yet.body":"첫 카테고리 게시물을 작성해보세요.","rich-content-editor.video-too-big":"That video file is too big. It must be less than 500Mb.","edit-subcategory-form.read-permissions-label":"하위 카테고리 액세스 권한","manage-category-members-badges-search-empty-state.no-results-found":"배지를 찾을 수 없습니다.","report-comment-modal.help-us-understand":"해당 댓글을 신고하는 이유는 무엇입니까?","reply-to-answer-actions.share.reply":"댓글 공유","post-list-item.discussion-post-type":"그룹 대화","post-form.require-content":"내용을 입력하세요!   ","edit-category-form.permissions-disabled-message":"하위카테고리 게시물 조회 권한을 편집하려면 메인 카테고리로 이동하여야 합니다.","post-page-sidebar-stats.view-count":"{count, plural, other {조회수 {count,number}회}}","category-actions.manage-category-members-edit-btn":"편집","post-actions.unfollow":"게시물 팔로우","post-list-item.post-closed":"댓글 기능 차단","messages.rce-file-download-will-begin-shortly":"다운로드가 시작됩니다. 화면에 변화가 없다면 다시 여기를 클릭하세요.","create-category-card.create-new-category":"Create New Category","pagination.previous-page":"Previous page","post-auto-suggestions.turn-on-suggestions":"유사 게시물 표시","edit-category-form.post-types-all":"그룹 대화 및 문의","open-manage-categories-modal-button":"Open categories manager modal","unblock-member-modal.are-you-sure":"해당 회원의 차단 조치를 정말 해제합니까?","messages.rce-file-size-limit-reached":"파일이 너무 큽니다. 최대 크기 제한은 {size}MB입니다.","mixed-category-page.create-new-post.body":"첫 카테고리 게시물을 작성해보세요.","profile-stats.posts-count-label":"게시물","category-radio.current":"근무처","manage-category-members-sm-modal.title":"카테고리 액세스 가능 회원","manage-category-members-modal.show-not-added":"Not added","no-filtered-posts.reset-your-filter":"다른 게시물을 조회하려면 필터를 변경하세요.\n","filter-and-sort-modal.cancel":"Cancel","promote-moderator-modal.what-they-can-do":"관리자가 수행할 수 있는 작업은 다음과 같습니다:","delete-category-modal.delete-category":"카테고리 삭제","manage-categories.characters-left":"{count, plural, other {{count,number}자 남음}}","disconnect-plan-modal.cancel":"취소","no-comments.title":"아직 댓글이 없습니다.","category-actions.unsubscribe-category":"카테고리 팔로우 중지","messages.comment-deleted":"댓글이 \u003Cstrong\u003E삭제\u003C\u002Fstrong\u003E되었습니다.","load-more.load":"더보기 ({postsLeft})","discard-comment-modal.discard-reply":"댓글 폐기","guidelines.title.category-guidelines":"Guidelines","messages.category-updated":"카테고리 \u003Cstrong\u003E업데이트 완료\u003C\u002Fstrong\u003E","restriction-private-member.title":"지금 가입하시겠습니까?","delete-comment-modal.delete-reply":"댓글 삭제","manage-category-members-modal.add":"추가","manage-categories-actions.delete":"삭제","post-list-classic.title":"제목","report-member-modal.help-us-understand":"해당 회원을 신고하는 이유는 무엇입니까?","edit-category-form.title-placeholder":"카테고리명을 입력하세요.","discard-post-modal.cancel":"취소","manage-categories.back-button":"뒤로","demote-moderator-modal.cancel":"취소","manage-categories.main-page-hidden":"본 머리글은 비공개로 설정되어 있습니다. 카테고리가 여러 개인 경우 해당 머리글이 게시판의 메인 페이지에 표시됩니다.","edit-category-form.header-title-placeholder":"제목 추가","private-category-restriction-anonymous-view-plans-all.content":"To get exclusive access to this forums content, purchase one of the available pricing plans.","category-page.no-posts-yet":"게시물을 작성하시겠습니까?","edit-forum-form.change-cover":"이미지 변경","delete-comment-modal.delete-comment":"삭제","guidelines.modal.okay-button":"Okay","modal.close":"Close","delete-post-modal.will-detele-answers":"게시물을 삭제하면 게시물의 답변도 함께 삭제됩니다.","post-auto-suggestions.similar-posts":"유사 게시물:","manage-category-members-plans-modal.title":"카테고리 구독 플랜","messages.user-blocked":"\u003Cstrong\u003E해당 회원의 차단 조치를 완료했습니다\u003C\u002Fstrong\u003E ","block-confirmation.cancel-button":"취소","comment-form.edited":"수정: {timeAgo}","messages.category-access-updated":"Category access \u003Cstrong\u003Eupdated\u003C\u002Fstrong\u003E.","not-logged-in-with-plans-empty-state.content":"아직 계정이 없다면 플랜을 구독하세요.","paid-plan.validity.valid-some-years":"{amount,number}년간 유효","follow-button.unfollow":"팔로잉","edit-category-form.post-types-tooltip":"그룹 대화는 공개적으로 의견을 공유하는 좋은 방법입니다. 문의를 선택하고 회원들이 문의 게시물 추가를 허용하세요. 적절한 답변에 투표하고 베스트 답변을 조회할 수 있습니다.","account-suspended.account-suspended":"사용이 정지된 계정입니다!","edit-category-form.button-cancel":"취소","edit-category-form.write-permissions-tooltip":"게시물 게시 권한을 일반 회원에게 허용하거나 운영자 및 관리자로 제한할 수 있습니다.","login-to-comment.login-to-join":"댓글을 남기려면 {login}하세요.","paid-plan.validity.recurring-one-years":"Every year for one year","manage-category-members-modal.filter-roles":"역할","messages.main-page-updated":"메인 페이지가 \u003Cstrong\u003E업데이트\u003C\u002Fstrong\u003E되었습니다.","move-category-confirmation.title":"카테고리를 이동합니까?","private-category-restriction-anonymous-register-all.cta":"시작하기","comment-actions.mark-as-solved":"베스트 답변 표시","text-editor.reply-placeholder":"댓글을 작성하세요.","filter-and-sort-button.sort":"정렬","delete-confirmation.delete":"삭제","post-filter.show-all":"전체 게시물","private-category-restriction-all.title":"액세스가 없습니다.","discard-post-modal.discard-changes":"변경사항 취소","member-filter.placeholder":"회원 찾기","profile-stats.following-count-label":"팔로잉","messages.post-subscribed":"게시물 팔로우를 시작합니다. \u003Cstrong\u003E \u003C\u002Fstrong\u003E  ","edit-category-form.read-permissions-label":"카테고리 액세스 권한","rich-content-editor.video-upload-failure":"동영상 업로드에 실패하였습니다. 인터넷 연결 상태를 확인한 후 다시 시도해보세요.","paid-plan.validity.valid-one-days":"Valid for one day","messages.post-too-large":"게시물이 너무 커서 게시할 수 없습니다. 추가되어 있는 미디어를 삭제해보세요.","comment.load-replies":"댓글 더보기","breadcrumbs.login":"Log in","create-first-plan-modal.option-1":"독점 카테고리 제공 및 구독 유도","post-auto-suggestions.no-similar-posts":"유사 게시물이 없습니다.","messages.post-category-changed":"Post category successfully \u003Cstrong\u003Echanged\u003C\u002Fstrong\u003E.","move-post-confirmation-modal.private.description":"해당 게시물은 본 카 카탈로그 액세스 권한을 가진 회원에게만 표시됩니다.","post-page.back-to-discussion":"View rest of the discussion","category-page.create-new-post":"첫 카테고리 게시물을 작성해보세요.","post-list-item.total-replies":"{count, plural, other {답글 {count,number}개}}","manage-category-members-list.type-badge":"배지","comment-form.cancel":"취소","paid-plan.validity.recurring-some-months":"{amount,number}개월간 매월","category-page.private-empty-state.add-members":"Add Members","paid-plan.validity.valid-one-months":"1개월간 유효","page-metadata.page":"{page,number,compact} 페이지","edit-category-form.write-permissions-admins":"운영자 및 관리자만 게시물 추가 가능","footer-posts.no-posts-yet":"게시물을 작성하시겠습니까?","post-actions.delete-post":"삭제","manage-categories.title":"카테고리 관리","edit-category-form.read-permissions-all.subtitle":"모든 사이트 방문자에게 게시물 공개","category-actions.unsubscribe-all-categories":"전체 카테고리 팔로우 중지","edit-category-form.read-permissions-members":"가입 회원"},"lang":"ko"};
    window.__STATICS_VERSION__ = '1.2530.0';
    window.__WS_CONFIG__ = {"url":"deprecated","token":"deprecated"};
    window.__LOCALE__ = "ko";
    window.__IS_DEV_MODE__ = false;
    window.__FEDOPS_APP_NAME__ = 'communities-forum-member-comments-page';
    window.__webpack_public_path__ = "\u002F\u002Fstatic.parastorage.com\u002Fservices\u002Fcommunities\u002F1.2530.0\u002F";
  </script>
  

  <div id="root"><div id="direction-provider-wrapper"><div dir="ltr"><div id="content-wrapper"><div class="_1PiV8 app-desktop page-background-color page-border-color"><div><div data-hook="message" aria-live="polite"></div></div><div tabindex="-1" aria-labelledby="frm-ma-header" class="_1_wLP focus-visible" data-focus-visible-added=""><div class="_165yv"><h3 id="frm-ma-header" class="page-title-color _399uX page-title-font members-text-color">게시판 댓글</h3></div><div><div class="_1SJtR" data-hook="animated-loader__container"><div><div><div><div><div class="_3nrzG"><article class="_3zYMz forum-card-background-color forum-text-color forum-card-border-color forum-content-classic-font" style="border-width:1px"><div class="_1CM7r forum-card-background-color" style="border-color:rgba(0, 0, 0, 0.2)"><div class="forum-title-classic-font"><h2 class="_1KEE0"><object type="communities/link"><a class="forum-text-color forum-link-hover-color" href="https://jemilykoo.wixsite.com/website/forum/yeohaeng-gesipan/yeoreume-gajogi-hamgge-gagi-joheun-hyuyangji-cuceonhaejuseyo" target="_top">여름에 가족이 함께 가기 좋은 휴양지 추천해주세요!</a></object></h2></div><div class="_1SpaP _3TxB3 forum-separator-background-color"></div><div style="font-size:12px" class="forum-content-classic-font"><div class="forum-content-classic-font"><div class="_1C1D8 forum-content-classic-font rgb(0, 0, 0) post-footer" data-hook="post-excerpt-footer"><div class="_1zYxN"><div class="_2j1oN post-stats"><span class="_1FH1_" data-hook="post-stats__comment-count">댓글 2개</span><span class="_1_Mrz" data-hook="post-stats__view-count">조회수 4회</span></div></div><div class="_2VWFO"><button class="_1SZiL forum-content-classic-font" aria-live="assertive"><span class="_1WGxV" data-hook="post-excerpt-footer__like-count" aria-hidden="true">1개</span><div class="_3hDG4 _1U7IE" aria-label="좋아요 1개 Is liked" data-hook="like-button"><div class="FFLzJ"><div class="_2d2bJ"></div></div><div class="_1fVR3"><div class="_2d2bJ"></div></div><div class="_3vv94"><div class="_2d2bJ"></div></div><div class="_1tXxG"><div class="_2d2bJ"></div></div><div class="_2qAdm"></div><svg  width="18" viewBox="0 0 19 19"><path id="a" d="M17.234 5.47a3.919 3.919 0 0 0-2.315-2.263c-2.022-.6-4.21.137-5.424 1.827C8.291 3.38 6.15 2.646 4.152 3.207a3.76 3.76 0 0 0-2.405 2.35 4.94 4.94 0 0 0 .57 4.264c1.603 2.698 6.76 5.927 6.938 6.092a.454.454 0 0 0 .534 0c.267-.174 5.343-3.229 6.938-6.092a5.16 5.16 0 0 0 .507-4.352z"></path></svg></div></button></div></div></div></div></div><div class="_1pK4g"><div class="_2OrnI _472wD _2N7hC comment-header"><a href="https://jemilykoo.wixsite.com/website/profile/userID/profile/" class="forum-link-hover-color"><div class="_1MNBa"><div class="_16RtV"><div data-hook="mcl-showable-content"></div><span class="gLbMq _1aPRN avatar-image"><div class="B9z5- fluid-avatar-image"></div></span></div><div class="_3TAMr forum-text-color"><div class="_19Aha"><span class="_3GqLz forum-text-color forum-link-hover-color comment-avatar__profile-name">userID</span></div><span class="trQTR" data-hook="quick-user-info"></span></div></div></a><span class="_2IqrX"><span class="_3uT17 time-ago" data-hook="time-ago">6월 23일</span></span><div class="_3g2el _472wD"><div class="_3VHHm more-button" data-hook="more-button"><button class="_3VtFf button-hover-fill forum-icon-fill" id="more-button-60d2f28188d0340015ed3abd" aria-label="More actions" aria-haspopup="true" aria-expanded="false"><svg xmlns="http://www.w3.org/2000/svg" width="19" viewBox="0 0 19 19" role="img" ><path d="M17.444 6A1.5 1.5 0 1 1 19 4.5 1.528 1.528 0 0 1 17.444 6zm0 5A1.5 1.5 0 1 1 19 9.5a1.528 1.528 0 0 1-1.556 1.5zm0 5A1.5 1.5 0 1 1 19 14.5a1.528 1.528 0 0 1-1.556 1.5z"></path></svg></button></div></div></div></div><a class="_3XrIr" href="https://jemilykoo.wixsite.com/website/forum/main/comment/60d2f28188d0340015ed3abd" target="_top"><div class="_2HfMI forum-link-hover-color forum-text-color"><div class="_19wh5 _39XLG" data-hook="post-description"><div><div class="l0h59">fffff</div></div></div></div></a><div class="_3yFwA RXKd_ forum-text-color comment-footer"><div class="_1Yivs"><span class="_2Qb5F" data-hook="comment-footer__like-count" aria-hidden="true">0개</span><button class="_4wNQy forum-content-classic-font" aria-live="assertive"><div class="_3hDG4" aria-label="좋아요 0개 Is unliked" data-hook="like-button"><div class="FFLzJ"><div class="_2d2bJ"></div></div><div class="_1fVR3"><div class="_2d2bJ"></div></div><div class="_3vv94"><div class="_2d2bJ"></div></div><div class="_1tXxG"><div class="_2d2bJ"></div></div><div class="_2qAdm"></div><svg  width="18" viewBox="0 0 19 19"><path id="a" d="M17.234 5.47a3.919 3.919 0 0 0-2.315-2.263c-2.022-.6-4.21.137-5.424 1.827C8.291 3.38 6.15 2.646 4.152 3.207a3.76 3.76 0 0 0-2.405 2.35 4.94 4.94 0 0 0 .57 4.264c1.603 2.698 6.76 5.927 6.938 6.092a.454.454 0 0 0 .534 0c.267-.174 5.343-3.229 6.938-6.092a5.16 5.16 0 0 0 .507-4.352z"></path></svg></div></button></div></div></article></div><div class="_3nrzG"><article class="_3zYMz forum-card-background-color forum-text-color forum-card-border-color forum-content-classic-font" style="border-width:1px"><div class="_1CM7r forum-card-background-color" style="border-color:rgba(0, 0, 0, 0.2)"><div class="forum-title-classic-font"><h2 class="_1KEE0"><object type="communities/link"><a class="forum-text-color forum-link-hover-color" href="https://jemilykoo.wixsite.com/website/forum/yeohaeng-gesipan/yeoreume-gajogi-hamgge-gagi-joheun-hyuyangji-cuceonhaejuseyo" target="_top">여름에 가족이 함께 가기 좋은 휴양지 추천해주세요!</a></object></h2></div><div class="_1SpaP _3TxB3 forum-separator-background-color"></div><div style="font-size:12px" class="forum-content-classic-font"><div class="forum-content-classic-font"><div class="_1C1D8 forum-content-classic-font rgb(0, 0, 0) post-footer" data-hook="post-excerpt-footer"><div class="_1zYxN"><div class="_2j1oN post-stats"><span class="_1FH1_" data-hook="post-stats__comment-count">댓글 2개</span><span class="_1_Mrz" data-hook="post-stats__view-count">조회수 4회</span></div></div><div class="_2VWFO"><button class="_1SZiL forum-content-classic-font" aria-live="assertive"><span class="_1WGxV" data-hook="post-excerpt-footer__like-count" aria-hidden="true">1개</span><div class="_3hDG4 _1U7IE" aria-label="좋아요 1개 Is liked" data-hook="like-button"><div class="FFLzJ"><div class="_2d2bJ"></div></div><div class="_1fVR3"><div class="_2d2bJ"></div></div><div class="_3vv94"><div class="_2d2bJ"></div></div><div class="_1tXxG"><div class="_2d2bJ"></div></div><div class="_2qAdm"></div><svg  width="18" viewBox="0 0 19 19"><path id="a" d="M17.234 5.47a3.919 3.919 0 0 0-2.315-2.263c-2.022-.6-4.21.137-5.424 1.827C8.291 3.38 6.15 2.646 4.152 3.207a3.76 3.76 0 0 0-2.405 2.35 4.94 4.94 0 0 0 .57 4.264c1.603 2.698 6.76 5.927 6.938 6.092a.454.454 0 0 0 .534 0c.267-.174 5.343-3.229 6.938-6.092a5.16 5.16 0 0 0 .507-4.352z"></path></svg></div></button></div></div></div></div></div><div class="_1pK4g"><div class="_2OrnI _472wD _2N7hC comment-header"><a href="https://jemilykoo.wixsite.com/website/profile/userID/profile/" class="forum-link-hover-color"><div class="_1MNBa"><div class="_16RtV"><div data-hook="mcl-showable-content"></div><span class="gLbMq _1aPRN avatar-image"><div class="B9z5- fluid-avatar-image"></div></span></div><div class="_3TAMr forum-text-color"><div class="_19Aha"><span class="_3GqLz forum-text-color forum-link-hover-color comment-avatar__profile-name">userID</span></div><span class="trQTR" data-hook="quick-user-info"></span></div></div></a><span class="_2IqrX"><span class="_3uT17 time-ago" data-hook="time-ago">6월 23일</span></span><div class="_3g2el _472wD"><div class="_3VHHm more-button" data-hook="more-button"><button class="_3VtFf button-hover-fill forum-icon-fill" id="more-button-60d2f27a88d0340015ed3abb" aria-label="More actions" aria-haspopup="true" aria-expanded="false"><svg xmlns="http://www.w3.org/2000/svg" width="19" viewBox="0 0 19 19" role="img" ><path d="M17.444 6A1.5 1.5 0 1 1 19 4.5 1.528 1.528 0 0 1 17.444 6zm0 5A1.5 1.5 0 1 1 19 9.5a1.528 1.528 0 0 1-1.556 1.5zm0 5A1.5 1.5 0 1 1 19 14.5a1.528 1.528 0 0 1-1.556 1.5z"></path></svg></button></div></div></div></div><a class="_3XrIr" href="https://jemilykoo.wixsite.com/website/forum/main/comment/60d2f27a88d0340015ed3abb" target="_top"><div class="_2HfMI forum-link-hover-color forum-text-color"><div class="_19wh5 _39XLG" data-hook="post-description"><div><div class="l0h59">fff</div></div></div></div></a><div class="_3yFwA RXKd_ forum-text-color comment-footer"><div class="_1Yivs"><span class="_2Qb5F" data-hook="comment-footer__like-count" aria-hidden="true">0개</span><button class="_4wNQy forum-content-classic-font" aria-live="assertive"><div class="_3hDG4" aria-label="좋아요 0개 Is unliked" data-hook="like-button"><div class="FFLzJ"><div class="_2d2bJ"></div></div><div class="_1fVR3"><div class="_2d2bJ"></div></div><div class="_3vv94"><div class="_2d2bJ"></div></div><div class="_1tXxG"><div class="_2d2bJ"></div></div><div class="_2qAdm"></div><svg  width="18" viewBox="0 0 19 19"><path id="a" d="M17.234 5.47a3.919 3.919 0 0 0-2.315-2.263c-2.022-.6-4.21.137-5.424 1.827C8.291 3.38 6.15 2.646 4.152 3.207a3.76 3.76 0 0 0-2.405 2.35 4.94 4.94 0 0 0 .57 4.264c1.603 2.698 6.76 5.927 6.938 6.092a.454.454 0 0 0 .534 0c.267-.174 5.343-3.229 6.938-6.092a5.16 5.16 0 0 0 .507-4.352z"></path></svg></div></button></div></div></article></div></div></div></div></div></div></div></div></div></div></div></div></div>
  
  <script>
    // logs 644 BI event, which is used to see time to first meaningful paint
    var q = (location.search[0] === '?' ? location.search.substr(1) : location.search).split('&').reduce(function (a, b) { var i = b.split('=', 2); a[decodeURIComponent(i[0])] = decodeURIComponent(i[1]); return a }, {});
    window.parent.postMessage(
      '{"intent":"TPA2","callId":1,"type":"applicationLoadingStep","compId":"' + q.compId + '","deviceType":"' + q.deviceType + '","data":{"version":"1.94.0", "args":{"stage":"firstMeaningfulPaint", "stageNum":0}}}', '*'
    );
  </script>
  
  
  <script>
    (function() {
      if (!(window.createImageBitmap && window.fetch)) return false;
      fetch('data:image/webp;base64,UklGRh4AAABXRUJQVlA4TBEAAAAvAAAAAAfQ//73v/+BiOh/AAA=')
        .then(function(r){return r.blob();})
        .then(createImageBitmap)
        .then(function() {return true;}, function() {return false;})
        .then(function(isWebPSupported){window.__IS_WEBP_SUPPORTED__ = isWebPSupported});
    })();
  </script>
  
    <script src="modal_data/polyfill.js"></script>
    <script src="modal_data/bundle.js" crossorigin="anonymous"></script>
    <script>
      var isPhantomJs = window.navigator && window.navigator.userAgent && window.navigator.userAgent.toLowerCase().indexOf('phantomjs') > -1 || window._phantom;
    
      if (!isPhantomJs) {
        Sentry.init({ 
          dsn: 'https://cddaf30a95224529ae18942a480386c3@sentry.wixpress.com/215',
          environment: 'production',
          release: '1.2530.0',
          beforeSend: function(event) {
            event.tags.appLifecycle = window.__APP_LIFECYCLE_STATUS__ || 'LOADING_SCRIPTS'
            return event;
          } });
        Sentry.configureScope(function(scope) {
          var q = (location.search[0] === '?' ? location.search.substr(1) : location.search).split('&').reduce(function (a, b) { var i = b.split('=', 2); a[decodeURIComponent(i[0])] = decodeURIComponent(i[1]); return a }, {});
          scope.setTag('bundleName', 'member-comments-page');
          scope.setTag('instanceId', 'a1a30873-9bad-4fe3-a350-bacb7be3c6c8');
          scope.setTag('viewMode', q.viewMode);
          scope.setTag('deviceType', q.deviceType);
          scope.setTag('locale', q.locale);
        });
        (function () {
          var consoleError = console.error;
          console.error = function(message) {
            var result = consoleError.apply(console, arguments);
            if (!(message instanceof Error)) {
              message = new Error(message);
            }
            Sentry.captureException(message);
            return result;
          };
        })();
      }
    </script>
  
    <script src="modal_data/polyfill_002.js" crossorigin=""></script>
    <script src="modal_data/wix-private.js" crossorigin=""></script>
    <script src="react.js" crossorigin=""></script>
    <script src="react-dom.js" crossorigin=""></script>
    <script src="modal_data/lodash.js" crossorigin=""></script>
    <script src="modal_data/moment-with-locales.js" crossorigin=""></script>
    <script src="modal_data/ReactPlayer.js" crossorigin=""></script>
    

    <script src="member-comments-page_data/memberPagesVendor.js" crossorigin="" defer="defer"></script>
<script src="member-comments-page_data/memberPagesCommons.js" crossorigin="" defer="defer"></script>
<script src="member-comments-page_data/member-comments-page.js" crossorigin="" defer="defer"></script>
  



</body></html>