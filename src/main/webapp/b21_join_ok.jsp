<%@page import="java.sql.Timestamp"%>
<%@page import="com.jsp.ex.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="dto" class="com.jsp.ex.B21_MemberDto"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>
<%
	dto.setrDate(new Timestamp(System.currentTimeMillis()));
	B21_MemberDao dao = B21_MemberDao.getInstance();
	if(dao.confirmId(dto.getId()) == B21_MemberDao.MEMBER_EXISTENT){
%>
<script type="text/javascript">
	alert("아이디가 이미 존재합니다.");
	history.back();
</script>
<%
	} else {
		int ri = dao.insertMember(dto);
		if(ri == B21_MemberDao.MEMBER_JOIN_SUCCESS){
			session.setAttribute("id", dto.getId());
%>
<script type="text/javascript">
	alert("회원가입을 축하합니다.");
	document.location.href="b21_login.jsp";
</script>
<%
		} else {	
%>
<script type="text/javascript">
	alert("회원가입에 실패했습니다.");
	document.location.href="b21_join.jsp";
</script>
<%
		}
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