<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
<script src="https://unpkg.com/shards-ui@latest/dist/js/shards.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Sharrre/2.0.1/jquery.sharrre.min.js"></script>
<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous"
>
<link rel="stylesheet" id="main-stylesheet" data-version="1.1.0" href="<c:url value="/resources/styles/shards-dashboards.1.1.0.min.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/styles/extras.1.1.0.min.css"/>">
<script async defer src="https://buttons.github.io/buttons.js"></script>
<aside class="main-sidebar col-12 col-md-3 col-lg-2 px-0" style="z-index: 14;">
	<form action="#" class="main-sidebar__search w-100 border-right d-sm-flex d-md-none d-lg-none">
		<div class="input-group input-group-seamless ml-3">
			<div class="input-group-prepend">
				<div class="input-group-text">
					<i class="fas fa-search"></i>
				</div>
			</div>
			<input class="navbar-search form-control" type="text" placeholder="Search for something..." aria-label="Search">
		</div>
	</form>
	<div class="nav-wrapper">
		<ul class="nav flex-column">
			<a class="navbar-brand" href="<c:url value="/"/>"> 
             <img
               src="${pageContext.request.contextPath}/images/main/logo.png"
               width="auto" height="40px" />
            </a>
			<li id="MemberMNG" class="nav-item active"><a class="nav-link " href="#">
					<i class="material-icons">person</i><span>???????????? ??????</span>
				</a></li>
			<li id="ReviewMNG" class="nav-item active"><a class="nav-link " href="#">
					<i class="material-icons">view_module</i><span>?????? ??????</span>
				</a></li>
			<li id="StampMNG" class="nav-item active"><a class="nav-link " href="#">
					<i class="material-icons">vertical_split</i><span>????????? ??????</span>
				</a></li>
			<li id="TagMNG" class="nav-item active"><a class="nav-link " href="#">
					<i class="material-icons">table_chart</i><span>???????????? ??????</span>
				</a></li>
			<li id="errorMNG" class="nav-item active"><a class="nav-link " href="#">
					<i class="material-icons">error</i> <span>?????? ??????</span>
				</a></li>
		</ul>
	</div>
</aside>
<script>

	var pageHighlightFn = function(menu){
		if(menu === "analysisPage"){
			location.href = "<c:url value="/Admin/Admin.do?pageName=analysisPage"/>"
		}else if(menu === "MemberMNG"){
			location.href = "<c:url value="/Member/MemberMNG.do?pageName=MemberMNG"/>"
		}else if(menu === "StampMNG"){
			location.href = "<c:url value="/Stamp/StampMNG.do?pageName=StampMNG"/>"
		}else if(menu === "TagMNG"){
			location.href = "<c:url value="/Admin/TagMNG.do?pageName=TagMNG"/>"
		}else if(menu === "ReviewMNG"){
			location.href = "<c:url value="/Review/ReviewMNG.do?pageName=ReviewMNG"/>"
		}else  if(menu === "errorMNG"){
			location.href = "<c:url value="/Admin/errorMNG.do?pageName=errorMNG"/>"
		}
	}
	
	$(function(){
		$(".nav-item").removeClass("active");
		var pageName = "<c:out value='${param.pageName}' />";
		$("#"+pageName).addClass("active");
		
		$(".nav-item").click(function(){
			var menu = $(this).attr("id");
			pageHighlightFn(menu);
		})
	})
	
	
</script>
