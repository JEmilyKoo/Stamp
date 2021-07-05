<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"  %>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name ="viewport" content="width=device-width, initial-scale=1.0">
    <!--여기 시트 추가해야 함-->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/NewPost.css">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="main.js" defer></script>
    
<script>
	function logout(){
		location.replace('<c:url value="/OneMemo/Auth/Logout.do"/>');
	}

</script>
    <!-- 자바스크립트도 안 만들어놨다-->
    <!-- 일단 시트를 여기에 만들었다-->
<style>
    body {
        margin : 0;
        padding-top: 50px;
        text-decoration:none;
        
    }
    .navbar-default { 
        min-height:80px;
        
        max-height:80px;
        vertical-align: middle;
        padding:8px 12px;
    }
    
    .navbar-right{
        display : flex;
        list-style: none;
        color: black;
        padding-left:0;
        
    }
    
    .navbar-right li{
        padding : 8px 12px;
    }
    .fontTitle{
        font: 700 22px/22px 'Noto Sans KR', sans-serif !important;
        color: DodgerBlue !important;
    }
    
    .fontSub{
        font: 300 15px/1.875em 'Noto Sans KR',sans-serif !important;
        text-align:left;
        line-height:1.875em;
    }
    
    </style>
</head>
<body>
    <nav class="navbar navbar-default navbar-fixed-top ">	
        <div class="container-fluid">
            <div class="navbar-header">
                <!--화면 크기가 작을때 보여지는 네비게이션바(모바일용)  -->
                <button class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#collapse-menu">
                    <span class="icon-bar"></span> <span class="icon-bar"></span> <span
                        class="icon-bar"></span>
                </button>
                <!-- CI표시 -->
                <a class="navbar-brand" href="<c:url value="/"/>">
                    <span class="glyphicon glyphicon-map-marker"></span>
                    <span class="fontTitle">찍GO</span>
                    <br/>
                    <p class="fontSub">지금 바로 떠나세요</p>
                </a>
            </div>
            <!-- 화면 크기가 클때 상단에 보여지는 네비게이션바(데스크탑용) -->
            <div class="collapse navbar-collapse" id="collapse-menu">
                <!-- 네비게이션바에 폼 추가 -->
                <ul class="nav navbar-nav navbar-right">
				<li><a href="<c:url value="/"/>"    >메인</a></li>
                    <li><a href="<c:url value="/Review/List.do"/>">여행 리뷰/정보</a></li>
                    
				<li><a href="<c:url value="/Stamp/MapSearch.do"/>">지도 검색</a></li>
				
				<li><a href="<c:url value="/Stamp/guide.do"/>">가이드</a></li>
				
                   
                    <c:if test="${not empty sessionScope.login }" var="isLogin">
                    
				<li><a href="<c:url value="/Member/Logout.do"/>">Logout</a></li>
				    </c:if>
                    <c:if test="${not isLogin }">	
				<li><a href="<c:url value="/Member/Login.do"/>">Login</a></li>	
				<li><a href="<c:url value="/Member/Join.do"/>">JOIN</a></li>	
                    </c:if>    
                </ul>
                
            </div>
        </div>
    </nav>
</body>