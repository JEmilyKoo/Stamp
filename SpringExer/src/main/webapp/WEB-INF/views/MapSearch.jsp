<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<head>
<title>MapSearch</title>
<style>
	.customoverlay {position:relative;bottom:85px;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;float:left;}
	.customoverlay:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
	.customoverlay a {display:block;text-decoration:none;color:#000;text-align:center;border-radius:6px;font-size:14px;font-weight:bold;overflow:hidden;background: #d95050;background: #d95050 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
	.customoverlay .title {display:block;text-align:center;background:#fff;margin-right:35px;padding:10px 15px;font-size:14px;font-weight:bold;}
	.customoverlay:after {content:'';position:absolute;margin-left:-12px;left:50%;bottom:-12px;width:22px;height:12px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
	.wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/styles/common.css"/>">
</head>

<body>
<button type="button" class="btn btn-success">Success</button>

	<jsp:include page="/WEB-INF/views/templates/Top.jsp"/>
	
	<!-- 메인페이지에만 있는 사이트맵 -->
	<jsp:include page="/WEB-INF/views/templates/TopMain.jsp"/>
	<div id="map" style="width:100%;height:700px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a1543cd28a4530c70758ba5ea975b33a"></script>
<script>


var mapContainer = document.getElementById('map'),  
    mapOption = { 
		center: new kakao.maps.LatLng(37.56681519680827, 126.97867489950377), 
        level: 9
        };
        
if (navigator.geolocation) {
    
    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
        
        var lat = position.coords.latitude, // 위도
            lon = position.coords.longitude; // 경도
        
        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
            message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
        
        // 마커와 인포윈도우를 표시합니다
        displayMarker(locPosition, message);
            
      });
    setInterval(function(){
    	
    	//현재 위치를 조사하는 함수
    	navigator.geolocation.getCurrentPosition(function(position){
    	
    		var lat = position.coords.latitude, // 위도
            lon = position.coords.longitude; // 경도
            
            console.log("위도 : %s , 경도 :%s",lat,lon)
    		
    	});	
    }, 5000);
    
} 

else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
    
    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667)    
        
    displayMarker(locPosition);
}

//지도에 마커와 인포윈도우를 표시하는 함수입니다
function displayMarker(locPosition) {
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({  
        map: map, 
        position: locPosition
    }); 

    // 지도 중심좌표를 접속위치로 변경합니다
    map.setCenter(locPosition);      
}    

        
var map = new kakao.maps.Map(mapContainer, mapOption); 

var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png'
	 imageSize = new kakao.maps.Size(50, 50),
	 imageOption = {offset: new kakao.maps.Point(27, 69)};

var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)

var index=0
var positions = [
	<c:forEach items="${list}" var="item">
	    {
	        title: '${item.stNo}', 
	        latlng: new kakao.maps.LatLng(${item.rvLat}, ${item.rvLng}),
	        content :
	        '<div class="wrap">' + 
            '    <div class="info">' + 
            '        <div class="title">' + 
        	'  		<a href="<c:url value="/Review/View.do?rvNo=${item.rvNo }"/>">' +
	        '    		<span class="title">${item.rvTitle}</span>' +
	        '  		</a>' +
            '            <div class="close" onclick="closeOverlay('+(index++)+')" title="닫기"></div>' + 
            '        </div>' + 
            '        <div class="body">' + 
            '            <div class="img">' +
            '                <img src="" width="73" height="70">' +
            '           </div>' + 
            '        </div>' + 
            '    </div>' +    
            '</div>'
	    },
	</c:forEach>
];

var ArrOverlay = [];
var MarkOverlay = [];
for (var i = 0; i < positions.length; i ++) {
	
    var marker = new kakao.maps.Marker({
        position: positions[i].latlng,
        image : markerImage,
    });
    marker.setMap(map);
    
    var overlay = new kakao.maps.CustomOverlay({
        map: map,
        position: positions[i].latlng,
        content: positions[i].content,
        yAnchor: 1 
    });
   
    overlay.setMap(null);
    ArrOverlay[i] = overlay;
    MarkOverlay[i] = marker;
    
    
    kakao.maps.event.addListener(marker, 'click', function() {
    	ArrOverlay[MarkOverlay.indexOf(this)].setMap(map);
    	if(setMap(map)==null)
    		console.log("1234")

    });
}
 
    // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
    function closeOverlay(data) {
    	ArrOverlay[data].setMap(null);   
    }
    
</script>


</body>
</html>
