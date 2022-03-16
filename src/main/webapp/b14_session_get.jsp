<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session Example</title>
</head>
<body>
<%
	System.out.println("b14_session_get.jsp");
	Object obj1 = session.getAttribute("id");
	String id = (String)obj1;
	out.println("id : " + id + "<br/>");
	
	Object obj2 = session.getAttribute("pw");
	Integer pw = (Integer)obj2;
	out.println("password : " + pw + "<br/>");
	
	obj1 = session.getAttribute("name");
	id  = (String)obj1;
	out.println("name : " + id + "<br/>");
	
	out.println("============================<br/>");
	
	String sName, sValue;
	Enumeration enumeration = session.getAttributeNames();
	while(enumeration.hasMoreElements()){
		sName = enumeration.nextElement().toString();
		sValue = session.getAttribute(sName).toString();
		out.println(sName + " : " + sValue + "<br/>");
	}
	
	out.println("============================<br/>");
	
	String sessionID = session.getId();
	out.println("session ID : " + sessionID + "<br/>");
	int sessionInter = session.getMaxInactiveInterval();
	out.println("session Interval : " + sessionInter + "<br/>");
	
	out.println("============================<br/>");
	
	session.removeAttribute("id"); // 세션의 해당 Attribute만 삭제한다.
	enumeration = session.getAttributeNames();
	while(enumeration.hasMoreElements()){
		sName = enumeration.nextElement().toString();
		sValue = session.getAttribute(sName).toString();
		out.println(sName + " : " + sValue + "<br/>");
	}
	
	out.println("============================<br/>");
	
	session.invalidate(); //session 정보를 모두 지운다.
	if(request.isRequestedSessionIdValid()){
		out.println("session valid");
	} else {
		out.println("session invalid");
	}
%>
</body>
</html>