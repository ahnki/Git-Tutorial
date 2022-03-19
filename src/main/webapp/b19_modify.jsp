<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	Connection connection;
	Statement statement;
	ResultSet rs;
	
	String name, id, pw, phone1, phone2, phone3, gender; 
%>
<%
	id = (String)session.getAttribute("id");

	String query = "select * from member_main where id = '" + id + "'";
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
	statement = connection.createStatement();
	rs = statement.executeQuery(query);
	
	while(rs.next()) {
		name = rs.getString("name");
		pw = rs.getString("pw");
		phone1 = rs.getString("phone1");
		phone2 = rs.getString("phone2");
		phone3 = rs.getString("phone3");
		gender = rs.getString("gender");
	}
%>
<form action="ModifyResult" method="post">
	이름 : <input type="text" name="name" size="10" value="<%=name %>"><br/>
	아이디 : <%=id %>
		<input type="hidden" name="id" size="10" value="<%=id%>"><br/>
	비밀번호 : <input type="password" name="pw" size="10" value="<%=pw%>"><br/>
	전화번호 : <select name="phone1">
	<%
		if(phone1.equals("010")) {
	%>
		<option value="010" selected="selected">010</option>
	<%
		} else {
	%>
		<option value="010">010</option>
	<%
		}
		if(phone1.equals("016")) {
	%>
		<option value="016" selected="selected">016</option>
	<%
		} else {
	%>
		<option value="016">016</option>
	<%
		}
		if(phone1.equals("017")) {
	%>
		<option value="017" selected="selected">017</option>
	<%
		} else {
	%>
		<option value="017">017</option>
	<%
		}
		if(phone1.equals("018")) {
	%>
		<option value="018" selected="selected">018</option>
	<%
		} else {
	%>
		<option value="018">018</option>
	<%
		}
		if(phone1.equals("019")) {
	%>
		<option value="019" selected="selected">019</option>
	<%
		} else {
	%>
		<option value="019">019</option>
	<%
		}
		if(phone1.equals("011")) {
	%>
		<option value="011" selected="selected">011</option>
		<%
		} else {
	%>
		<option value="011">011</option>
	<%
		}
	%>
	</select> - 
	<input type="text" name="phone2" size="5" value="<%=phone2%>"> - <input type="text" name="phone3" size="5" value="<%=phone3 %>"><br/>
	성별 :
	<%
		if(gender.equals("man")) {
	%> 
		<input type="radio" name="gender" value="man" checked="checked">남&nbsp;<input type="radio" name="gender" value="woman">여<br/>
	<%
		} else {
	%>
		<input type="radio" name="gender" value="man">남&nbsp;<input type="radio" name="gender" value="woman" checked="checked">여<br/>
	<%
		}
	%>
	<input type="submit" value="회원정보수정">&nbsp;<input type="reset" value="취소">
</form>
</body>
</html>