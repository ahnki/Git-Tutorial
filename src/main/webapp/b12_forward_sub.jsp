<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>forward tag Example(sub page)</title>
</head>
<body>
<%
	System.out.println("b12_forward_sub.jsp");
%>
<%!
	String name, id, pw;
%>
<%
	response.setContentType("text/html; charset=utf-8");
	name = request.getParameter("name");
	id = request.getParameter("id");
	pw = request.getParameter("pw");
%>
<h1>b12_forward_sub.jsp 페이지 입니다.</h1>
이름 : <%= name %><br/>
아이디 : <%= id %><br/>
비밀번호 : <%= pw %><br/>
==================================
</body>
</html>