<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js h-100" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>관리자 페이지</title>
<meta name="description" content="A high-quality &amp; free Bootstrap admin dashboard template pack that comes with lots of templates and components.">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO">
<link rel="stylesheet" id="main-stylesheet" data-version="1.1.0" href="<c:url value="/resources/styles/shards-dashboards.1.1.0.min.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/styles/extras.1.1.0.min.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/jquery.jqGrid-4.4.3/js/jquery-ui.css"/>" />
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/jquery.jqGrid-4.4.3/css/ui.jqgrid.css"/>" />
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/jquery.jqGrid-4.4.3/plugins/ui.multiselect.css"/>" />
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="></script>
<script type="text/javascript" src="<c:url value="/resources/jquery.jqGrid-4.4.3/js/i18n/grid.locale-kr.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/jquery.jqGrid-4.4.3/js/jquery.jqGrid.min.js"/>"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"></script>
<script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
<script type="text/javascript" src="https://unpkg.com/shards-ui@latest/dist/js/shards.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Sharrre/2.0.1/jquery.sharrre.min.js"></script>
<script type="text/javascript" async defer src="https://buttons.github.io/buttons.js"></script>
</head>
<style>
#btn1 {
	float: right;
	margin: 5px;
}

#select1 {
	text-align-last: center;
	width: 55px;
	height: 27px;
	float: right;
	margin: 5px;
	margin-right: 2px;
}
</style>
<body class="h-100">
	<div class="color-switcher-toggle animated pulse infinite">
		<i class="material-icons">settings</i>
	</div>
	<div class="container-fluid">
		<div class="row">
			<!-- Main Sidebar -->
			<jsp:include page="/WEB-INF/views/adminTemplates/Left.jsp" />
			<!-- End Main Sidebar -->
			<jsp:include page="/WEB-INF/views/adminTemplates/Top.jsp" />
			<!-- / .main-navbar -->
			<div class="main-content-container container-fluid px-4">
				<!-- Page Header -->
				<div class="page-header row no-gutters py-4">
					<div class="col-12 col-sm-4 text-center text-sm-left mb-0">
						<span class="text-uppercase page-subtitle">Admin</span>
						<h3 class="page-title">스탬프 관리</h3>
					</div>
				</div>
				<!-- End Page Header -->
				<div class="col-lg col-md-6 col-sm-6 mb-4">
					<div class="stats-small stats-small--1 card card-small">
						<div class="card-body p-0 d-flex">
							<div class="d-flex flex-column m-auto container-fluid">
								<c:if test="${empty dto }" var="isEmpty">
									<table class="table table-hover table-bordered table-condensed text-center" style="margin-bottom: 0px">
										<tr>
											<th class="col-md-1 text-center"><input type="checkbox"></th>
											<th class="col-md-1 text-center">스탬프번호</th>
											<th class="col-md-1 text-center">리뷰글번호</th>
											<th class="col-md-4 text-center">스탬프 등록일</th>
											<th class="col-md-4 text-center">스탬프 만료예정일</th>
											<th class="col-md-1 text-center">만료 유무</th>
										</tr>
									</table>
									<table class="table table-hover table-bordered table-condensed text-center">
										<tr>
											<th class="col-md-12">스탬프가 없어요</th>
										</tr>
									</table>
								</c:if>
								<c:if test="${not isEmpty }">
									<div>
										<button id="btn1" onclick="selectBtn()">변경</button>
										<select id="select1" name="selectFn">
											<option value="selectx">선택</option>
											<option value="renewFn">연장</option>
											<option value="expireFn">만료</option>
											<option value="deleteFn">삭제</option>
										</select>
										<%-- <c:url value="/Stamp/updateAdminStamp.do?stNo=${item.stNo }"/>
									<c:url value="/Stamp/deleteAdminStamp.do?stNo=${item.stNo }"/> --%>
									</div>
									<table class="table table-hover table-bordered table-condensed text-center">
										<thead>
											<tr>
												<th class="col-md-1 text-center"><input type="checkbox" id="selectAll"></th>
												<th class="col-md-1 text-center">스탬프번호</th>
												<th class="col-md-1 text-center">리뷰글번호</th>
												<th class="col-md-4 text-center">스탬프 등록일</th>
												<th class="col-md-4 text-center">스탬프 만료예정일</th>
												<th class="col-md-1 text-center">만료 유무</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${dto.lists }" var="item" varStatus="loop">
												<tr>
													<th scope="row" class="col-md-1 text-center"><input type="checkbox" name="checkedStamp" value="${item.stNo }" onclick="checkSelectAll()"></th>
													<td class="col-md-1 text-center">${item.stNo }</td>
													<td class="col-md-1 text-center">
														<a id="" href="<c:url value="/Review/ForumPost.do?rvNo=${item.rvNo }"/>">${item.rvNo } </a>
													</td>
													<td class="col-md-4 text-center">${item.stDate }</td>
													<td class="col-md-4 text-center">${item.stExpiredDate }</td>
													<td class="col-md-1 text-center">${item.stIsExpired }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</c:if>
								<div>${dto.pagingString }</div>
								<div>
									<table id="jqGrid">Grid
									</table>
									<div id="paging">paging</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Top Referrals Component -->
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/adminTemplates/Footer.jsp" />
</body>
<script type="text/javascript">
	var selectedArr = [];
	var nowPage = $
	{
		dto.nowPage
	};

	$('#selectAll').click(function() {
		if ($("input:checkbox[id='selectAll']").prop("checked")) {
			$("input[type=checkbox]").prop("checked", true);
			console.log(nowPage);
		} else {
			$("input[type=checkbox]").prop("checked", false);
		}
	});

	function checkSelectAll() {
		/* querySelectorAll("선택자") : 주어진 선택자와 일치하는 모든요소 리스트형태로 반환(변수 지정하면 변수명[인덱스]로 접근하거나, 변수명.length 사용가능 )*/
		const checkboxes = document.querySelectorAll("input[name ='checkedStamp']");

		const checked = document.querySelectorAll("input[name='checkedStamp']:checked");

		/* querySelector("선택자") : 주어진 선택자와 일치하는 요소 하나 반환*/
		const selectAll = document.querySelector("input[id='selectAll']");

		/* 전체 박스 개수와 선택된 박스 개수 비교해서 checked속성 변경 */
		if (checkboxes.length == checked.length) {
			selectAll.checked = true;
		} else {
			selectAll.checked = false;
		}
	}

	function selectBtn() {
		if ($("select[name=selectFn]").val() === "renewFn") {
			pushToArr();
			$.ajax({
				url : 'renewAdminStamp.do',
				type : 'post',
				traditional : true,
				data : {
					"selectedArr" : selectedArr
				},
				success : function(data) {
					console.log("성공");
					location.href = "<c:url value='/Stamp/AdminStamp.do?pageName=AdminStamp&nowPage=" + nowPage + "'/>";
				}

			});
		} else if ($("select[name=selectFn]").val() === "expireFn") {
			pushToArr();
			$.ajax({
				url : 'expireAdminStamp.do',
				type : 'post',
				traditional : true,
				data : {
					"selectedArr" : selectedArr
				},
				success : function(data) {
					console.log("성공");
					location.href = "<c:url value='/Stamp/AdminStamp.do?pageName=AdminStamp&nowPage=" + nowPage + "'/>";
				}

			});
		} else if ($("select[name=selectFn]").val() === "deleteFn") {
			pushToArr();
			$.ajax({
				url : 'deleteAdminStamp.do',
				type : 'post',
				traditional : true,
				data : {
					"selectedArr" : selectedArr
				},
				success : function(data) {
					console.log("성공");
					location.href = "<c:url value='/Stamp/AdminStamp.do?pageName=AdminStamp&nowPage=" + nowPage + "'/>";
				}

			});
		} else {
			alert("사용할 기능을 선택하세요");
		}
	}
	function pushToArr() {
		$("input:checkbox[name=checkedStamp]:checked").each(function() {
			selectedArr.push($(this).val());
		})
	}
</script>
<script type="text/javascript">
	
	$(document).ready(function(){
		var postData = ;
		var searchResultColNames = [ '스탬프번호', '리뷰글번호', '스탬프등록일', '스탬프만료일', '만료유무' ];
		var searchResultColModel = [ {
			name : 'stNo',
			index : 'stNo',
			align : 'center',
			width : '13%'
		}, {
			name : 'rvNo',
			index : 'rvNo',
			align : 'left',
			width : '13%'
		}, {
			name : 'stDate',
			index : 'stDate',
			align : 'center',
			width : '35%'
		}, {
			name : 'stExpiredDate',
			index : 'stExpiredDate',
			align : 'center',
			width : '35%'
		}, {
			name : 'stIsExpired',
			index : 'stIsExpired',
			align : 'center',
			width : '4%'
		} ];
			$("#jqGrid).jqGrid({
				url: "AdminStamp1.do",
				datatype:"json",
				postData: postData,
				colNames: searchResultColNames,
				colModel: searchResultColModel,
				height: 480,
				autowidth:true,
				rowNum: 5,
				rowList:[5,10,15],
				pager: '#paging',
				sortnaem: "stNo",
				sortorder: "desc"
				sortable: true,
				multiselect: true,
				emptyrecode:"스탬프가 존재하지 않습니다.",
				rownumbers: true,
				ondbClickRow: function(row){
					
				}
					
			})
	}
		
		
		
</script>
</html>