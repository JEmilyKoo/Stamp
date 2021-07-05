<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
		$(function() {
			//페이지 최초 로드시 내용 숨기기]
			$(".actions").hide();
			$(".moreButton").click(function(){
		    	console.log($(this).next().css('display'));
		    	//클릭한 제목의 내용이 숨겨져 있다면
		    	if($(this).next().css('display')=='none'){
		    		$(".actions").fadeOut(200);//열린 모든 내용 숨기기
		    		$(this).next().fadeIn(200);//해당 제목의 내용 보이기
		    		
		    	}
		    	else{
		    		$(this).next().fadeOut(200);
		    	}
		    });
			
			$(".Button2").click(function(){
		    	if($(this).next().css('display')=='none'){
		    		$(this).next().fadeIn(200);//해당 제목의 내용 보이기
		    		
		    	}
		    	else{
		    		$(this).next().fadeOut(200);
		    	}
		    });
			
		});
		
</script>
</head>
<body>
session.invalidate();
			session.removeAttribute("login");
			session.removeAttribute("id");
<div>
	<jsp:include page="/WEB-INF/views/templates/Top.jsp"/></div>
	<div style="height:500px">d</div>
	<button class="Button2">
		<svg xmlns="http://www.w3.org/2000/svg" role="img" width="24" height="24" viewBox="0 0 24 24">
			<path fill-rule="evenodd" d="M22.444 13.5c-.82-.03-1.464-.716-1.444-1.537.02-.82.697-1.473 1.518-1.463.821.01 1.482.679 1.482 1.5-.016.844-.712 1.515-1.556 1.5zm0-6.5c-.82-.03-1.464-.716-1.444-1.537.02-.82.697-1.473 1.518-1.463C23.34 4.01 24 4.68 24 5.5c-.016.844-.712 1.515-1.556 1.5zm.112 10c.82.03 1.464.716 1.444 1.537-.02.82-.697 1.473-1.519 1.463-.82-.01-1.48-.679-1.481-1.5.017-.843.713-1.514 1.556-1.5z"></path>
							<!--아이콘그림-->
		</svg>
	버튼</button>
	<div class="actions" style="z-index:10; position: absolute; top: 80px; left:400px; background-color:red">달깍달깍
	
	</div>
	
			<div style="position: absolute; top: 200px; left:500px">
				<!-- 잘 보이기 위한 위치-->이 버튼을 실행하면 아래 목록이 뜨게 설정하세요
				<!--설명-->
				<div class="moreButtonDiv">
					<button class="moreButton">
						<svg xmlns="http://www.w3.org/2000/svg" role="img" width="24" height="24" viewBox="0 0 24 24">
							<path fill-rule="evenodd" d="M22.444 13.5c-.82-.03-1.464-.716-1.444-1.537.02-.82.697-1.473 1.518-1.463.821.01 1.482.679 1.482 1.5-.016.844-.712 1.515-1.556 1.5zm0-6.5c-.82-.03-1.464-.716-1.444-1.537.02-.82.697-1.473 1.518-1.463C23.34 4.01 24 4.68 24 5.5c-.016.844-.712 1.515-1.556 1.5zm.112 10c.82.03 1.464.716 1.444 1.537-.02.82-.697 1.473-1.519 1.463-.82-.01-1.48-.679-1.481-1.5.017-.843.713-1.514 1.556-1.5z"></path>
							<!--아이콘그림-->
						</svg>
					</button>
					<div class="actions" role="menu">
						<div>
							<button class="actionButton" role="menuitem">
								<div class="postActions">
									<div class="icon">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" strokeClass="_23zYH" fillClass="_3RleN">
											<path d="M12.5 3c.828 0 1.5.672 1.5 1.5v.708l.193.058C16.403 5.98 18 8.053 18 10.5v2.882c0 .682.514 1.085.724 1.17.907.46 1.276 1.327 1.276 2.066V17c0 .552-.448 1-1 1h-4.05c-.232 1.141-1.24 2-2.45 2-1.21 0-2.218-.859-2.45-2H6c-.552 0-1-.448-1-1v-.382c0-.816.43-1.567 1.124-1.982.584-.281.876-.7.876-1.254V10.5c0-2.518 1.692-4.64 4-5.293V4.5c0-.828.672-1.5 1.5-1.5z" transform="translate(-24 -12) translate(24 12)"></path>
										</svg>
										<!--아이콘그림-->
									</div>
									<div class="ActionButtonText"></div>
								</div>
							</button>
							<button class="actionButton" role="menuitem">
								<div class="postActions">
									<div class="icon">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
											<path fill-rule="evenodd" d="M13.777 6.084l6 4c.23.153.292.464.139.693-.037.055-.084.102-.139.139l-6 4c-.23.153-.54.091-.693-.139-.055-.082-.084-.178-.084-.277V13h-1c-3.866 0-7 3.134-7 7H4v-2.5c0-5.079 3.986-9.227 9-9.487V6.5c0-.276.224-.5.5-.5.099 0 .195.03.277.084zM14 7.434V9h-.5c-4.13 0-7.57 2.944-8.34 6.848C6.564 13.541 9.102 12 12 12h2v1.566l4.599-3.066L14 7.434z"> </path>
											<!--아이콘그림-->
										</svg>
									</div>
									<div class="ActionButtonText">공유</div>
								</div>
							</button>
							<button class="actionButton" role="menuitem">
								<div class="postActions" data-hook="post-actions__report">
									<div class="icon">
										<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18" style="fill-rule: evenodd;">
											<path d="M680,549a9,9,0,1,1,9-9A9,9,0,0,1,680,549Zm1-12a1,1,0,0,0-2,0v4a1,1,0,0,0,2,0v-4Zm-1,6a1,1,0,1,0,1,1A1,1,0,0,0,680,543Z" transform="translate(-671 -531)"> </path>
											<!--아이콘그림-->
										</svg>
									</div>
									<div class="ActionButtonText">게시물 신고</div>
								</div>
							</button>
						</div>
					</div>
				</div>
			</div>
</body>
</html>
