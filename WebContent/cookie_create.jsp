<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 생성(cookie_create.jsp)</title>
</head>
<body>
	<b>쿠키 생성</b><p>
	<%
	Cookie cookie = new Cookie("id","admin");
	cookie.setMaxAge(300);
	response.addCookie(cookie);
	
	out.println("쿠키 정보가 생성 되었습니다 ! <Br>");
	%>
	
	쿠키  이름 : <%= cookie.getName() %><br>
	쿠키  값 : <%= cookie.getValue() %><br>
	쿠키  유효시간 : <%= cookie.getMaxAge() %>초<br>
	
	<p><a href = "cookie_check.jsp">[ 쿠키 확인 ]</a>
	 
	
</body>
</html>