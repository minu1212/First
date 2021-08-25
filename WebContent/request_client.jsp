<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<b> requst 내장 객체 - [전송데이터 관련 정보]</b>
요청정보 프로토콜 : <%= request.getProtocol() %> <br>
요청정보 전송방식 : <%= request.getMethod() %><br>
요청정보 컨텐츠타입: <%= request.getContentType() %><br>
요청정보 인코딩 : <%= request.getChracterEncoding() %><br>
요청정보 길이 : <%= request.getContentLength() %><br>


컨덱스트 경로 : <%= request.getProtocol() %> <br>
요청 URI : <%= request.getMethod() %><br>
요청 URL: <%= request.getContentType() %><br>




</body>
</html>