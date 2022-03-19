package com.jsp.ex;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class B19_LoginOk
 */
@WebServlet("/LoginOk")
public class B19_LoginOk extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Connection connection;
	private Statement statement;
	private ResultSet resultSet;
	
	private String getid, getpw, name, id, pw;


    /**
     * @see HttpServlet#HttpServlet()
     */
    public B19_LoginOk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("B19_LoginOk.java : doGet");
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("B19_LoginOk.java : doPost");
		actionDo(request, response);
	}

	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("B19_LoginOk.java : actionDo");
		
		request.setCharacterEncoding("UTF-8");
		
		getid = request.getParameter("id");
		getpw = request.getParameter("pw");
		
		String query = "select * from member_main where id = '" + getid + "'";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			statement = connection.createStatement();
			resultSet = statement.executeQuery(query);

			while(resultSet.next()) {
				name = resultSet.getString("name");
				id = resultSet.getString("id");
				pw = resultSet.getString("pw");
//				phone1 = resultSet.getString("phone1");
//				phone2 = resultSet.getString("phone2");
//				phone3 = resultSet.getString("phone3");
//				gender = resultSet.getString("gender");
			}

			System.out.println("row count [" + resultSet.getRow() + "]");
			if(resultSet.getRow() <= 0) {
				System.out.println("query[" + query + "]");
				System.out.println("data of " + getid + " not found!");
				response.sendRedirect("b19_login.html");
				return;
			}
			
			if(getpw.length() > 0 && !pw.equals(getpw)) {
				System.out.println("getpw[" + getpw +"]");
				System.out.println("password not equal!");
				response.sendRedirect("b19_login.html");
				return;
			}
			
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("name", name);
			httpSession.setAttribute("id", id);
			httpSession.setAttribute("pw", pw);
			
			response.sendRedirect("b19_login_result.jsp");
			
		} catch(Exception e) {
			System.out.println("fail to connect db");
			e.printStackTrace();
		} finally {
			try {
				if(statement != null) statement.close();
				if(connection != null) connection.close();
				if(resultSet != null) resultSet.close();
			} catch(Exception e1) {
				System.out.println("fail to disconnect db");
				e1.printStackTrace();
			}
		}
		
	}
}
