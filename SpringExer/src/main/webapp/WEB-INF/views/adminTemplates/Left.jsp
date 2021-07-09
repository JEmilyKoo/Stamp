<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<aside class="main-sidebar col-12 col-md-3 col-lg-2 px-0">
	<div class="main-navbar">
		<nav
			class="navbar align-items-stretch navbar-light bg-white flex-md-nowrap border-bottom p-0">
			<a class="navbar-brand w-100 mr-0" href="<c:url value="/Admin/Admin.do"/>"
				style="line-height: 25px;">
				<div class="d-table m-auto">
					<img id="main-logo" class="d-inline-block align-top mr-1"
						style="max-width: 25px;"
						src=<c:url value="/resources/images/shards-dashboards-logo.svg"/>
						alt="Shards Dashboard"> <span
						class="d-none d-md-inline ml-1">관리자 페이지</span>
				</div>
			</a> <a class="toggle-sidebar d-sm-inline d-md-none d-lg-none"> <i
				class="material-icons">&#xE5C4;</i>
			</a>
		</nav>
	</div>
	<form action="#"
		class="main-sidebar__search w-100 border-right d-sm-flex d-md-none d-lg-none">
		<div class="input-group input-group-seamless ml-3">
			<div class="input-group-prepend">
				<div class="input-group-text">
					<i class="fas fa-search"></i>
				</div>
			</div>
			<input class="navbar-search form-control" type="text"
				placeholder="Search for something..." aria-label="Search">
		</div>
	</form>
	<div class="nav-wrapper">
		<ul class="nav flex-column">
			
			
			<li id="analysisPage" class="nav-item"><a class="nav-link active" href="#" onclick="pageHighlightFn('analysisPage')"> 
			<i class="material-icons">edit</i> <span>분석</span></a></li>
			
			
			
			<li id="MemberMNG" class="nav-item"><a class="nav-link active" href="#" onclick="pageHighlightFn('MemberMNG')"> 
			<i class="material-icons">vertical_split</i><span>회원정보관리</span></a></li>
			
			
			
			<li id="AdminStamp" class="nav-item"><a class="nav-link active" href="#" onclick="pageHighlightFn('AdminStamp')"> 
			<i class="material-icons">view_module</i><span>스탬프관리</span></a></li>
			
			
			
			<li id="TagMNG" class="nav-item"><a class="nav-link active" href="#" onclick="pageHighlightFn('TagMNG')"> 
			<i class="material-icons">table_chart</i><span>해시태그 관리</span></a></li>
			
			
			
			<li id="ReviewMNG" class="nav-item"><a class="nav-link active" href="#" onclick="pageHighlightFn('ReviewMNG')"> 
			<i class="material-icons">person</i><span>리뷰 관리</span></a></li>



			<li id="errorMNG" class="nav-item"><a class="nav-link active" href="#" onclick="pageHighlightFn('errorMNG')">
			<i class="material-icons">error</i> <span>신고 관리</span></a></li>
		</ul>
	</div>
</aside>
<script>

	var pageHighlightFn = function(menu){
		if(menu === "analysisPage"){
			location.href = "<c:url value="/Admin/Admin.do?pageName=analysisPage"/>"
		}else if(menu === "MemberMNG"){
			location.href = "<c:url value="/Admin/MemberMNG.do?pageName=MemberMNG"/>"
		}else if(menu === "AdminStamp"){
			location.href = "<c:url value="/Stamp/AdminStamp.do?pageName=AdminStamp"/>"
		}else if(menu === "TagMNG"){
			location.href = "<c:url value="/Admin/TagMNG.do?pageName=TagMNG"/>"
		}else if(menu === "ReviewMNG"){
			location.href = "<c:url value="/Admin/ReviewMNG.do?pageName=ReviewMNG"/>"
		}else  if(menu === "errorMNG"){
			location.href = "<c:url value="/Admin/errorMNG.do?pageName=errorMNG"/>"
		}
	}
	
	$(document).ready(function(){
		$(".nav-item").removeClass("active");
		var pageName = "<c:out value='${param.pageName}' />";
		$("#"+pageName).addClass("active");
	})
	/* https://elvis-note.tistory.com/entry/%ED%95%98%EC%9D%B4%EB%9D%BC%EC%9D%B4%ED%8A%B8-%EC%B2%98%EB%A6%AC-2-%ED%95%98%EC%9D%B4%EB%9D%BC%EC%9D%B4%ED%8A%B8-%EC%B2%98%EB%A6%AC?category=770144 */
	
	
</script>