<%@page import="com.jsp.ex.B20_MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.jsp.ex.B20_MemberMainDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>status of membership information</title>
</head>
<body>
<%
	System.out.println("b20_membermain_select.jsp");
	B20_MemberMainDAO b20_MemberMainDAO = new B20_MemberMainDAO();
	ArrayList<B20_MemberDTO> dtos = b20_MemberMainDAO.memberSelect();
	
	for(int i = 0; i < dtos.size(); i++){
		B20_MemberDTO dto = dtos.get(i);
		String name = dto.getName();
		String id = dto.getId();
		String pw = dto.getPw();
		String phone = dto.getPhone1() + " - " + dto.getPhone2() + " - " + dto.getPhone3();
		String gender = dto.getGender();
		
		out.println("이름 : " + name + ", 아이디 : " + id + ", 비밀번호 : " + pw + ", 연락처 : " + phone + ", 성별 : " + gender + "<br/>");
	}	
%>
</body>
</html>