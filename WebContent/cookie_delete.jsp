<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 삭제</title>
</head>
<body>
	<b>쿠키 삭제</b><p>
	<%
	Cookie[] cookies = request.getCookies();
	
	if (cookies != null) {
		for ( int i = 0; i < cookies.length; i++ ){
			if(cookies[i].getName().equals("id")){
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
				out.print("쿠키 정보가 삭제 되었습니다 !");
			}
		}
	}else {
		out.print("설정된 쿠키 정보가 없습니다 !!");
	}
	
	%>
	
	<p><a href="cookie_check.jsp">[ 쿠키 확인  ]</a>
</body>
</html>