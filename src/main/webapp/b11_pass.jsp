<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>request redirection Example</title>
</head>
<body>
<%!
	int age;
%>
<%
	String str = request.getParameter("age");
	age = Integer.parseInt(str);
%>
<%= age %>세 성인입니다.<br>
<a href="b11_form.html">처음으로 이동</a>
</body>
</html>