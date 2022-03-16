<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie setting Example</title>
</head>
<body>
<%
	System.out.println("b13_cookie_set.jsp");
	Cookie cookie = new Cookie("cookie_name", "cookie_value");
	cookie.setMaxAge(60*60); //1 hour
	response.addCookie(cookie);
%>
<a href="b13_cookie_get.jsp">cookie get</a>
</body>
</html>