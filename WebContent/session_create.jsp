<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 세션 속성 설정</title>
</head>
<body>
<b>세션 속성 설정</b><p>
	<%
	session.setAttribute("id","admin");
	session.setAttribute("name","관리자");
	
	 out.print("세션 속성이 설정 되었습니다 ! <Br>");
	 
	
	%>
	
	세션 속성(id)  :  <%= session.getAttribute("id") %><br>
	세션 속성(name)  :  <%= session.getAttribute("name") %><br>
	
	<p><a href="session_check.jsp">[ 세션 속성 확인] </a>
</body>
</html>