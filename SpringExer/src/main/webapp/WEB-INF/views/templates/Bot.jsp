<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
  <head>
      <!-- Required meta tags -->
    <meta charset="utf-8">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <title>클라이언트 앱</title>
  </head>
  <body>
      <div class="container h-100">
        <div class="row align-items-center h-100">
            <div class="col-md-8 col-sm-12 mx-auto">
                <div class="h-100 justify-content-center">
                    <div class="chat-container" style="overflow: auto; max-height: 80vh">

                        <div class="chat-message col-md-5 bot-message" style="margin-bottom:50px">
                          안녕하세요 챗봇 도우미입니다
                        </div>



                    </div>
                    <input class="input" type="text"  placeholder="내용을 입력하세요!!" id="query"/>

                </div>
            </div>
        </div>
    </div>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <script>
    function sendMessage(message) {
        console.log('입력메시지:',message)
		

        $.ajax({url:"https://8c7c3549d1c8.ngrok.io/message",data:{'message': message,'session_id':'<%=session.getId()%>'},type:'post',success:receiveResponse})

        //flask서버로부터 응답을 받으면 receiveResponse콜백함수가 호출됨
        function receiveResponse(data) {//data는 flask로부터 받은 응답 {'message':'다이얼로그플로우가 보내준값'}
          //chat-container에 bot의 응답 추가
          $('.chat-container').append('<div class="chat-message col-md-5 bot-message">'+data.message+'</div>')
          //스크롤바 아래로
          $(".chat-container").scrollTop($(".chat-container")[0].scrollHeight);

             console.log('받은 메시지:',data)
        }
    }
	$("#query").on('keypress',function(e) {

    if (e.keyCode == 13){
        //e.preventDefault();
        var query = $(this).val()
        console.log(query)
        if (!query) {//텍스트를 입력하지 않는 경우
          return
        }
        //chat-container에 사용자의 응답 추가
        $('.chat-container').append('<div class="chat-message col-md-5 offset-md-7 human-message">'+query+'</div>')
        // 입력창 클리어
        $('#query').val('')
        //스크롤바 아래로
        $(".chat-container").scrollTop($(".chat-container")[0].scrollHeight);
        //메시지 전송
        sendMessage(query)
    }
});
    
    
    
    
    </script>
  </body>
</html>