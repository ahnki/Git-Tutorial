<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join member</title>
</head>
<body>
<%!
	String name = "";
%>
<%
	System.out.println("b19_joinResult.jsp");
	Cookie[] cookies = request.getCookies();
		
	for(int i = 0; i < cookies.length; i++){
		String str = cookies[i].getName();
		if(str.equals("NAME")){
			name = cookies[i].getValue();
			System.out.println("cookies NAME=" + name);
			break;
		} else {
			name = "";
		}
	}
	
	if(name.length() <= 0){
		response.sendRedirect("b19_join.html");
	}
%>
<%=name %>님 회원가입이 정상 처리 되었습니다.<br/>
<a href="b19_login.html">로그인</a>
</body>
</html>