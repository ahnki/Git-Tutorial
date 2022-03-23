<%@page import="com.jsp.ex.B21_MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	B21_MemberDao dao = B21_MemberDao.getInstance();
	int checkRV = dao.userCheck(id, pw);
	if(checkRV == B21_MemberDao.MEMBER_LOGIN_IS_NOT){
%>
<script type="text/javascript">
	alert("아이디가 존재하지 않습니다.");
	history.go(-1);
</script>
<%
	} else if(checkRV == B21_MemberDao.MEMBER_LOGIN_PW_NO_GOOD){
%>
<script type="text/javascript">
	alert("비밀번호가 틀립니다.");
	history.go(-1);
</script>
<%
	} else if(checkRV == B21_MemberDao.MEMBER_LOGIN_SUCCESS){
		B21_MemberDto dto = dao.getMember(id);
		
		if(dto == null){
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>membership certification program</title>
</head>
<body>

</body>
</html>