<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session03</title>
</head>
<body>
<%
	String name;
	String value;
	
	Enumeration en=session.getAttributeNames();
	int i=0;

	while(en.hasMoreElements()){ //데이터가 하나라도 들어있으면 true로 반환
		i++;
		name=en.nextElement().toString();//현재 커서가 가리키고 있는 데이터 객체를
										 //리턴해주고 커서의 위치는 다음칸으로 옮긴다.
		value=session.getAttribute(name).toString();
		out.println("설정된 세션의 속성 이름["+i+"]: "+name+"<br>");
		out.println("설정된 세션의 속성 값["+i+"]: "+value+"<br>");
	}
	
	//session.removeAttribute("userID");
%>
</body>
</html>