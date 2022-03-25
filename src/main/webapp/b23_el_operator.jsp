<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL operator</title>
</head>
<body>
<h3> EL(Expression Language) </h3>
${ 1 + 2 }<br/>
${ 1 - 2 }<br/>
${ 1 * 2 }<br/>
${ 1 / 2 }<br/>
${ 1 > 2 }<br/>
${ 1 < 2 }<br/>
${ (1 > 2) ? 'A' : 'B' }<br/>
${ (1 > 2) || (1 < 2) }<br/>
${ (1 > 2) && (1 < 2) }<br/>
<br/>
<h3>JSP 표현식</h3>
<%= 1 + 2 %><br/>
<%= 1 - 2 %><br/>
<%= 1 * 2 %><br/>
<%= 1 / 2 %><br/>
<%= 1 > 2 %><br/>
<%= 1 < 2 %><br/>
<%= (1 > 2) ? 1 : 2 %><br/>
<%= (1 > 2) || (1 < 2) %><br/>
<%= (1 > 2) && (1 < 2) %><br/>
</body>
</html>