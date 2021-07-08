<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <title>Notifications settings app</title>

  
  <script type="text/javascript">
    (function () {
      var appName = 'notifications-settings-app';
      window.fedops = window.fedops || {};
      window.fedops.apps = window.fedops.apps || {};
      window.fedops.apps[appName] = { startLoadTime: window.performance && window.performance.now && window.performance.now() };
      try { window.fedops.sessionId = window.localStorage.getItem('fedops.logger.sessionId'); } catch(e) {};
      window.fedops.sessionId = window.fedops.sessionId || 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) { var r = Math.random()*16|0, v = c == 'x' ? r : (r&0x3|0x8); return v.toString(16); });
      (new Image()).src = '//frog.wix.com/fed?appName=' + appName + '&src=72&evid=14&session_id=' + window.fedops.sessionId + '&_=' + Math.random();
    })();
  </script>
  

  <!-- NREUM: (4) -->

  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link type="image/png" href="https://www.wix.com/favicon.ico" rel="shortcut icon">
  
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/settings-app.css" >
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/commons.css" >

  

  
<script>
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


<style wix-style="">.Title{ font:500 22px/1.41em 'Noto Sans KR', sans-serif; } .Menu{ font:500 14px/1.79em 'Noto Sans KR', sans-serif; } .Page-title{ font:500 28px/1.375em 'Noto Sanse KR',sans-serif; } .Heading-XL{ font:500 88px/1.2em 'Noto Sanse KR',sans-serif; } .Heading-L{ font:500 72px/1.25em 'Noto Sanse KR',sans-serif; } .Heading-M{ font:500 50px/1.34em 'Noto Sanse KR',sans-serif; } .Heading-S{ font:500 40px/1.35em 'Noto Sanse KR',sans-serif; } .Body-L{ font:500 20px/1.67em 'Noto Sans KR', sans-serif; } .Body-M{ font:500 18px/1.75em 'Noto Sans KR', sans-serif; } .Body-S{ font:500 15px/1.875em 'Noto Sans KR', sans-serif; } .Body-XS{ font:500 14px/1.79em 'Noto Sans KR', sans-serif; } }</style><link type="text/css" rel="stylesheet" href="index_data/css.css" id="wix-google-fonts"><link type="text/css" rel="stylesheet" href="index_data/languages-woff2.css"><style>:focus {
    outline: none;
}

.js-focus-visible .focus-visible:focus,
.js-focus-visible .focus-visible:focus ~ .wixSdkShowFocusOnSibling
{
    box-shadow: inset 0 0 0 1px rgba(255, 255, 255, 0.9), 0 0 1px 2px #3899EC;
}
</style><script src="index_data/focus-visible.js" id="dynamic_script_FOCUS_VISIBLE"></script></head>
<body class="_1itz9 js-focus-visible">
  <script>
    window.__BASEURL__ = '/notifications/';
    window.__LOCALE__ = 'ko';
    window.__STATICS_BASE_URL__ = '//static.parastorage.com/services/communities-notifications-app/1.684.0/';
    window.__CURRENT_USER__ = {"id":"fd8c5604-905b-46f1-9747-3549a723cb15","loginEmail":"userID@gmail.com","status":"APPROVED","contactId":"fd8c5604-905b-46f1-9747-3549a723cb15","contact":{"contactId":"fd8c5604-905b-46f1-9747-3549a723cb15","phones":[],"emails":["userID@gmail.com"],"addresses":[{"country":"KR"}],"customFields":{}},"profile":{"nickname":"userID","slug":"userID"},"privacyStatus":"PUBLIC","activityStatus":"ACTIVE","createdDate":new Date("2021-06-23T07:56:43.000Z"),"updatedDate":new Date("2021-06-23T07:56:43.561Z"),"lastLoginDate":new Date("2021-06-23T08:21:07.000Z")};
    window.__EXPERIMENTS__ = {"specs.wixForum.ForumDigestEmail":"true"};
  </script>
  <script src="settings-app_data/polyfill.js"></script>
  <script src="settings-app_data/react-with-addons.js" crossorigin=""></script>
  <script src="settings-app_data/react-dom.js" crossorigin=""></script>
  <script src="settings-app_data/lodash.js" crossorigin=""></script>
  <script src="settings-app_data/wix-private.js" crossorigin=""></script>
  <script src="settings-app_data/vendor.js" crossorigin=""></script>
  <script src="settings-app_data/commons.js" crossorigin=""></script>
  <script src="settings-app_data/settings-app.js" crossorigin=""></script>
  <script>
    window.wixTpaWindowResize = {
      elSelector: '#content-wrapper'
    }
  </script>
  <script src="settings-app_data/communities-window-resize.js" crossorigin=""></script>


</body></html>