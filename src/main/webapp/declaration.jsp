<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Declaration Example</title>
</head>
<body>
	<%!
		int i = 10;
		String str = "ABCDEF";
		
		public int sum(int a, int b){
			return a + b;
		}
	%>
	
	<%
		out.println("i = " + i + "<br/>");
		out.println("str = " + str + "<br/>");
		out.println("sum = " + sum(i, i * 2 ) + "<br/><br/>");
	%>
	
	i = <%= i %><br/>
	str = <%= str %>
</body>
</html>