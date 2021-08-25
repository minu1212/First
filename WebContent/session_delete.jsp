<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 삭제</title>
</head>
<body>
	<b>세션 삭제</b><p>
	
	
	세션 속성(id)  :  <%= session.getAttribute("id") %><br>
	세션 속성(name)  :  <%= session.getAttribute("name") %><br>
	
	<%
	out.print("세션 생성 시간 = " + session.getCreationTime() + "초<Br>");
	out.print("클라이언트의 해당 세션 마지막 접근 시간 = " + session.getLastAccessedTime() + "초<Br>");
	out.print("클라이언트의 세션 유지 시간 = " + ( + session.getLastAccessedTime()-session.getCreationTime()) + "초<Br>");
	out.print("세션 유효시간 = " + session.getMaxInactiveInterval() + "초(30분)<p>");
	%>
	
	세션 속성(id)  :  <%= session.getAttribute("id") %><br>
	세션 속성(name)  :  <%= session.getAttribute("name") %><br>
	
	<%
	session.invalidate();
	out.print("모든 세션 정보를 삭제하였습니다 !!<Br>");
	%>
	<p><a href="session_check.jsp">[  세션 속성 확인 ]</a>
	<p>by cho min woo<p>
</body>
</html>