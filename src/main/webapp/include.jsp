<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>include Example</title>
</head>
<body>
	<h1>include.jsp페이지입니다.</h1>
	<%@ include file="지시자.jsp" %>
	<h1>include.jsp페이지입니다.</h1>
	<%@ include file="HelloWorld.jsp" %>
	<h1>include.jsp페이지입니다.</h1>
</body>
</html>