<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session04</title>
</head>
<body>
<%
	String user_id=(String)session.getAttribute("userID");
	String user_pw=(String)session.getAttribute("userPW");
	out.println("userId: "+user_id+"<br>");
	out.println("userPw: "+user_pw);
	
	session.removeAttribute("userID");
	session.removeAttribute("userPW");	
%>

<h4>세션 삭제 후</h4>

<%
	user_id=(String)session.getAttribute("userID");
	user_pw=(String)session.getAttribute("userPW");
	out.println("userId: "+user_id+"<br>");
	out.println("userId: "+user_pw);
%>

</body>
</html>