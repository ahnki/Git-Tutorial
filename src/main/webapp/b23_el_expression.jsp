<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="student" class="com.jsp.ex.B16_Student" scope="page"></jsp:useBean>
<jsp:setProperty property="name" name="student" value="홍길동"/>
<jsp:setProperty property="age" name="student" value="23"/>
<jsp:setProperty property="grade" name="student" value="1"/>
<jsp:setProperty property="studentNumber" name="student" value="100"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL expression</title>
</head>
<body>
이름 : <jsp:getProperty property="name" name="student"/><br/>
나이 : <jsp:getProperty property="age" name="student"/><br/>
등급 : <jsp:getProperty property="grade" name="student"/><br/>

<hr/>

이름 : ${student.name }<br/>
나이 : ${student.age }<br/>
등급 : ${student.grade }<br/>
</body>
</html>