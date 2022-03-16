<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login Example for cookie test</title>
</head>
<body>
<%
	System.out.println("b13_login_welcome.jsp");
	Cookie[] cookies = request.getCookies();
	
	for(int i = 0; i < cookies.length; i++){
		String id = cookies[i].getName();
		System.out.println(id);	
		if(id.equals("abcd")){
			System.out.println("id checking!!");
			out.println(id + "님 안녕하세요.<br/>");
		}
	}
%>
<a href="b13_logout.jsp">logout</a>
</body>
</html>