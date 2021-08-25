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
   
   Connection conn = null;
   
   try {
      conn = DriverManager.getConnection(url, id, pw);
      out.println("MariaDB connection successful.<br>");
   } catch (SQLException sqlerr) {
      out.println("MariaDB connection fail<br>");
      out.println(sqlerr.getMessage() + "<br>");
   } finally {
      if (conn != null) {
         try {
            conn.close();
            out.println("MariaDB connection end<br>");
         } catch (Exception conerr) {
            conerr.printStackTrace();
         }
      }
   }
%>
</body>
</html>