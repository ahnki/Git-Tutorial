<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login Example for cookie test</title>
</head>
<body>
<%!
	String id, pw;
%>
<%
	System.out.println("b13_login_ok.jsp");
	id = request.getParameter("id");
	pw = request.getParameter("pw");
	
	if(id.equals("abcd") && pw.equals("12345")){
		Cookie cookie = new Cookie(id, pw);
		cookie.setMaxAge(60*60); //1 hour
		response.addCookie(cookie);
		System.out.println(cookie.getName() + " : " + cookie.getValue());	
		response.sendRedirect("b13_login_welcome.jsp");
	} else {
		response.sendRedirect("b13_login.html");
	}
%>
</body>
</html>