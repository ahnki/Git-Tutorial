<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie delete Example</title>
</head>
<body>
<%
	System.out.println("b13_cookie_del.jsp");
	Cookie[] cookies = request.getCookies();

	for(int i = 0; i < cookies.length; i++){
		String str = cookies[i].getName();
		if(str.equals("cookie_name")){
			out.println("cookie name : " + cookies[i].getName() + "<br/>");
			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
		}
	}
%>
<a href="b13_cookie_test.jsp">cookie checking</a>
</body>
</html>