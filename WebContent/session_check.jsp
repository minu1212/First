<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 속성 확인</title>
</head>
<body>
<b>세션 속성 확인</b><p>
	
	세션 속성(id)  :  <%= session.getAttribute("id") %><br>
	세션 속성(name)  :  <%= session.getAttribute("name") %><br>
	
	<%--세션 아이디(JSESSIONID) : <%= session.getid() %><p>--%>
	<p><a href="session_delete.jsp">[ 세션 삭제  ]</a>
</body>


</body>
</html>