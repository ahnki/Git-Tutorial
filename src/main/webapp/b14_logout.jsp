<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session test with login</title>
</head>
<body>
<%
	System.out.println("b14_logout.jsp");
	Enumeration enumeration = session.getAttributeNames();
	while(enumeration.hasMoreElements()){
		String sName = enumeration.nextElement().toString();
		String sValue = session.getAttribute(sName).toString();
		System.out.println("SESSION [" + sName + " : " + sValue +"]");
		if(sValue.equals("abcd")){			
			session.removeAttribute(sName);
			//session.invalidate();
		}			
	}	
	
	while(enumeration.hasMoreElements()){
		System.out.println("session not empty");
	}
	response.sendRedirect("b14_session_test.jsp");
%>
<!-- a href="b14_login.html">cookie checking</a -->
</body>
</html>