<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session test with login</title>
</head>
<body>
<%!
	String id, pw;
%>
<%
	System.out.println("b14_login_ok.jsp");
	id = request.getParameter("id");
	pw = request.getParameter("pw");
	
	if(id.equals("abcd") && pw.equals("12345")){
		session.setAttribute("id", id);
		System.out.println("id : " + id);
		System.out.println("pw : " + pw);
		response.sendRedirect("b14_login_welcome.jsp");
	} else {
		response.sendRedirect("b14_login.html");
	}
%>

</body>
</html>