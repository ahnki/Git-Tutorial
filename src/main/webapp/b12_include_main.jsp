<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>include tag Example(main)</title>
</head>
<body>
<%
	System.out.println("b12_include_main.jsp");
%>
<h1>b12_include_main.jsp 페이지 입니다.</h1>
<jsp:include page="b12_include_sub.jsp"/>
<h1>여긴 b12_include_main.jsp 페이지 입니다.</h1>
</body>
</html>