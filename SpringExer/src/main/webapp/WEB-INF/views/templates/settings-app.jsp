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


  <style wix-style="">
    /* Styles */
    .nsa-text-color { color: #171717; }
    .nsa-text-color { color: #000000; }

    .nsa-title-font { font:500 26px/1.31 'HelveticaNeueW01-45', sans-serif; line-height: normal; }
    .nsa-title-font { font:500 50px/1.34em 'Noto Sanse KR',sans-serif; line-height: normal; }
    .nsa-title-font { font-size: 26px; }
    .nsa-primary-font { font:500 14px/1.43 'ProximaNova', sans-serif; line-height: normal; }
    .nsa-primary-font { font:500 18px/1.75em 'Noto Sans KR', sans-serif; line-height: normal; }
    .nsa-background-color { background-color: #FFFFFF; }
    .nsa-border-color { border-color: #BFBFBF; }
    .nsa-border-width { border-width: 0px; }
    .nsa-border-width { border-width: style.borderWithpx; }

    .nsa-button-background-color { background-color: #41BFFF; }
    .nsa-button-background-color { background-color: #193669; }
    .nsa-button-border-color { border-color: #41BFFF; }
    .nsa-button-border-color { border-color: #193669; }
    .nsa-button-fill { fill: #41BFFF; }
    .nsa-button-fill { fill: #193669; }
    .nsa-button-text-color { color: #ffffff; }
    .nsa-button-text-color { color: #FFFFFF; }
    .nsa-button-secondary-text-color { color: #41BFFF; }
    .nsa-button-secondary-text-color { color: #193669; }
    .nsa-separator-color { background-color: #171717; }
    .nsa-separator-color { background-color: #000000; }


    .nsa-section-title { font-size: 18px; }
    .nsa-option-title { font-size: 16px; }
    .nsa-subscription-text { font-size: 14px;}
    .nsa-primary-text { font-size: 14px;}
  </style>
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
  <div id="root"><div data-reactroot="" id="direction-provider-wrapper"><div dir="ltr"><div id="content-wrapper" class="_1QInq app-desktop"><!-- react-empty: 5 --><div tabindex="0" aria-label="알림 설정" class="_1gIu- nsa-background-color nsa-border-width nsa-border-color"><div class="_17f3-"><h2 class="_1pKDh nsa-title-font nsa-text-color">알림 설정</h2></div><div><div><div class="_16BaH"><div class="-Ym2E nsa-separator-color"></div><div class="_3Trmj"><div><div class="_1zYoy nsa-title-font nsa-text-color nsa-section-title">블로그 구독</div><div class="_2cmev nsa-primary-font nsa-text-color nsa-subscription-text">새 게시물 및 업데이트 발생 시 이메일로 알려줍니다.</div></div><button class="ihwp9 nsa-primary-font nsa-subscription-text nsa-button-border-color nsa-button-secondary-text-color _3YK2G"><span>구독 해제</span></button></div><div class="-Ym2E nsa-separator-color"></div></div><table class="_2xXKC"><thead><tr><td class="_3vLkx nsa-title-font nsa-text-color nsa-section-title">블로그 알림</td><td class="_3vLkx nsa-primary-font nsa-text-color nsa-primary-text">이메일 알림</td></tr><tr><td colspan="3"><div class="-Ym2E nsa-separator-color"></div></td></tr></thead><tbody><tr><td class="_1QblN"><div class="nsa-title-font nsa-text-color nsa-option-title"><h3 class="_3408X">좋아요</h3></div><p class="_1wvM5 nsa-primary-font nsa-text-color nsa-primary-text">내 게시물 및 댓글에 좋아요가 추가되면 알려줍니다.</p></td><td class="hO_vd"><label class="_1NROT"><span class="_37fio bgie3" tabindex="0" role="checkbox" aria-checked="true" aria-label="내 게시물 및 댓글에 좋아요가 추가되면 알려줍니다."><input type="checkbox" class="K8h_U" tabindex="-1" value="on" checked="checked"><label class="_2Xayf nsa-button-background-color"><span class="_3_xfY nsa-button-border-color"><svg xmlns="http://www.w3.org/2000/svg" width="8" viewBox="0 0 8 6" class="_29NtG nsa-button-fill" style="fill-rule: evenodd;"><path d="M168.152,92.718a0.836,0.836,0,0,0,.335.555l2.8,2.038a0.871,0.871,0,0,0,1.2-.165l3.533-4.556a0.827,0.827,0,0,0-.166-1.176,0.87,0.87,0,0,0-1.2.161l-3.017,3.892-2.115-1.539a0.869,0.869,0,0,0-1.2.17A0.818,0.818,0,0,0,168.152,92.718Z" transform="translate(-168.156 -89.219)"></path></svg><svg xmlns="http://www.w3.org/2000/svg" width="8" height="2" viewBox="0 0 8 2" class="_2TTrB nsa-button-fill" style="fill-rule: evenodd;"><rect width="8" height="2"></rect></svg></span></label></span></label></td></tr><tr><td colspan="3"><div class="-Ym2E nsa-separator-color"></div></td></tr></tbody><tbody><tr><td class="_1QblN"><div class="nsa-title-font nsa-text-color nsa-option-title"><h3 class="_3408X">댓글</h3></div><p class="_1wvM5 nsa-primary-font nsa-text-color nsa-primary-text">내 게시물에 댓글이 추가되면 알려줍니다.</p></td><td class="hO_vd"><label class="_1NROT"><span class="_37fio bgie3" tabindex="0" role="checkbox" aria-checked="true" aria-label="내 게시물에 댓글이 추가되면 알려줍니다."><input type="checkbox" class="K8h_U" tabindex="-1" value="on" checked="checked"><label class="_2Xayf nsa-button-background-color"><span class="_3_xfY nsa-button-border-color"><svg xmlns="http://www.w3.org/2000/svg" width="8" viewBox="0 0 8 6" class="_29NtG nsa-button-fill" style="fill-rule: evenodd;"><path d="M168.152,92.718a0.836,0.836,0,0,0,.335.555l2.8,2.038a0.871,0.871,0,0,0,1.2-.165l3.533-4.556a0.827,0.827,0,0,0-.166-1.176,0.87,0.87,0,0,0-1.2.161l-3.017,3.892-2.115-1.539a0.869,0.869,0,0,0-1.2.17A0.818,0.818,0,0,0,168.152,92.718Z" transform="translate(-168.156 -89.219)"></path></svg><svg xmlns="http://www.w3.org/2000/svg" width="8" height="2" viewBox="0 0 8 2" class="_2TTrB nsa-button-fill" style="fill-rule: evenodd;"><rect width="8" height="2"></rect></svg></span></label></span></label></td></tr><tr><td colspan="3"><div class="-Ym2E nsa-separator-color"></div></td></tr></tbody><tbody><tr><td class="_1QblN"><div class="nsa-title-font nsa-text-color nsa-option-title"><h3 class="_3408X">팔로우</h3></div><p class="_1wvM5 nsa-primary-font nsa-text-color nsa-primary-text">팔로우 회원 및 게시물에 업데이트 발생 시 알려줍니다.</p></td><td class="hO_vd"><label class="_1NROT"><span class="_37fio bgie3" tabindex="0" role="checkbox" aria-checked="true" aria-label="팔로우 회원 및 게시물에 업데이트 발생 시 알려줍니다."><input type="checkbox" class="K8h_U" tabindex="-1" value="on" checked="checked"><label class="_2Xayf nsa-button-background-color"><span class="_3_xfY nsa-button-border-color"><svg xmlns="http://www.w3.org/2000/svg" width="8" viewBox="0 0 8 6" class="_29NtG nsa-button-fill" style="fill-rule: evenodd;"><path d="M168.152,92.718a0.836,0.836,0,0,0,.335.555l2.8,2.038a0.871,0.871,0,0,0,1.2-.165l3.533-4.556a0.827,0.827,0,0,0-.166-1.176,0.87,0.87,0,0,0-1.2.161l-3.017,3.892-2.115-1.539a0.869,0.869,0,0,0-1.2.17A0.818,0.818,0,0,0,168.152,92.718Z" transform="translate(-168.156 -89.219)"></path></svg><svg xmlns="http://www.w3.org/2000/svg" width="8" height="2" viewBox="0 0 8 2" class="_2TTrB nsa-button-fill" style="fill-rule: evenodd;"><rect width="8" height="2"></rect></svg></span></label></span></label></td></tr><tr><td colspan="3"><div class="-Ym2E nsa-separator-color"></div></td></tr></tbody></table></div><div class="-Ym2E nsa-separator-color _3CUlD"></div></div><div><div><table class="_34bul _1dS3-"><thead><tr><td class="_3vLkx nsa-title-font nsa-text-color nsa-section-title">게시판 요약</td><td class="_3vLkx nsa-primary-font nsa-text-color nsa-primary-text">이메일 알림</td></tr><tr><td colspan="3"><div class="-Ym2E nsa-separator-color"></div></td></tr></thead><tbody><tr><td class="_1QblN"><div class="nsa-title-font nsa-text-color nsa-option-title"><h3 class="_3408X">일간 또는 주간 이메일</h3></div><p class="_1wvM5 nsa-primary-font nsa-text-color nsa-primary-text">모든 게시판 작업에 대한 요약 정보를 확인하세요.</p></td><td class="hO_vd"><label class="_1NROT"><span class="_37fio bgie3" tabindex="0" role="checkbox" aria-checked="true" aria-label="모든 게시판 작업에 대한 요약 정보를 확인하세요."><input type="checkbox" class="K8h_U" tabindex="-1" value="on" checked="checked"><label class="_2Xayf nsa-button-background-color"><span class="_3_xfY nsa-button-border-color"><svg xmlns="http://www.w3.org/2000/svg" width="8" viewBox="0 0 8 6" class="_29NtG nsa-button-fill" style="fill-rule: evenodd;"><path d="M168.152,92.718a0.836,0.836,0,0,0,.335.555l2.8,2.038a0.871,0.871,0,0,0,1.2-.165l3.533-4.556a0.827,0.827,0,0,0-.166-1.176,0.87,0.87,0,0,0-1.2.161l-3.017,3.892-2.115-1.539a0.869,0.869,0,0,0-1.2.17A0.818,0.818,0,0,0,168.152,92.718Z" transform="translate(-168.156 -89.219)"></path></svg><svg xmlns="http://www.w3.org/2000/svg" width="8" height="2" viewBox="0 0 8 2" class="_2TTrB nsa-button-fill" style="fill-rule: evenodd;"><rect width="8" height="2"></rect></svg></span></label></span></label></td></tr></tbody><tbody><tr><td colspan="2"><label class="_1iW9G nsa-text-color"><span class="_36oDz" role="checkbox" aria-checked="true" aria-label="매일 이메일이 발송됩니다."><input type="radio" class="uF0P6" tabindex="-1" name="digestPeriod" value="daily" checked="checked"><label class="_1PxBo nsa-button-border-color" tabindex="0"><span class="_2E86e nsa-button-background-color"></span></label></span><!-- react-text: 236 -->매일 이메일이 발송됩니다.<!-- /react-text --></label><label class="_1iW9G nsa-text-color"><span class="_36oDz" role="checkbox" aria-checked="false" aria-label="매주 이메일이 발송됩니다."><input type="radio" class="uF0P6" tabindex="-1" name="digestPeriod" value="weekly"><label class="_1PxBo nsa-button-border-color" tabindex="0"><span class="_2E86e nsa-button-background-color"></span></label></span><!-- react-text: 242 -->매주 이메일이 발송됩니다.<!-- /react-text --></label></td></tr></tbody><tbody><td colspan="3"><div class="-Ym2E nsa-separator-color"></div></td></tbody></table><table class="_34bul"><thead><tr><td class="_3vLkx nsa-title-font nsa-text-color nsa-section-title">게시판 실시간 알림</td><td class="_3vLkx nsa-primary-font nsa-text-color nsa-primary-text">이메일 알림</td></tr><tr><td colspan="3"><div class="-Ym2E nsa-separator-color"></div></td></tr></thead><tbody><tr><td class="_1QblN"><div class="nsa-title-font nsa-text-color nsa-option-title"><h3 class="_3408X">좋아요, 베스트 답변, 공감 및 비공감</h3></div><p class="_1wvM5 nsa-primary-font nsa-text-color nsa-primary-text">좋아요, 베스트 답변, 답변 공감이 추가되면 알림이 발송됩니다.</p></td><td class="hO_vd"><label class="_1NROT"><span class="_37fio bgie3" tabindex="0" role="checkbox" aria-checked="true" aria-label="좋아요, 베스트 답변, 답변 공감이 추가되면 알림이 발송됩니다."><input type="checkbox" class="K8h_U" tabindex="-1" value="on" checked="checked"><label class="_2Xayf nsa-button-background-color"><span class="_3_xfY nsa-button-border-color"><svg xmlns="http://www.w3.org/2000/svg" width="8" viewBox="0 0 8 6" class="_29NtG nsa-button-fill" style="fill-rule: evenodd;"><path d="M168.152,92.718a0.836,0.836,0,0,0,.335.555l2.8,2.038a0.871,0.871,0,0,0,1.2-.165l3.533-4.556a0.827,0.827,0,0,0-.166-1.176,0.87,0.87,0,0,0-1.2.161l-3.017,3.892-2.115-1.539a0.869,0.869,0,0,0-1.2.17A0.818,0.818,0,0,0,168.152,92.718Z" transform="translate(-168.156 -89.219)"></path></svg><svg xmlns="http://www.w3.org/2000/svg" width="8" height="2" viewBox="0 0 8 2" class="_2TTrB nsa-button-fill" style="fill-rule: evenodd;"><rect width="8" height="2"></rect></svg></span></label></span></label></td></tr><tr><td colspan="3"><div class="-Ym2E nsa-separator-color"></div></td></tr></tbody><tbody><tr><td class="_1QblN"><div class="nsa-title-font nsa-text-color nsa-option-title"><h3 class="_3408X">댓글 또는 답변</h3></div><p class="_1wvM5 nsa-primary-font nsa-text-color nsa-primary-text">자신이 작성한 게시물에 대한 댓글 또는 질문에 대한 답변이 추가되면 알림이 발송됩니다.</p></td><td class="hO_vd"><label class="_1NROT"><span class="_37fio bgie3" tabindex="0" role="checkbox" aria-checked="true" aria-label="자신이 작성한 게시물에 대한 댓글 또는 질문에 대한 답변이 추가되면 알림이 발송됩니다."><input type="checkbox" class="K8h_U" tabindex="-1" value="on" checked="checked"><label class="_2Xayf nsa-button-background-color"><span class="_3_xfY nsa-button-border-color"><svg xmlns="http://www.w3.org/2000/svg" width="8" viewBox="0 0 8 6" class="_29NtG nsa-button-fill" style="fill-rule: evenodd;"><path d="M168.152,92.718a0.836,0.836,0,0,0,.335.555l2.8,2.038a0.871,0.871,0,0,0,1.2-.165l3.533-4.556a0.827,0.827,0,0,0-.166-1.176,0.87,0.87,0,0,0-1.2.161l-3.017,3.892-2.115-1.539a0.869,0.869,0,0,0-1.2.17A0.818,0.818,0,0,0,168.152,92.718Z" transform="translate(-168.156 -89.219)"></path></svg><svg xmlns="http://www.w3.org/2000/svg" width="8" height="2" viewBox="0 0 8 2" class="_2TTrB nsa-button-fill" style="fill-rule: evenodd;"><rect width="8" height="2"></rect></svg></span></label></span></label></td></tr><tr><td colspan="3"><div class="-Ym2E nsa-separator-color"></div></td></tr></tbody><tbody><tr><td class="_1QblN"><div class="nsa-title-font nsa-text-color nsa-option-title"><h3 class="_3408X">팔로잉</h3></div><p class="_1wvM5 nsa-primary-font nsa-text-color nsa-primary-text">팔로우 중인 회원 또는 게시물이 업데이트되면 알림이 발송됩니다.</p></td><td class="hO_vd"><label class="_1NROT"><span class="_37fio bgie3" tabindex="0" role="checkbox" aria-checked="true" aria-label="팔로우 중인 회원 또는 게시물이 업데이트되면 알림이 발송됩니다."><input type="checkbox" class="K8h_U" tabindex="-1" value="on" checked="checked"><label class="_2Xayf nsa-button-background-color"><span class="_3_xfY nsa-button-border-color"><svg xmlns="http://www.w3.org/2000/svg" width="8" viewBox="0 0 8 6" class="_29NtG nsa-button-fill" style="fill-rule: evenodd;"><path d="M168.152,92.718a0.836,0.836,0,0,0,.335.555l2.8,2.038a0.871,0.871,0,0,0,1.2-.165l3.533-4.556a0.827,0.827,0,0,0-.166-1.176,0.87,0.87,0,0,0-1.2.161l-3.017,3.892-2.115-1.539a0.869,0.869,0,0,0-1.2.17A0.818,0.818,0,0,0,168.152,92.718Z" transform="translate(-168.156 -89.219)"></path></svg><svg xmlns="http://www.w3.org/2000/svg" width="8" height="2" viewBox="0 0 8 2" class="_2TTrB nsa-button-fill" style="fill-rule: evenodd;"><rect width="8" height="2"></rect></svg></span></label></span></label></td></tr><tr><td colspan="3"><div class="-Ym2E nsa-separator-color"></div></td></tr></tbody><tbody><tr><td class="_1QblN"><div class="nsa-title-font nsa-text-color nsa-option-title"><h3 class="_3408X">새로운 게시물, 신고 및 언급</h3></div><p class="_1wvM5 nsa-primary-font nsa-text-color nsa-primary-text">새로운 게시물, 신고 및 언급이 추가되면 알림이 발송됩니다.</p></td><td class="hO_vd"><label class="_1NROT"><span class="_37fio bgie3" tabindex="0" role="checkbox" aria-checked="true" aria-label="새로운 게시물, 신고 및 언급이 추가되면 알림이 발송됩니다."><input type="checkbox" class="K8h_U" tabindex="-1" value="on" checked="checked"><label class="_2Xayf nsa-button-background-color"><span class="_3_xfY nsa-button-border-color"><svg xmlns="http://www.w3.org/2000/svg" width="8" viewBox="0 0 8 6" class="_29NtG nsa-button-fill" style="fill-rule: evenodd;"><path d="M168.152,92.718a0.836,0.836,0,0,0,.335.555l2.8,2.038a0.871,0.871,0,0,0,1.2-.165l3.533-4.556a0.827,0.827,0,0,0-.166-1.176,0.87,0.87,0,0,0-1.2.161l-3.017,3.892-2.115-1.539a0.869,0.869,0,0,0-1.2.17A0.818,0.818,0,0,0,168.152,92.718Z" transform="translate(-168.156 -89.219)"></path></svg><svg xmlns="http://www.w3.org/2000/svg" width="8" height="2" viewBox="0 0 8 2" class="_2TTrB nsa-button-fill" style="fill-rule: evenodd;"><rect width="8" height="2"></rect></svg></span></label></span></label></td></tr><tr><td colspan="3"><div class="-Ym2E nsa-separator-color"></div></td></tr></tbody></table></div><div class="-Ym2E nsa-separator-color _3CUlD"></div></div><div><table class="_2xXKC"><thead><tr><td class="_3vLkx nsa-title-font nsa-text-color nsa-section-title">채팅 알림</td><td class="_3vLkx nsa-primary-font nsa-text-color nsa-primary-text">이메일 알림</td></tr><tr><td colspan="3"><div class="-Ym2E nsa-separator-color"></div></td></tr></thead><tbody><tr><td class="_1QblN"><div class="nsa-title-font nsa-text-color nsa-option-title"><h3 class="_3408X">메시지</h3></div><p class="_1wvM5 nsa-primary-font nsa-text-color nsa-primary-text">사용 중이 아닌 상태에서 회원이 메시지를 보내면 알림을 수신합니다.</p></td><td class="hO_vd"><label class="_1NROT"><span class="_37fio bgie3" tabindex="0" role="checkbox" aria-checked="true" aria-label="사용 중이 아닌 상태에서 회원이 메시지를 보내면 알림을 수신합니다."><input type="checkbox" class="K8h_U" tabindex="-1" value="on" checked="checked"><label class="_2Xayf nsa-button-background-color"><span class="_3_xfY nsa-button-border-color"><svg xmlns="http://www.w3.org/2000/svg" width="8" viewBox="0 0 8 6" class="_29NtG nsa-button-fill" style="fill-rule: evenodd;"><path d="M168.152,92.718a0.836,0.836,0,0,0,.335.555l2.8,2.038a0.871,0.871,0,0,0,1.2-.165l3.533-4.556a0.827,0.827,0,0,0-.166-1.176,0.87,0.87,0,0,0-1.2.161l-3.017,3.892-2.115-1.539a0.869,0.869,0,0,0-1.2.17A0.818,0.818,0,0,0,168.152,92.718Z" transform="translate(-168.156 -89.219)"></path></svg><svg xmlns="http://www.w3.org/2000/svg" width="8" height="2" viewBox="0 0 8 2" class="_2TTrB nsa-button-fill" style="fill-rule: evenodd;"><rect width="8" height="2"></rect></svg></span></label></span></label></td></tr><tr><td colspan="3"><div class="-Ym2E nsa-separator-color"></div></td></tr></tbody></table></div></div></div></div></div></div>
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