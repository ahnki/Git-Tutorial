<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout Example for cookie test</title>
</head>
<body>
<%
	System.out.println("b13_logout.jsp");
	Cookie[] cookies = request.getCookies();

	for(int i = 0; i < cookies.length; i++){
		String str = cookies[i].getName();
		if(str.equals("abcd")){
			out.println("cookie name : " + cookies[i].getName() + "<br/>");
			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
		}
	}
	response.sendRedirect("b13_cookie_test.jsp");
%>
<!-- a href="b13_login.html">cookie checking</a -->
</body>
</html>