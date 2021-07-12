<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/common/IsLogin.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<%@ page import="java.io.File" %>
<%@ page import="java.util.Enumeration" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>Write.jsp</title>

<!-- 부트스트랩 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.js" defer></script>



<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<style>
	#img {
	margin:20px 0;
	}
</style>


</head>
<body>
	<!-- 네비게이션 시작 -->
	<jsp:include page="/WEB-INF/views/templates/Top.jsp"/>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a1543cd28a4530c70758ba5ea975b33a"></script>


	<!-- 네비게이션 끝 -->
	<!-- 실제 내용 시작 -->
	<div class="container">
		<div class="page-header">
			<h1>여행 리뷰게시판<small>등록 페이지</small></h1>			
		</div>
		<div class="row">
		<div class="col-md-12">
			<form id="testForm" class="form-horizontal" enctype="multipart/form-data" method="post" action="<c:url value='/Review/Write.do'/>">
			<fieldset>
		            <div id="map" style="width:500px;height:400px;background-color:yellow;"></div>
		            <div id="clickLatlng"></div>
	        </fieldset>
	        
	        
				
				<!-- 씨큐리티 적용:csrf취약점 방어용 -->
				<div class="form-group">
					<label class="col-sm-2 control-label">제목</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="rvTitle"
							placeholder="제목을 입력하세요?">
					</div>
				</div>
			
				
				<div class="form-group">
					<label class="col-sm-2 control-label">내용</label>
					<!-- 중첩 컬럼 사용 -->
					<div class="col-sm-10">
						<div class="row">
							<div class="col-sm-8">
								<textarea id="summernote" class="form-control summernote" name="rvCtt" rows="5"
									placeholder="내용 입력하세요"></textarea>
									
							</div>
						</div>
						
							 
							 
							 
							 
							 
						<select name="rvCategory1" id="category1">
								<option value="">==카테고리 선택==</option>
								<option value="서울" name="rvCategory1"
									<c:if test="${fn:contains(param.category,'서울') }">selected</c:if>>서울</option>
								<option value="경기도" name="rvCategory1"
									<c:if test="${fn:contains(param.category,'경기도') }">selected</c:if>>경기도</option>
						</select>
							 
							 
						<select name="rvCategory2" id="category2">
								<option value="">==카테고리 선택==</option>
								<option value="여행지1" name="rvCategory2"
									<c:if test="${fn:contains(param.category,'여행지1') }">selected</c:if>>여행지1</option>
								<option value="여행지2" name="rvCategory2"
									<c:if test="${fn:contains(param.category,'여행지2') }">selected</c:if>>여행지2</option>
						</select>
							 
							 
							 
							 
							 
							 
							 
							 
						</div>

					</div>
						
				  
				</div>
				
				 
				      <!-- 파일첨부 -->
         <!-- <form  action="/springBoard/file/upload.do" method="post"  enctype="multipart/form-data">
             <input type="file" name="file"/>
          -->

	<label for="gdsImg">이미지</label>
	<input type="file" id="gdsImg" name="file"/>
	<img src="" id="img"/>
<%=request.getRealPath("/") %>
       
        
				<input type="hidden" name="rvLat"/>
				<input type="hidden" name="rvLng"/>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-primary">등록</button>
					
					
					</div>
				</div>
			</form>
		</div>
	</div>
	

	
	<!-- 실제 내용 끝 -->
	<!--  푸터 시작 -->
	<jsp:include page="/WEB-INF/views/templates/Footer.jsp"/>
	<!-- 푸터 끝 -->
	    <script>
	    if(navigator.geolocation){//브라우저에 Geolocation 지원 여부 판단
            //PositionOptions객체 설정용]
            var options = {timeout:3000,maxinumAge:5000};
            //현재 위치 정보 딱 한번만 얻기
            navigator.geolocation.getCurrentPosition(successCallback);           
        }
        //위치 정보를 얻었을 때 자동으로 호출되는 콜백 함수 : 인자는 Position객체
        function successCallback(position){
            //위도/경도얻기
            var lat = position.coords.latitude;
            var lng = position.coords.longitude;
            //div에 지도 표시하기
            dispalyKakaomap(lat,lng);
        }///////successCallback
        function dispalyKakaomap(lat,lng){

			var container = document.getElementById('map');
			var options = {
				center: new kakao.maps.LatLng(lat, lng),
				level: 5
			};
			var map = new kakao.maps.Map(container, options);
			
	        var zoomControl = new kakao.maps.ZoomControl();
	        map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);


	        // 지도를 클릭한 위치에 표출할 마커입니다
	        var marker = new kakao.maps.Marker({ 
	            // 지도 중심좌표에 마커를 생성합니다 
	            position: map.getCenter() 
	        }); 
	        // 지도에 마커를 표시합니다
	        marker.setMap(map);
	        
	        // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다

	        // 지도에 클릭 이벤트를 등록합니다
	        // 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
	        kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
	            
	            // 클릭한 위도, 경도 정보를 가져옵니다 
	            var latlng = mouseEvent.latLng; 
	            
	            // 마커 위치를 클릭한 위치로 옮깁니다
	            marker.setPosition(latlng);
	         
	            var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
	            message += '경도는 ' + latlng.getLng() + ' 입니다';
	            
	            var resultDiv = document.getElementById('clickLatlng'); 
	            resultDiv.innerHTML = message;
	            $("input[name=rvLat]").val(latlng.getLat());
	            $("input[name=rvLng]").val(latlng.getLng());
	        });
        }
      
   
      
      //파일업로드 구현중
	 $("#gdsImg").change(function(){
		if(this.files && this.files[0]){
			var reader = new FileReader;
			reader.onload = function(data){
				$("#img").attr("src", data.target.result).width(100);
				
			}
			reader.readAsDataURL(this.files[0]);
		} 
	 });
      
      
      //썸머노트 구현중

$(document).ready(function() {
	//여기 아래 부분
	$('#summernote').summernote({
		  height: 300,                 // 에디터 높이
		  minHeight: null,             // 최소 높이
		  maxHeight: null,             // 최대 높이
		  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
		  lang: "ko-KR",					// 한글 설정
		  placeholder: '최대 2048자까지 쓸 수 있습니다'	//placeholder 설정
          
	});
});
      
      //카테고리 구현중
      
      /*
    $(document).ready(function () {
            // 콤보박스가 변경될 때
            $('#category').change(function () {
                // 드롭다운리스트에서 선택된 값을 텍스트박스에 출력
                var selectedText =  $("#category option:selected").text();
                     //$("option:selected").text();
                    //$(":selected").text();  // 드롭다운리스트가 하나밖에 없다면 이렇게 써도 됨
                $('#category').val(selectedText);
            });
        });
  */      
      
      /*ajax참고용
      
      $("#like").click(function(){
            		$.ajax({
            			url:"<c:url value="/Review/Like.do"/>",
            			type:"post",
            			data:{nickName, rvNo},
            			dataType:"text",
            			success:function(data){
            				if(data==0){
            					$("#like").attr("src","../images/review/fullH.png");
            					$("#likecount").html(++likecount);
            				}
            				else{
            					$("#like").attr("src","../images/review/beanH.png");
            					$("#likecount").html(--likecount);
            				}
            			},
            			error:function(){
            				alert("로그인 후 이용해주세요.");
            			}
            		});
            	});
      
      */
      
</script>

        
      
        
        
        

</body>
</html>