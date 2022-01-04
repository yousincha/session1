<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session07</title>
</head>
<body>
<%
	session.setMaxInactiveInterval(60*60);
	int	time=session.getMaxInactiveInterval()/60;
	
	out.print("세션 유효시간: "+time+"분");
%>
</body>
</html>