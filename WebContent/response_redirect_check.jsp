<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- post방식 한글 데이터 전송 경우 깨짐 현상 방지 --%>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체 강제 이동(customer_request_check.jsp)</title>
</head>
<body>

<b>response 내장객체 강제 이동 페이지</b><Br>

<%
	// 전송 데이처 변수 할당 및 확인
	String cust_id = request.getParameter("cust_id");
	String cust_pw = request.getParameter("cust_pw");
	
	out.print("아이디 = " + cust_id + "<Br>");
	out.print("비밀번호 = " + cust_pw + "<Br>");


	//지정 페이지(URL)로 강제 이동
	//response.sendRedirect("./reponse_redirest_form.jsp");
%>
	 
<p><a href="./response_redirect_form.jsp">[ redirect 폼 ]</a>	 


</body>
</html>