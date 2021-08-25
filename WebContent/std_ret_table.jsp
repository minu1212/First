<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import = "java.sql.*" %>
    









<!doctype html>
<html lang="en" class="h-100">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.87.0">
    <title>Sticky Footer Navbar Template · Bootstrap v5.1</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sticky-footer-navbar/">

    

    <!-- Bootstrap core CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">


    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="sticky-footer-navbar.css" rel="stylesheet">
  </head>
  <body class="d-flex flex-column h-100">
    
<header>
  <!-- Fixed navbar -->
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">학사관리시스템</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="./index.html">메인</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="./std_ret_table.jsp">학생관리</a>
          </li>
              <li class="nav-item">
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">교수관리</a>
          </li>
              <li class="nav-item">
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">직원관리</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">관리메뉴</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</header>

<!-- Begin page content -->
<main class="flex-shrink-0">
  <div class="container">
  <br><br>
    <h1 class="mt-5">학생관리</h1>
  <br><br>
  
  
  
  
    
<%
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rset= null;

String driverClass = "org.mariadb.jdbc.Driver";

try {
   Class.forName(driverClass);
   out.print("JDBC Driver load 성공!<br>");
} catch (ClassNotFoundException err) {
   out.print("JDBC Driver load 실패!!...WEB-INF/lib 폴더 확인<br>");
}

String url = "jdbc:mariadb://localhost:3306/univ";
String id = "root";
String pw = "0000";

try {
   conn=DriverManager.getConnection(url,id,pw);
   out.print("데이터베이스 연결 성공!<br>");
   
   String sql = "SELECT * FROM student ORDER BY hakbun ASC";
   pstmt = conn.prepareStatement(sql);
   rset = pstmt.executeQuery();
   
%>
<form name="student_form_table">
<table>
   <caption>학생 정보 검색</caption>
   <tr>
   <th>학번</th>
   <th>이름</th>
   <th>학년</th>
   <th>학과</th>
   <th>주소</th>
   </tr>
<%
   while (rset.next()) {
      String hakbun = rset.getString("hakbun");
      String name = rset.getString("name");
      String year = rset.getString("year");
         year = year + "학년";
      String dept = rset.getString("dept");
      String addr = rset.getString("addr");
%>   
   <tr>
      <td><%=hakbun %></td>      
      <td><%=name %></td>      
      <td><%=year %></td>      
      <td><%=dept %></td>      
      <td><%=addr %></td>      
   </tr>   
<%       
            
   }

} catch (SQLException sqlerr) {
   out.print("SQL 질의 오류!!" + "<br>");
   out.print(sqlerr.getMessage() + "<br>");
} finally {
   if (rset != null) {
      try {
         rset.close();
         out.print("ResultSet_close!<br>");
      } catch (SQLException sqlerr) {}
   }
   if (pstmt != null) {
      try {
         pstmt.close();
         out.print("Statement_close!<br>");
      } catch (SQLException sqlerr) {}
   }
   if (conn != null) {
      try {
         conn.close();
         out.print("MariaDB 서버 연결 종료!<br>");
      }catch (Exception conerr) {}
   }
}
%>
</table></form> 
    
    
    
    
    
    <p class="lead">Pin a footer to the bottom of the viewport in desktop browsers with this custom HTML and CSS. A fixed navbar has been added with <code class="small">padding-top: 60px;</code> on the <code class="small">main &gt; .container</code>.</p>
    <p><a href="./std_ins_form.jsp">학생등록</p>
  </div>
</main>

<footer class="footer mt-auto py-3 bg-light">
  <div class="container">
    <span class="text-muted">by chominwoo</span>
  </div>
</footer>


    <script src="/docs/5.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>

      
  </body>
</html>
