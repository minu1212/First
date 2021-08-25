<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <h1 class="mt-5">학생 입력</h1>
  <br><br>
   <form name="student_form" method="post" action="std_ins_db.jsp">
  <table>
  <caption>학생 정보 입력</caption>
  <tr>
    <th>&nbsp; 학 번</th>
    <td><input type="text" name="hakbun" size="10" maxlength="10" required autofocus></td>
  </tr>
  <tr>
    <th>&nbsp; 이 름</th>
    <td><input type="text" name="name" size="10" maxlength="5" required></td>
  </tr>
  <tr>
    <th>&nbsp; 학 년</th>
    <td><input type="radio" name="year" value="1" required>1학년&nbsp;
    <input type="radio" name="year" value="2" required>2학년&nbsp;
    <input type="radio" name="year" value="3" required>3학년&nbsp;
    <input type="radio" name="year" value="4" required>4학년&nbsp;</td>
  </tr>
  <tr>
    <th>&nbsp; 학 과</th>
    <td><input type="text" name="dept" size="10" maxlength="10" required></td>
  </tr>
  <tr>
    <th>&nbsp; 주 소</th>
    <td><input type="text" name="addr" size="40" maxlength="40" required></td>
  </tr>
  <tr>
    <td colspan="2" style="text-align:center;">
       <input type="submit" value="전송">
       <input type="reset" value="취소"></td>
  </tr>
  </table>
</form>
   
   
   
   
   
   
    <p>Back to <a href="/docs/5.1/examples/sticky-footer/">the default sticky footer</a> minus the navbar.</p>
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