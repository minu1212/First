<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDB 드라이버 로딩(driver_loading.jsp)</title>
</head>
<body>
<%
// JDBC 드라이버 로딩(loading JDBC driver)
String driverClass = "org.mariadb/jdbc.Driver";

try {
	Class.forName(driverClass);
	out.print("JDBC Driver loading 성공!<br>");
}catch(ClassNotFoundException err) {
	out.print("JDBC Driver loading 실패!!...WEB-INF/lib 폴더 확인<br>");
}

%>
</body>
</html>