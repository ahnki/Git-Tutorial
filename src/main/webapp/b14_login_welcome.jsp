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
	System.out.println("b14_login_welcome.jsp");
	
	Enumeration enumeration = session.getAttributeNames();
	while(enumeration.hasMoreElements()){
		String sName = enumeration.nextElement().toString();
		String sValue = session.getAttribute(sName).toString();
		System.out.println(sName + " : " + sValue);
		if(sValue.equals("abcd")){
			//System.out.println(sName + " : " + sValue);
			out.println(sValue + "님 안녕하세요.<br/>");
		}			
	}		
%>
<a href="b14_logout.jsp">logout</a>
</body>
</html>