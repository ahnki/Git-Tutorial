<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% System.out.println(this.getClass()); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>redirect example</title>
</head>
<body>
<%
	request.setAttribute("id", "abcde");
	request.setAttribute("pw", "12345");
	
	
	response.sendRedirect("RequestObj");
%>
</body>
</html>