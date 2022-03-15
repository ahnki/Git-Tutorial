<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isErrorPage="true"%>
<% response.setStatus(200); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error page for exception processing</title>
</head>
<body>
<%
	System.out.println(this.getClass());
	System.out.println(this.getServletName());
	System.out.println("b15_errorPage.jsp");
%>
예외페이지입니다.<br/>
<%= exception.getMessage() %>
</body>
</html>