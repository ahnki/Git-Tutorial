package com.jsp.ex;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class B19_ModifyResult
 */
@WebServlet("/ModifyResult")
public class B19_ModifyResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private Connection connection;
	private Statement statement;
	private HttpSession httpSession;
	
	private String name, id, pw, phone1, phone2, phone3, gender;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public B19_ModifyResult() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("B19_ModifyResult.java : doGet");
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("B19_ModifyResult.java : doPost");
		actionDo(request, response);
	}

	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("B19_ModifyResult.java : actionDo");
		
		request.setCharacterEncoding("UTF-8");
		httpSession = request.getSession();
		
		name = request.getParameter("name");
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		phone1 = request.getParameter("phone1");
		phone2 = request.getParameter("phone2");
		phone3 = request.getParameter("phone3");
		gender = request.getParameter("gender");
		
		String query = "update member_main set "
				+ "name ='" + name + "', pw ='" + pw + "', phone1 ='"
				+ phone1 + "', phone2 ='" + phone2 + "', phone3 ='" 
				+ phone3 + "', gender ='" + gender +"' where id = '"
				+ id + "'";
		System.out.println("query[" + query + "]");
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			statement = connection.createStatement();
			int i = statement.executeUpdate(query);

			if(i == 1) {
				System.out.println("update success!");
				httpSession.setAttribute("name", name);
				response.sendRedirect("b19_modify_result.jsp");
			} else {
				System.out.println("update fail!");
				response.sendRedirect("b19_modify.jsp");
			}
			
		} catch(Exception e) {
			System.out.println("fail to connect db");
			e.printStackTrace();
		} finally {
			try {
				if(statement != null) statement.close();
				if(connection != null) connection.close();
			} catch(Exception e1) {
				System.out.println("fail to disconnect db");
				e1.printStackTrace();
			}
		}
		
	}
}
