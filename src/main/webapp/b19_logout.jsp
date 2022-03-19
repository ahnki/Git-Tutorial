<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout</title>
</head>
<body>
<%
	System.out.println("b19_logout.jsp");
	session.invalidate();
	
	response.sendRedirect("b19_login.html");
%>
</body>
</html>