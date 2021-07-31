<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" id="wixDesktopViewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/DM/sceneary.svg" />
<title>DM</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/DMreset.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/DMmain.css">
</head>
<body>
	<jsp:include page="/WEB-INF/views/templates/Top.jsp" />
	<div class="body-container" style="border: 1px solid #CCCCCC">
		<div class="left">
			<header class="header">
				<div class="header-items"></div>
				<div class="header-items user" style="display:flex;justify-content:center	">
					<p class="user-name" style="text-align: center">${sessionScope.nickName }</p>
				</div>
				<div class="header-items"></div>
				<div class="header-items"></div>
			</header>
			<c:if test="${empty finalDMLists }" var="isEmpty">
				<div>
					<div>메세지가 없어요</div>
				</div>
			</c:if>
			<c:if test="${not isEmpty }">
				<div>
					<c:forEach items="${finalDMLists }" var="item" varStatus="loop">
						<div style="margin-top: 15px; margin-bottom: 15px; display: flex; margin-left: 1px; margin-right: 1px;">
							<img src="${pageContext.request.contextPath}/images/profile/icon/icon${loop.index%3 }.jpg" alt="" class="profileIcon"
								style="width: 56px; height: 56px; margin-left: 40px; margin-right: 10px; margin-top: 5px;">
							<div style="padding: 5px">
								<a id="enterWServer" href="<c:url value="/DM/DMChatBox.do?nickName=${item.nickName }&DMToNickName=${item.DMToNickName }"/>"> ${item.DMToNickName == sessionScope.nickName?item.nickName:item.DMToNickName }</a>
								<div style="height: 20px; overflow: hidden; text-overflow: ellipsis;" id="${item.DMToNickName == sessionScope.nickName?item.nickName:item.DMToNickName }DMCtt">${item.DMCtt }</div>
								<div style="color: gray" id="${item.DMToNickName == sessionScope.nickName?item.nickName:item.DMToNickName }Time">
									<fmt:formatDate value="${item.DMDate }" pattern="a HH:mm" />
								</div>
							</div>
							<c:if test="${item.cntNewDM != '0' }">
								새로운 메세지 ${item.cntNewDM }
							</c:if>
						</div>
					</c:forEach>
				</div>
			</c:if>
		</div>
		<div class="right" style="border-left: 1px solid #CCCCCC">
			<div class="main">
				<header class="header">
					<div class="header-items">
						<img src="${pageContext.request.contextPath}/images/DM/backarrow.svg" alt="" class="back-arrow">
					</div>
					<div class="header-items user">
						<img src="${pageContext.request.contextPath}/images/profile/icon/icon0.jpg" alt="" class="user-img">
						<p class="user-name">${sessionScope.nickName == getDMToNickName ? getNickName: getDMToNickName}</p>
					</div>
					<div class="header-items">
						<img src="${pageContext.request.contextPath}/images/DM/video-camera.svg" alt="" class="video-call">
					</div>
					<div class="header-items">
						<img src="${pageContext.request.contextPath}/images/DM/info.svg" alt="" class="info">
					</div>
				</header>
				<div class="main-window" id="chatMessage">
					<c:if test="${empty checkDMChatLists }" var="isEmpty">
						<div>
							<!-- checkDMChatLists가 비었으면 "메세지가 없어요 출력" -->
							<div>메세지가 없어요</div>
						</div>
					</c:if>
					<!-- checkDMChatLists가 비어있지 않으면(값이 있으면) -->
					<c:if test="${not isEmpty }">
						<!-- forEach로 checkDMChatLists 안의 데이터를 하나씩 반복해서 꺼내고 그것을 item이라는 var에 저장 -->
						<c:forEach items="${checkDMChatLists }" var="item" varStatus="loop">
							<c:if test="${item.DMToNickName == sessionScope.nickName }" var="checkSameID">
								<div class="l-msg-box" style="display:flex ">
									<img src="${pageContext.request.contextPath}/images/profile/icon/icon0.jpg" alt="d" class="l-user-img">
									<p class="l-msgs">
										${item.DMCtt }
									</p>
									<p style="position:relative; bottom:6px" >
										<span><fmt:formatDate value="${item.DMDate }" pattern="a hh:mm" /></span>
									</p>
								</div>
							</c:if>
							<c:if test="${not checkSameID }">
			 					<div class="r-msg-box" style="display:flex;	margin: auto 0; margin-left: auto "> 
									<p style="margin:7px 0px 0px 0px">
										<span ><fmt:formatDate value="${item.DMDate }" pattern="a hh:mm" /></span>
										<c:if test="${item.DMChecked == '1'}">
										<span id="DMCheck" style="color:#cccccc;">${item.DMChecked }</span>
										</c:if>
									</p>
									<p class="r-msgs">
										${item.DMCtt }
									</p>
								</div>
							</c:if>
							<!-- dmDate는 yyyy-MM-dd a HH:mm 패턴으로 꺼내도록 포맷지정 -->
						</c:forEach>
					</c:if>
				</div>
				<div class="input-container">
					<div class="input-bar">
						<img src="${pageContext.request.contextPath}/images/DM/camera.jpg" class="input-bar-items icon-camera">
						<input type="text" placeholder="메시지를 입력하세요..." id="message" class="input-bar-items input-message">
						<img src="${pageContext.request.contextPath}/images/DM/microphone.svg" class="input-bar-items icon-microphone"> <img src="${pageContext.request.contextPath}/images/DM/sceneary.svg"
							class="input-bar-items icon-photo"
						> <img src="${pageContext.request.contextPath}/images/DM/smile.svg" class="input-bar-items icon-gif">
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		//웹소켓 객체 저장용
		var wsocket;
		var connectFlag = false;
		var returnFlag = false;
		var nickName = '${sessionScope.nickName }';
		var DMToNickName = '${getDMToNickName ==sessionScope.nickName? getNickName : getDMToNickName }';
		var DMCtt;
		var today = new Date();
		var hours = today.getHours();
        var minutes = ('0' + today.getMinutes()).slice(-2);
        var timeString ;
        
		$(window).bind("load", function (){
			
			// 로딩되기 시작할때 웹소켓 열기
			wsocket = new WebSocket("ws:${pageContext.request.serverName}:${pageContext.request.serverPort}/websocket/chat-ws.do");
			$("#chatMessage").scrollTop($("#chatMessage").prop('scrollHeight'));
			wsocket.onopen = open; //open은 function이 저장된 var

			wsocket.addEventListener("message", receiveMessage);
			
			//에러처리
			wsocket.onerror = function(e) {
				console.log('에러발생:', e)
			};

		});
		$(window).bind('beforeunload', function() {
			wsocket.onclose = close();
		});
		
		

		//전송버튼 클릭시]
		/* $('#sendDM').click(function() {
			console.log('전송 클릭');

			sendMessage();
		}); */
		//메시지 입력후 전송 버튼 클릭이 아닌 엔터키 처리]
		$('#message').on('keypress', function(e) {
			//event.keyCode, event.which : 각 키보드의 고유번호를 알 수 있음
			console.log('e.keyCode:%s,e.which:%s', e.keyCode, e.which);
			var keyCode = e.keyCode ? e.keyCode : e.which;
			if (keyCode == 13) {//엔터 입력
				sendMessage();
				clearBox();
			}

		});

		var open = function() {
			wsocket.send(nickName+'-'+DMToNickName+' connected');
			
		}
		var close = function() {
			wsocket.send(nickName+'-'+DMToNickName+' disconnected');
		
		}
		//메시지를 DIV태그에 뿌려주기 위한 함수]

		 var appendMessage = function(msg) {
			 $('#chatMessage').append(msg);
	         //스크롤 맨 아래로 내리기
			 $("#chatMessage").scrollTop($("#chatMessage").prop('scrollHeight'));
		};
		//서버에서 메시지를 받을때마다 호출되는 함수 
		function receiveMessage(e){
			if(e.data.split("&")[0] == DMToNickName+'-'+nickName){
				switch(true){
					case (hours == 0)==true:
						hours = '오전 00';
						break;
					case (hours < 12)==true:
						hours = '오전 '+('0' + today.getHours()).slice(-2);
						break;
					case (hours == 12)==true:
						hours = '오후 '+ today.getHours().slice(-2);
						break;
					case (hours > 12 && hours < 24)==true:
						hours = '오후 '+('0' + (today.getHours()%12)).slice(-2);
						break;
					default:
						break;
				}
	            timeString = hours + ':' + minutes;
	            DMCtt =  e.data.split("&")[1];
	            appendMessage('<div class="l-msg-box" style="display:flex "><img src="${pageContext.request.contextPath}/images/profile/icon/icon0.jpg" alt="d" class="l-user-img"><p class="l-msgs">'+DMCtt+'</p><p style="position:relative; bottom:6px" ><span>'+timeString+'</span></p></div>');//서버로부터 받은 메시지를 msg:부분을 제외하고 div에 출력
	            updateList(DMCtt); 
			}else if(e.data == DMToNickName+'-'+nickName+' connected'){
	            //ajax 비동기 통신으로 대화 읽음 처리
	            $.ajax({
	               url:"<c:url value="/DM/checkDM.do" />",
	               type:"post",
	               dataType:'text',
	               data:
	                  {
	            	   nickName : nickName,
						DMToNickName : DMToNickName
	                  },
	               success:function(data){
	            	   
	                  //사용자 UI 상에서도 읽음여부 표시(1) 제거
	                  $('#DMCheck').remove();
	                  //상대방 연결 중 확인
	                  connectFlag = true;
	                  
	               },
	               error: function(error){}
	            });
	            //상대방에게도 현재 접속 중 전달 
	            if(!returnFlag){
	               //한번만 전달
	               returnFlag = true;
	               //접송 중 전달
	               open();   
	            }
	         }else if(e.data == DMToNickName+'-'+nickName+' disconnected'){//현재 채팅방에 상대가 연결 해제되었는지 확인
	        	
	        	
	            //상대방 연결 해제 확인
	            connectFlag = false;
	            //상대방 접속 시 리턴 하기 위한 flag 초기화
	            returnFlag = false;
	           
	         } 
		 
		
		}; 

		
		
  
		//서버로 메시지 전송하는 함수]
		function sendMessage() {
			DMCtt = $('#message').val();
			wsocket.send(nickName +'-'+ DMToNickName+'&'+ DMCtt);
			if (DMCtt.trim() == '') {
				alert('메세지를 입력하세요');
				return;
			}

			$.ajax({
				url : '<c:url value="/DM/sendDM"/>',
				method : 'POST',
				data : {
					read:connectFlag,
					nickName : nickName,
					DMToNickName : DMToNickName,
					DMCtt : DMCtt
				},
				dataType : 'json',
				success : function(resp) {
				},
				error : function(error) {//서버로부터 비정상적인 응답을 받았을때 호출되는 콜백함수
					console.log('%O:', error);
					console.log('에러:', error.responseText);
				}
			});
			
			switch(true){
				case (hours == 0)==true:
					hours = '오전 00';
					break;
				case (hours < 12)==true:
					hours = '오전 '+('0' + today.getHours()).slice(-2);
					break;
				case (hours == 12)==true:
					hours = '오후 '+ today.getHours().slice(-2);
					break;
				case (hours > 12 && hours < 24)==true:
					hours = '오후 '+('0' + (today.getHours()%12)).slice(-2);
					break;
				default:
					break;
			}
            timeString = hours + ':' + minutes;
            updateList(DMCtt);
            if(connectFlag){
	            appendMessage('<div class="r-msg-box" style="display:flex;	margin: auto 0; margin-left: auto "> <p style="margin:7px 0px 0px 0px"><span >'+timeString+'</span></p><p class="r-msgs">'+DMCtt+'</p></div>');   
	         
			}else{
	            appendMessage('<div class="r-msg-box" style="display:flex;	margin: auto 0; margin-left: auto "> <p style="margin:7px 0px 0px 0px"><span >'+timeString+'</span><span id="DMCheck" style="color:#cccccc;">1</span></p><p class="r-msgs">'+DMCtt+'</p></div>');
	         }	

	
			//포커스 주기
			$('#message').focus();
		}
		function clearBox() {
			$('#message').val('');
			return false;
		}
		function updateList(msg) {
			$('#${sessionScope.nickName == getDMToNickName ? getNickName: getDMToNickName}DMCtt').text(msg);
			$('#${sessionScope.nickName == getDMToNickName ? getNickName: getDMToNickName}Time').text('지금');
		}
		
	</script>
</body>
</html>