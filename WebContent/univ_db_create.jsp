<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
Connection conn = null;
PreparedStatement pstmt = null;

String driverClass = "org.mariadb.jdbc.Driver";

try {
    Class.forName(driverClass);
    out.println("JDBC Driver loading 성공!<br>");
 } catch (ClassNotFoundException err) {
    out.println("JDBC Driver loading 실패!<br>");
 }

String url = "jdbc:mariadb://localhost:3306/";
String id = "root";
String pw = "0000";

try {
   conn = DriverManager.getConnection(url, id, pw);
   out.print("MariaDB 서버 연결 성공!<br>");

   String sql ="CREATE DATABASE  coll";
   pstmt = conn.prepareStatement(sql);
   pstmt.executeUpdate();
   out.print("대학 데이터베이스(univ) 생성 성공! <br>");
} catch (SQLException sqlerr) {
   out.print("대학 데이터베이스(coll) 생성 실패! <br>");
   out.print(sqlerr.getMessage() + "<Br>");
} finally {
   if (pstmt != null) {
      try {
         pstmt.close();
         out.println("Statement_close!<br>");
      }catch (SQLException sqlerr) {}
   }
   if (conn != null) {
      try {
         conn.close();
         out.print("MariaDB 서버 연결 종료!<br>");
         
      } catch(Exception conerr) {}
   }
}


%>
</body>
</html>