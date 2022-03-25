<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% System.out.println(this.getClass()); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>front controller</title>
</head>
<body>
<form method="post">
<a href="insert.do">insert</a>
<br>
<a href="http://localhost:8181<%=request.getContextPath()%>/update.do">update</a>
<br>
<a href="http://localhost:8181/JSP/select.do">select</a>
<br>
<a href="<%=request.getContextPath()%>/delete.do">delete</a>
</form>
</body>
</html>