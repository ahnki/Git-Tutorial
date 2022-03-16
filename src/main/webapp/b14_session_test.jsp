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
	System.out.println("b14_session_test.jsp");
	Enumeration enumeration = session.getAttributeNames();
	
	int i = 0;
	
	while(enumeration.hasMoreElements()){
		i++;
		
		String sName = enumeration.nextElement().toString();
		String sValue = (String)session.getAttribute(sName);
		
		System.out.println(sName + " : " + sValue);
	}

	if(i != 0){
		System.out.println("session valid");
	} else {
		System.out.println("session invalid");
	}

	response.sendRedirect("b14_login.html");
%>
</body>
</html>