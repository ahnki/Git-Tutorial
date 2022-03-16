<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="st" class="com.jsp.ex.B16_Student" scope="page"></jsp:useBean>
<!--  jsp:useBean id="student" class="com.jsp.ex.B16_Student" scope="page"></jsp:useBean -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>java bean example</title>
</head>
<body>
<%
	System.out.println(this.getClass());
%>
<jsp:setProperty property="name" name="st" value="홍길동"/>
<jsp:setProperty property="age" name="st" value="22"/>
<jsp:setProperty property="grade" name="st" value="1"/>
<jsp:setProperty property="studentNumber" name="st" value="40"/>

이름 : <jsp:getProperty property="name" name="st"/><br/>
나이 : <jsp:getProperty property="age" name="st"/><br/>
학년 : <jsp:getProperty property="grade" name="st"/><br/>
번호 : <jsp:getProperty property="studentNumber" name="st"/><br/>
</body>
</html>