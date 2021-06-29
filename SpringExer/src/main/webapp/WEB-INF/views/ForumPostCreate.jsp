<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="enable-scroll" lang="ko"><head>
  <meta name="viewport" content="width=device-width, initial-scale=1" id="wixDesktopViewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!--내가 추가한 코드-->
  <script src="${pageContext.request.contextPath}/stampGO_files/bundle.js"></script>
  <script type="text/javascript" charset="utf-8"  data-requirecontext="_" data-requiremodule="https://static.parastorage.com/services/profile-card-tpa-ooi/1.277.0/ProfileCardViewerWidget.bundle.min.js" src="${pageContext.request.contextPath}/stampGO_files/ProfileCardViewerWidget.js"></script>
  <script type="text/javascript" charset="utf-8" data-requirecontext="_" data-requiremodule="https://static.parastorage.com/services/pro-gallery-santa-wrapper/1.1612.0/viewer.bundle.min.js" src="${pageContext.request.contextPath}/stampGO_files/viewer.js"></script>
  <script type="text/javascript" charset="utf-8"  data-requirecontext="_" data-requiremodule="https://static.parastorage.com/services/communities-forum-client/1.432.0/forum-app-viewer.bundle.min.js" src="${pageContext.request.contextPath}/stampGO_files/forum-app-viewer.js"></script><!-- base href="https://jemilykoo.wixsite.com/website/" -->
  
  <!--내가 추가한 코드-->
  <!-- 
  
  
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Post.css" >
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/ForumPost.css" >
   -->
   
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/css.css" >
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/ForumPostCreate.css" >
   
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

<link href="<c:url value="/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">


<style>
._3q5sF{padding-left:18px;padding-right:18px}
</style>

<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/bootstrap-components-common.js"></script>
<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/bootstrap-components-classic.js"></script>
<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/Container_RectangleArea.js"></script>
<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/VerticalMenu_VerticalMenuSolidColorSkin.js"></script>
<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/LoginSocialBar.js"></script>
<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/bootstrap-components-responsive.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/MeshGroup.js"></script>
<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/FreemiumBannerDesktop.js"></script>
<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/SkipToContentButton.js"></script>
<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/WPhoto_CirclePhoto.js"></script>
<script src="${pageContext.request.contextPath}/stampGO_files/requirejs.js"></script><link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stampGO_files/HtmlComponent.css"><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/HtmlComponent.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/proGallery_videoScrollHelper.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/ItemActions.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/proGallery_videoItem.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/AsyncEventHandler.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/ProGalleryInfoElement.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/proGallery_reactPlayer.js"></script><script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/HlsPlayer.js"></script>
<style data-emotion=""></style><link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stampGO_files/common-site-members-dialogs.css">
<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/common-site-members-dialogs.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stampGO_files/forum-rce-frameless.css">
<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/forum-rce-frameless.js"></script>
<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/0.js"></script>
<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/73.js"></script>
<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/53.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stampGO_files/member-card-async-frameless.css">
<script charset="utf-8" src="${pageContext.request.contextPath}/stampGO_files/member-card-async-frameless.js"></script>

</head>

<body>

  <div id="contentWrapper" class=" md lt-lg lt-xl gt-xs gt-sm sidebar-on boxSize">
   <div class="header">
     <div class="headerBox">
       <nav aria-label="Breadcrumbs" class="_3xObj 클래식폰트 breadcrumbs-text-color">
         <ol class="_18QAN">
           <li>
             <a href="https://jemilykoo.wixsite.com/website/forum" data-hook="breadcrumbs__1">여행 리뷰/정보</a><!--링크 새로 달아야 함-->
           
           <span class="_3q5sF">
             <svg xmlns="http://www.w3.org/2000/svg" width="6" height="10" viewBox="0 0 6 10" style="fill-rule: evenodd;" class="breadcrumbs-icon-fill">
              <path d="M785.783,854.5l-4.552,4.3a0.771,0.771,0,0,1-1.048,0,0.672,0.672,0,0,1,0-.99L784.21,854l-4.027-3.8a0.672,0.672,0,0,1,0-.99,0.773,0.773,0,0,1,1.048,0l4.552,4.3A0.674,0.674,0,0,1,785.783,854.5Z" transform="translate(-780 -849.031)">
              </path><!--검색아이콘-->
             </svg>
            </span>
            </li>
            <li>
              <span tabindex="0" aria-current="page" data-hook="breadcrumbs__current-page" role="link">게시물 작성</span>
            </li>
          </ol>
        </nav>
        <div class="_2LHxU">
          <div class="_3C0hA" data-hook="search-input">
            <div class="_3iW6- search-input">
              <div class="_2RwOg" role="search" aria-label="&nbsp;" tabindex="0">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="_2_hbq header-search-icon-fill button-hover-fill" data-hook="search-icon">
                  <path fill-rule="evenodd" d="M19.854 19.146c.195.196.195.512 0 .708-.196.195-.512.195-.708 0l-3.708-3.709C14.118 17.3 12.391 18 10.5 18 6.358 18 3 14.642 3 10.5 3 6.358 6.358 3 10.5 3c4.142 0 7.5 3.358 7.5 7.5 0 1.891-.7 3.619-1.855 4.938l3.709 3.708zM17 10.5C17 6.91 14.09 4 10.5 4S4 6.91 4 10.5 6.91 17 10.5 17s6.5-2.91 6.5-6.5z">

                  </path>
                </svg>
                <form autocomplete="off">
                  <input data-hook="search-input" class="_1quPh header-search-text-color header-search-font search-input__input" type="text" autocomplete="off" placeholder="&nbsp;">
                </form>
                <div class="_2nmH8 header-search-text-color header-search-font GPrPx">&nbsp;</div>
                <div class="q4nje header-search-border-background-color">
                  
                </div>
              </div>
            </div>
          </div>
          <div class="_3YKCe">

          </div>
        </div>
      </div>
    </div>
    <div class="_1W1_h _1AA4r CWI7Q forum-card-background-color">
      <div class="_1Fjfo forum-text-color 클래식폰트 forum-card-background-color forum-card-border-color">
        <div class="_1XsjC">
          <div class="O1TI_">
            <div class="_1pI7d forum-card-border-color" style="border-width: 1px;">
              <div class="_2-ISX">
                <div class="Nrvl9">
                  <a href="https://jemilykoo.wixsite.com/website/profile/userID/profile" class="_1cpII">
                   
                     <div class="_31l-O forum-text-color _1ccuS avatar">
                    
                      <span class="_14_Ju _1zT4G _28gI0 avatar-image">
                        <div class="_2LXiY "></div> 
                 
                      </span>
                      
                      <div class="-mPAe">
                        <div class="_1d5Ko">
                          <div class="_1_vuc">
                            <span class="LXBdL forum-text-color forum-link-hover-color" data-hook="avatar__name">userID
                            </span>
                          </div>
                        </div>
                      </div>
                      
                      
                    	</div>
                  </a>
                </div>
              </div>
              <div class="_3Uofn">
                <div class="_25efV forum-title-classic-font">
                <textarea class="_3ewHi _29iCk forum-text-color" maxlength="140" aria-label="Title" placeholder="+ 제목" data-hook="post-form__title-input" style="height: 42px;" >
                </textarea><span class="_3qgvn" aria-label="140자 남았습니다.">140</span>
                </div>
                </div>
                <div class="n7Moi post-form__text-editor">
                <div class="NuHDZ">
                <div >
<div class=" _18B2H 클래식폰트 jY4S3  _1bYoS _24vdc" dir="ltr" data-id="rce" data-hook="root-editor">
  
<div class=" _3JyXP _2YWoo">
  <div class="DraftEditor-root">
    <div class="public-DraftEditorPlaceholder-root">

    </div>
    <div class="DraftEditor-editorContainer">
      <div aria-autocomplete="list"  aria-expanded="false" class="public-DraftEditor-content has-custom-focus" role="combobox" spellcheck="true" style="outline: currentcolor none medium; user-select: text; white-space: pre-wrap; overflow-wrap: break-word;" contenteditable="true">
        여기에 뭔가를 입력하세요
        <div data-contents="true">
          <div class="  _3ogUL public-DraftStyleDefault-block-depth0 public-DraftStyleDefault-text-ltr" data-block="true" data-editor="editor" data-offset-key="foo-0-0">
            <div data-offset-key="foo-0-0" class=" public-DraftStyleDefault-ltr">
              <span data-offset-key="foo-0-0">
                <br data-text="true">

              </span>
      </div>
    </div>
  </div>
</div>
</div>
</div>
</div></div></div></div>
  </div></div></div></div>
  


  <div class="  버껍  버튼껍데기 ">
      <div></div>
       <div class="버튼1">
        <span class="버튼2">
         
           <button class="버튼4 버튼 클래식폰트 button-border-color button-color _3plV8 버튼6">
             <span class="버튼5" >취소</span>
             
           </button>
       </span>
       <span class="버튼2">
           <button class="버튼4 버튼 클래식폰트 button-background-color      button-primary-text-color 버튼6" data-hook="post-form__publish-button" aria-label="">
             <span class="버튼5">다음</span>
            </button>
        </span>
      </div>
    </div>
    
  </div>

</div></div>



</body></html>