package com.jsp.ex;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JoinOk
 */
@WebServlet("/JoinOk")
public class B19_JoinOk extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Connection connection;
	private Statement statement;
	
	private String name, id, pw, phone1, phone2, phone3, gender;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public B19_JoinOk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("B19_joinOk.java : doGet");
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		System.out.println("B19_joinOk.java : doPost");
		actionDo(request, response);
	}
	
	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("B19_joinOk.java : actionDo");
		
		request.setCharacterEncoding("UTF-8");
		
		name = request.getParameter("name");
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		phone1 = request.getParameter("phone1");
		phone2 = request.getParameter("phone2");
		phone3 = request.getParameter("phone3");
		gender = request.getParameter("gender");
		
		String query = "insert into member_main values('"
				+ name + "', '" + id + "', '" + pw + "', '"
				+ phone1 + "', '" + phone2 + "', '" + phone3 + "', '"
				+ gender + "')";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			statement = connection.createStatement();
			int i = statement.executeUpdate(query);
			System.out.println("sql result value [" + i +"]");
			if(i == 1) {
				System.out.println("insert success");
				Cookie cookie = new Cookie("NAME", name);
				response.addCookie(cookie);
				
				response.sendRedirect("b19_join_result.jsp");
			} else {
				System.out.println("insert fail");
				response.sendRedirect("b19_join.html");
			}
		} catch (Exception e) {
			System.out.println("db processing error!!");
			e.printStackTrace();			
		} finally {
			try {
				if(statement != null) statement.close();
				if(connection != null) connection.close();
			} catch(Exception e1) {
				System.out.println("last processing error!");
				e1.printStackTrace();
			}
		}
		
	}

}
