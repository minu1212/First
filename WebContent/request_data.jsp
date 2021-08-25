<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<b> requst 내장 객체 - [클라이언트 관련 정보]</b>
클라이언트 IP 주소 : <%= requst.getRemoteAddr() %> <br>
클라이언트 이름 : <%= requst.getRemoteHost() %><br>
클라이언트 포트 : <%= requst.getRemontePort() %><br>
클라이언트 사용자 : <%= requst.getRemonteUser() %><br>


</body>
</html>