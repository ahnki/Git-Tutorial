<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Scriptlet Example</title>
</head>
<body>
	<%
	int i = 0;
	while(true){
		i++;
		out.println("2 * " + i + " = " + (2 * i) + "<br/>");
		out.println("===============<br/>");
		
		if(i >= 9) break;
	}
	%>
</body>
</html>