<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie checking Example</title>
</head>
<body>
<%
	System.out.println("b13_cookie_test.jsp");
	Cookie[] cookies = request.getCookies();
	
	if(cookies.length <= 0){
		out.println("No cookie!<br/>");
		System.exit(0);
	}
	
	out.println("cookie length > 0<br/>");
	out.println("cookies length : " + cookies.length + "<br/>");
	out.println("=====================================================<br/>");
	
	for(int i = 0; i < cookies.length; i++){
		String str = cookies[i].getName();
		if(str.equals("cookie_name")){
			out.println("cookies[" + i + "] name : " + cookies[i].getName() + "<br/>");
			out.println("cookies[" + i + "] value : " + cookies[i].getValue() + "<br/>");
			out.println("=====================================================<br/>");
		} else {
			out.println("cookies[" + i + "] name : " + cookies[i].getName() + "<br/>");
			out.println("cookies[" + i + "] value : " + cookies[i].getValue() + "<br/>");
			out.println("No cookie!!");
		}
	}
%>
</body>
</html>