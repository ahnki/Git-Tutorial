<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>request identification</title>
</head>
<body>
<%
	out.println("Server name : " + request.getServerName() + "<br/>");
	out.println("server port : " + request.getServerPort() + "<br/>");
	out.println("request method : " + request.getMethod() + "<br/>");
	out.println("request protocol : " + request.getProtocol() + "<br/>");
	out.println("request URL : " + request.getRequestURL() + "<br/>");
	out.println("request URI : " + request.getRequestURI() + "<br/>");
	out.println("context path : " + request.getContextPath() + "<br/>");
	out.println("context type : " + request.getContentType() + "<br/>");
	out.println("request session : " + request.getSession() + "<br/>");
	out.println("query string : " + request.getQueryString() + "<br/>");
	out.println("Class name : " + request.getClass() + "<br/>");
	
%>
</body>
</html>