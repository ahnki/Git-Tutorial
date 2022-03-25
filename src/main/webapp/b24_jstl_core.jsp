<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% System.out.println(this.getClass()); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Example of JSTL</title>
</head>
<body>
<c:set var="varName" value="varValue"/>
varName : <c:out value="${varName }"/><br>
<c:remove var="varName"/>
varName : <c:out value="${varName }"/><br>
<hr>
<c:catch var="error_name">
<%=2/0 %>
</c:catch><br>
<c:out value="${error_name}"/><br>
<hr>
<c:if test="${1 + 2 == 3}"> 1 + 2 = 3</c:if><br>
<c:if test="${1 + 2 != 3}"> 1 + 2 != 3</c:if><br>
<hr>
<c:forEach var="i" begin="0" end="30" step="3">
<c:out value="${i}"/>
</c:forEach>
</body>
</html>