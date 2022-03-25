<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL object</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
아이디 : <%=id %><br/>
비밀번호 : <%=pw %><br>

<hr>

아이디 : ${param.id }<br>
비밀번호 : ${param.pw }<br>
<hr>
아이디 : ${param["id"] }<br>
비밀번호 : ${param["pw"] }<br>
<hr>
application scope : ${applicationScope.application_name }<br>
session scope : ${sessionScope.session_name }<br>
page scope : ${pageScope.page_name }<br> <!-- 한 page내에서 가능, 그래서 나오지 않음 -->
request scope : ${requestScope.request_name }<br> <!-- 한 request안에서 가능, 그래서 나오지 않음 -->
<hr>
context 초기화 파라미터<br>
${initParam.ora_sid }<br>
${initParam.ora_id }<br>
${initParam.ora_pw }<br>
</body>
</html>