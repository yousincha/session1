<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session05</title>
</head>
<body>
<%
	String user_id=(String)session.getAttribute("userID");
	String user_pw=(String)session.getAttribute("userPW");
	out.println("userId: "+user_id+"<br>");
	out.println("userPw: "+user_pw);
	if(request.isRequestedSessionIdValid()==true){
		out.print("세션이 유효하다.");
		
		}else{
			out.print("세션이 유효하지 않다.");
		}
		session.invalidate();
%>

<h4>세션 삭제 후</h4>

<%
	if(request.isRequestedSessionIdValid()==true){
	out.print("세션이 유효하다.");
	
	}else {
	out.print("세션이 유효하지 않다.");
	}
%>

</body>
</html>