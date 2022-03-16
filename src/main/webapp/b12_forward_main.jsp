<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>forward tag Example(main page)</title>
</head>
<body>
<%
	System.out.println("b12_forward_main.jsp");
	
	
	request.setCharacterEncoding("utf-8");
%>
<h1>b12_forward_main.jsp 페이지 입니다.</h1>
<jsp:forward page="b12_forward_sub.jsp" >
	<jsp:param value="홍길동" name="name"/>
	<jsp:param value="abcd" name="id"/>
	<jsp:param value="1234%" name="pw"/>
</jsp:forward>
</body>
</html>