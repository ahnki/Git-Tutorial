<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update to member information</title>
</head>
<body>
<%=(String)session.getAttribute("name") %>님 회원정보가 잘 수정되었습니다.<br/>
<a href="b19_logout.jsp">로그아웃</a>&nbsp;&nbsp;<a href="b19_modify.jsp">회원정보 수정</a>
</body>
</html>