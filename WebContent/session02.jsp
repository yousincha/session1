<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session02</title>
</head>
<body>
<%
	String user_id=(String)session.getAttribute("userID");
	String user_pw=(String)session.getAttribute("userPW");

	out.println("설정된 세션 속성 값: "+user_id+"<br>");
	out.println("설정된 세션 속성 값: "+user_pw);
%>
</body>
</html>