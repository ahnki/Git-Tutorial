package com.jsp.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LifeCycleEx
 */
@WebServlet("/LCEx")
public class LifeCycleEx extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LifeCycleEx() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	//public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	//	System.out.println("init");
	//}

	/**
	 * @see Servlet#destroy()
	 */
	//public void destroy() {
		// TODO Auto-generated method stub
	//	System.out.println("destroy");
	//}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		System.out.println("doGet " + " : " + getClass());
		
		String ora_id = getServletContext().getInitParameter("ora_id");
		String ora_pw = getServletContext().getInitParameter("ora_pw");
		String ora_sid = getServletContext().getInitParameter("ora_sid");

		//response.setContentType("text/html; charset=EUC-KR");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();

		writer.println("<html><head></head><body>");
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
		System.out.println("doPost");
		doGet(request, response);
	}
	
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		//super.init();
		System.out.println("init");
		
		String ora_id = getServletContext().getInitParameter("ora_id");
		String ora_pw = getServletContext().getInitParameter("ora_pw");
		String ora_sid = getServletContext().getInitParameter("ora_sid");
		
		System.out.println("Oracle account : " + ora_id);
		System.out.println("Oracle pw : " + ora_pw);
		System.out.println("Oracle sid : " + ora_sid);
	}
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		//super.destroy();
		System.out.println("destroy");
	}
	
	@PostConstruct
	private void initPostConstruct() {
		// TODO Auto-generated method stub
		System.out.println("initPostConstruct");
		
		/*
		 * String ora_id = getServletContext().getInitParameter("ora_id"); String ora_pw
		 * = getServletContext().getInitParameter("ora_pw"); String ora_sid =
		 * getServletContext().getInitParameter("ora_sid");
		 * 
		 * System.out.println("Ora id : " + ora_id); System.out.println("Ora pw : " +
		 * ora_pw); System.out.println("Ora sid : " + ora_sid);
		 */
	}
	
	@PreDestroy
	private void destroyPreDestroy() {
		// TODO Auto-generated method stub
		System.out.println("destroyPreDestroy");
	}

}
