<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% System.out.println(this.getClass()); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dispatcher example</title>
</head>
<body>
<%
	//request.setCharacterEncoding("UTF-8");
%>
<h2>dispatcher</h2>
<hr>
id : <%=request.getAttribute("id") %><br>
name : <%=request.getAttribute("name") %>
</body>
</html>