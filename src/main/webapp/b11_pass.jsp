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
<%= age %>�� �����Դϴ�.<br>
<a href="b11_form.html">ó������ �̵�</a>
</body>
</html>