<%@page import="com.jsp.ex.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="dto" class="com.jsp.ex.B21_MemberDto"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>
<%
	dto.setId(session.getAttribute("id"));
	B21_MemberDao dao = B21_MemberDao.getInstance();
	if(dao.confirmId(dto.getId()) == B21_MemberDao.MEMBER_NONEXISTENT){
%>
<script type="text/javascript">
	alert("회원 아이디가 존재하지 않습니다.");
	document.location.href="b21_login.jsp";
</script>
<%
	}
	
	int ri = dao.updateMember(dto);
	if(ri == B21_MemberDao.MEMBER_MODIFY_SUCCESS){
%>
<script type="text/javascript">
	alert("회원정보가 수정되었습니다.");
	document.location.href="b21_main.jsp";
</script>
<%	
	} else {
%>
<script type="text/javascript">
	alert("회원정보 수정에 실해했습니다.");
	document.location.href="b21_modify.jsp";
</script>
<%		
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