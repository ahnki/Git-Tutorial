package com.jsp.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InitParam
 */
@WebServlet(urlPatterns={"/InitP"}, 
			initParams={
					@WebInitParam(name="name", value="홍길동"), 
					@WebInitParam(name="id", value="zxcvas"), 
					@WebInitParam(name="pw", value="09876"), 
					@WebInitParam(name="path", value="D:\\devData\\current-workspace")
					}
)
public class InitParam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InitParam() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		System.out.println("doGet " + " : " + getClass());

		String name = getInitParameter("name");
		String id = getInitParameter("id");
		String pw = getInitParameter("pw");
		String path = getInitParameter("path");
		String ora_id = getServletContext().getInitParameter("ora_id");
		String ora_pw = getServletContext().getInitParameter("ora_pw");
		String ora_sid = getServletContext().getInitParameter("ora_sid");

		//response.setContentType("text/html; charset=EUC-KR");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();

		writer.println("<html><head></head><body>");
		writer.println("이름 : " + name + "<br/>");
		writer.println("아이디 : " + id + "<br/>");
		writer.println("비밀번호 : " + pw + "<br/>");
		writer.println("패스 : " + path + "<br/><br/>");
		writer.println("Oracle account : " + ora_id + "<br/>");
		writer.println("Oracle password : " + ora_pw + "<br/>");
		writer.println("Oracle SID : " + ora_sid + "<br/>");
		writer.println("</body></hmtl>");

		writer.close();
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		System.out.println("doPost");
	}

}
