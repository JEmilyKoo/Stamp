<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	파일이 업로드 되었습니다.
	파일명 : ${savedName }
	
<script>
	var result = "${savedName}";
	parent.addFilePath(result); //파일명을 부모 페이지로 전달
</script>	
</body>
</html>