<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session Example</title>
</head>
<body>
<%
	System.out.println("b14_session_set.jsp");
	session.setAttribute("id", "abcd");
	session.setAttribute("pw", 123456);
	session.setAttribute("name", "홍길동");
	session.setMaxInactiveInterval(3600);
%>
<a href="b14_session_get.jsp">session get</a>
</body>
</html>