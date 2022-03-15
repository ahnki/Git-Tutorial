<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Check 500 error page</title>
</head>
<body>
<%
	System.out.println(this.getClass());
	System.out.println(this.getServletName());
	System.out.println("b15_check_500error.jsp");
	
	int i = 40/0;
%>
</body>
</html>