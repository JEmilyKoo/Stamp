<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html class="no-js h-100" lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Shards Dashboard Lite - Free Bootstrap Admin Template â DesignRevision</title>
    <meta name="description" content="A high-quality &amp; free Bootstrap admin dashboard template pack that comes with lots of templates and components.">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" id="main-stylesheet" data-version="1.1.0" href=<c:url value="/resources/styles/shards-dashboards.1.1.0.min.css"/>>
    <link rel="stylesheet" href=<c:url value="/resources/styles/extras.1.1.0.min.css"/>
    <script async defer src="https://buttons.github.io/buttons.js"></script>
  </head>
  <body class="h-100">
   
        </aside>
        <!-- End Main Sidebar -->
        <main class="main-content col-lg-10 col-md-9 col-sm-12 p-0 offset-lg-2 offset-md-3">
          <div class="main-navbar sticky-top bg-white">
            <!-- Main Navbar -->
            <nav class="navbar align-items-stretch navbar-light flex-md-nowrap p-0">
              <form action="#" class="main-navbar__search w-100 d-none d-md-flex d-lg-flex">
                <div class="input-group input-group-seamless ml-3">
                  <div class="input-group-prepend">
                    <div class="input-group-text">
                      <i class="fas fa-search"></i>
                    </div>
                  </div>
                  <input class="navbar-search form-control" type="text" placeholder="Search for something..." aria-label="Search"> </div>
              </form>
              <ul class="navbar-nav border-left flex-row ">
                <li class="nav-item border-right dropdown notifications">
                  <a class="nav-link nav-link-icon text-center" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <div class="nav-link-icon__wrapper">
                      <i class="material-icons">&#xE7F4;</i>
                      <span class="badge badge-pill badge-danger">2</span>
                    </div>
                  </a>
                  <div class="dropdown-menu dropdown-menu-small" aria-labelledby="dropdownMenuLink">
                    <a class="dropdown-item" href="#">
                      <div class="notification__icon-wrapper">
                        <div class="notification__icon">
                          <i class="material-icons">&#xE6E1;</i>
                        </div>
                      </div>
                      <div class="notification__content">
                        <span class="notification__category">Analytics</span>
                        <p>Your websiteâs active users count increased by
                          <span class="text-success text-semibold">28%</span> in the last week. Great job!</p>
                      </div>
                    </a>
                    <a class="dropdown-item" href="#">
                      <div class="notification__icon-wrapper">
                        <div class="notification__icon">
                          <i class="material-icons">&#xE8D1;</i>
                        </div>
                      </div>
                      <div class="notification__content">
                        <span class="notification__category">Sales</span>
                        <p>Last week your storeâs sales count decreased by
                          <span class="text-danger text-semibold">5.52%</span>. It could have been worse!</p>
                      </div>
                    </a>
                    <a class="dropdown-item notification__all text-center" href="#"> View all Notifications </a>
                  </div>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle text-nowrap px-3" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                    <img class="user-avatar rounded-circle mr-2" src="images/avatars/0.jpg" alt="User Avatar">
                    <span class="d-none d-md-inline-block">Sierra Brooks</span>
                  </a>
                  <div class="dropdown-menu dropdown-menu-small">
                    <a class="dropdown-item" href="user-profile-lite.html">
                      <i class="material-icons">&#xE7FD;</i> Profile</a>
                    <a class="dropdown-item" href="components-blog-posts.html">
                      <i class="material-icons">vertical_split</i> Blog Posts</a>
                    <a class="dropdown-item" href="add-new-post.html">
                      <i class="material-icons">note_add</i> Add New Post</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item text-danger" href="#">
                      <i class="material-icons text-danger">&#xE879;</i> Logout </a>
                  </div>
                </li>
              </ul>
              <nav class="nav">
                <a href="#" class="nav-link nav-link-icon toggle-sidebar d-md-inline d-lg-none text-center border-left" data-toggle="collapse" data-target=".header-navbar" aria-expanded="false" aria-controls="header-navbar">
                  <i class="material-icons">&#xE5D2;</i>
                </a>
              </nav>
            </nav>
          </div>
          <!-- / .main-navbar -->
          <div class="main-content-container container-fluid px-4">
            <!-- Page Header -->
            <div class="page-header row no-gutters py-4">
              <div class="col-12 col-sm-4 text-center text-sm-left mb-0">
                <span class="text-uppercase page-subtitle">리뷰,댓글,좋아요 관리</span>
                <h3 class="page-title">리뷰 관리 페이지</h3>
              </div>
            </div>
            
            
            <!-- End Page Header -->
            <div class="row">
            
            <!-- 예시 만들기 -->
            <div class="col-lg-3 col-md-6 col-sm-12 mb-4">
                <div class="card card-small card-post card-post--1">
                  <div class="card-post__image" style="background-image: url('images/content-management/1.jpeg');">
                    <a href="#" class="card-post__category badge badge-pill badge-dark">Business</a>
                    <div class="card-post__author d-flex">
                      <a href="#" class="card-post__author-avatar card-post__author-avatar--small" style="background-image: url('images/avatars/0.jpg');">Written by Anna Kunis</a>
                    </div>
                  </div>
                  <div class="card-body">
                    <h5 class="card-title">
                      <a class="text-fiord-blue" href="#">게시물 불러오기</a>
                    </h5>
                    <p class="card-text d-inline-block mb-3">However venture pursuit he am mr cordial. Forming musical am hearing studied be luckily. But in for determine what would see...</p>
                    <span class="text-muted">28 February 2019</span>
                  </div>
                </div>
              </div>
            
            <div class="row">
              <div class="col-lg-6 col-sm-12 mb-4">
                <div class="card card-small card-post card-post--aside card-post--1">
                  <div class="card-post__image" style="background-image: url('images/content-management/5.jpeg');">
                    <a href="#" class="card-post__category badge badge-pill badge-info">Travel</a>
                    <div class="card-post__author d-flex">
                      <a href="#" class="card-post__author-avatar card-post__author-avatar--small" style="background-image: url('images/avatars/0.jpg');">Written by Anna Ken</a>
                    </div>
                  </div>
                  <div class="card-body">
                    <h5 class="card-title">
                      <a class="text-fiord-blue" href="#">게시물 불러오기</a>
                    </h5>
                    <p class="card-text d-inline-block mb-3">Conviction up partiality as delightful is discovered. Yet jennings resolved disposed exertion you off. Left did fond drew fat head poor jet pan flying over...</p>
                    <span class="text-muted">29 February 2019</span>
                  </div>
                </div>
              </div>
              <div class="col-lg-6 col-sm-12 mb-4">
                <div class="card card-small card-post card-post--aside card-post--1">
                  <div class="card-post__image" style="background-image: url('images/content-management/6.jpeg');">
                    <a href="#" class="card-post__category badge badge-pill badge-dark">Business</a>
                    <div class="card-post__author d-flex">
                      <a href="#" class="card-post__author-avatar card-post__author-avatar--small" style="background-image: url('images/avatars/1.jpg');">Written by Jamie James</a>
                    </div>
                  </div>
                  <div class="card-body">
                    <h5 class="card-title">
                      <a class="text-fiord-blue" href="#">Totally words widow one downs few age every seven if miss part by fact</a>
                    </h5>
                    <p class="card-text d-inline-block mb-3">Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education to admitted speaking...</p>
                    <span class="text-muted">29 February 2019</span>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-4">
                <div class="card card-small card-post mb-4">
                  <div class="card-body">
                    <h5 class="card-title">Had denoting properly jointure which well books beyond</h5>
                    <p class="card-text text-muted"> In said to of poor full be post face snug. Introduced imprudence see say unpleasing devonshire acceptance son. Exeter longer...</p>
                  </div>
                  <div class="card-footer border-top d-flex">
                    <div class="card-post__author d-flex">
                      <a href="#" class="card-post__author-avatar card-post__author-avatar--small" style="background-image: url('images/avatars/1.jpg');">Written by James Khan</a>
                      <div class="d-flex flex-column justify-content-center ml-3">
                        <span class="card-post__author-name">James Khan</span>
                        <small class="text-muted">21 March 2011</small>
                      </div>
                    </div>
                    <div class="my-auto ml-auto">
                      <a class="btn btn-sm btn-white" href="#">
                        <i class="far fa-bookmark mr-1"></i> Bookmark </a>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-4">
                <div class="card card-small card-post mb-4">
                  <div class="card-body">
                    <h5 class="card-title">Husbands ask repeated resolved but laughter debating</h5>
                    <p class="card-text text-muted">It abode words began enjoy years no do ï»¿no. Tried spoil as heart visit blush or. Boy possible blessing sensible set but margaret interest. Off tears...</p>
                  </div>
                  <div class="card-footer border-top d-flex">
                    <div class="card-post__author d-flex">
                      <a href="#" class="card-post__author-avatar card-post__author-avatar--small" style="background-image: url('images/avatars/2.jpg');">Written by Anna Kunis</a>
                      <div class="d-flex flex-column justify-content-center ml-3">
                        <span class="card-post__author-name">Chris Jones</span>
                        <small class="text-muted">21 March 2011</small>
                      </div>
                    </div>
                    <div class="my-auto ml-auto">
                      <a class="btn btn-sm btn-white" href="#">
                        <i class="far fa-bookmark mr-1"></i> Bookmark </a>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-4">
                <div class="card card-small card-post mb-4">
                  <div class="card-body">
                    <h5 class="card-title">Instantly gentleman contained belonging exquisite now direction</h5>
                    <p class="card-text text-muted">West room at sent if year. Numerous indulged distance old law you. Total state as merit court green decay he. Steepest merit checking railway...</p>
                  </div>
                  <div class="card-footer border-top d-flex">
                    <div class="card-post__author d-flex">
                      <a href="#" class="card-post__author-avatar card-post__author-avatar--small" style="background-image: url('images/avatars/3.jpg');">Written by Anna Kunis</a>
                      <div class="d-flex flex-column justify-content-center ml-3">
                        <span class="card-post__author-name">Mark Jameson</span>
                        <small class="text-muted">21 March 2011</small>
                      </div>
                    </div>
                    <div class="my-auto ml-auto">
                      <a class="btn btn-sm btn-white" href="#">
                        <i class="far fa-bookmark mr-1"></i> Bookmark </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-3 col-md-6 col-sm-12 mb-4">
                <div class="card card-small card-post h-100">
                  <div class="card-post__image" style="background-image: url('images/content-management/7.jpeg');"></div>
                  <div class="card-body">
                    <h5 class="card-title">
                      <a class="text-fiord-blue" href="#">Extremity so attending objection as engrossed</a>
                    </h5>
                    <p class="card-text">Morning prudent removal an letters by. On could my in order never it. Or excited certain sixteen it to parties colonel not seeing...</p>
                  </div>
                  <div class="card-footer text-muted border-top py-3">
                    <span class="d-inline-block">By
                      <a class="text-fiord-blue" href="#">Alene Trenton</a> in
                      <a class="text-fiord-blue" href="#">News</a>
                    </span>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-md-6 col-sm-12 mb-4">
                <div class="card card-small card-post h-100">
                  <div class="card-post__image" style="background-image: url('images/content-management/8.jpeg');"></div>
                  <div class="card-body">
                    <h5 class="card-title">
                      <a class="text-fiord-blue" href="#">Bed sincerity yet therefore forfeited his </a>
                    </h5>
                    <p class="card-text">Pursuit chamber as elderly amongst on. Distant however warrant farther to of. My justice wishing prudent waiting in be...</p>
                  </div>
                  <div class="card-footer text-muted border-top py-3">
                    <span class="d-inline-block">By
                      <a class="text-fiord-blue" href="#">Chris Jamie</a> in
                      <a class="text-fiord-blue" href="#">News</a>
                    </span>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-md-6 col-sm-12 mb-4">
                <div class="card card-small card-post h-100">
                  <div class="card-post__image" style="background-image: url('images/content-management/9.jpeg');"></div>
                  <div class="card-body">
                    <h5 class="card-title">
                      <a class="text-fiord-blue" href="#">Object remark lively all did feebly excuse our</a>
                    </h5>
                    <p class="card-text">Speaking throwing breeding betrayed children my to. Me marianne no he horrible produced ye. Sufficient unpleasing and...</p>
                  </div>
                  <div class="card-footer text-muted border-top py-3">
                    <span class="d-inline-block">By
                      <a class="text-fiord-blue" href="#">Monica Jordan</a> in
                      <a class="text-fiord-blue" href="#">News</a>
                    </span>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-md-6 col-sm-12 mb-4">
                <div class="card card-small card-post h-100">
                  <div class="card-post__image" style="background-image: url('images/content-management/10.jpeg');"></div>
                  <div class="card-body">
                    <h5 class="card-title">
                      <a class="text-fiord-blue" href="#">His followed carriage proposal entrance</a>
                    </h5>
                    <p class="card-text">For county now sister engage had season better had waited. Occasional mrs interested far expression directly as regard...</p>
                  </div>
                  <div class="card-footer text-muted border-top py-3">
                    <span class="d-inline-block">By
                      <a class="text-fiord-blue" href="#">Monica Jordan</a> in
                      <a class="text-fiord-blue" href="#">News</a>
                    </span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <footer class="main-footer d-flex p-2 px-3 bg-white border-top">
            <ul class="nav">
              <li class="nav-item">
                <a class="nav-link" href="#">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Services</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">About</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Products</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Blog</a>
              </li>
            </ul>
            <span class="copyright ml-auto my-auto mr-2">Copyright Â© 2018
              <a href="https://designrevision.com" rel="nofollow">DesignRevision</a>
            </span>
          </footer>
        </main>
      </div>
    </div>
    <div class="promo-popup animated">
      <a href="http://bit.ly/shards-dashboard-pro" class="pp-cta extra-action">
        <img src="https://dgc2qnsehk7ta.cloudfront.net/uploads/sd-blog-promo-2.jpg"> </a>
      <div class="pp-intro-bar"> Need More Templates?
        <span class="close">
          <i class="material-icons">close</i>
        </span>
        <span class="up">
          <i class="material-icons">keyboard_arrow_up</i>
        </span>
      </div>
      <div class="pp-inner-content">
        <h2>Shards Dashboard Pro</h2>
        <p>A premium & modern Bootstrap 4 admin dashboard template pack.</p>
        <a class="pp-cta extra-action" href="http://bit.ly/shards-dashboard-pro">Download</a>
      </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
    <script src="https://unpkg.com/shards-ui@latest/dist/js/shards.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Sharrre/2.0.1/jquery.sharrre.min.js"></script>
    <script src="scripts/extras.1.1.0.min.js"></script>
    <script src="scripts/shards-dashboards.1.1.0.min.js"></script>
  </body>
</html>