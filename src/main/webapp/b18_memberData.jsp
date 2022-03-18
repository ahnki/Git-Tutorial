<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	Connection connection;
	Statement statement;
	ResultSet resultSet;
	
	//String driver = "oracle.jdbc.OracleDriver"; -- 다 잘된다.
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	//String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE"; -- 다 잘 된다.
	String uid = "scott";
	String upw = "tiger";
	String query = "select * from member";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>database example</title>
</head>
<body>
<%
	try{
		System.out.println("Oracle 드라이버 로딩 시작");
		Class.forName(driver);
		System.out.println("Oracle 드라이버 로딩 성공");
		connection = DriverManager.getConnection(url, uid, upw);
		statement = connection.createStatement();
		resultSet = statement.executeQuery(query);
		
		while(resultSet.next()){
			String id = resultSet.getString("id");
			String pw = resultSet.getString("pw");
			String name = resultSet.getString("name");
			String phone = resultSet.getString("phone");
			
			out.println("아이디 : " + id + ", 비밀번호 : " + pw + ", 이름 : " 
			            + name + ", 전화번호 : " + phone + "<br/>");
		}
	} catch (Exception e){
		e.printStackTrace();
	} finally {
		try{
			if(resultSet != null) resultSet.close();
			if(statement != null) statement.close();
			if(connection != null) connection.close();
		} catch (Exception e2){
			e2.printStackTrace();
		}
		
	}
%>
</body>
</html>