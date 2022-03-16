<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<% response.setStatus(200); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>404 error page</title>
</head>
<body>
<%
	System.out.println(this.getClass());
%>
웹서비스의 404오류에 대한 에러페이지 입니다..<br/>
오류 내용 [<%= exception.getMessage() %>]
</body>
</html>