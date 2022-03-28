package com.jsp.ex;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class B27_FontController
 */
@WebServlet("*.do")
public class B27_FontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public B27_FontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("B27_FrontController : doGet");
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		System.out.println("B27_FrontController : doPost");
		actionDo(request, response);
	}

	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("B27_FrontController : actionDo");
		
		request.setCharacterEncoding("EUC-8");
		
		String viewPage = null;
		//B27_Command command = null;
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String com = uri.substring(conPath.length());
		
		System.out.println("uri : " + uri);
		System.out.println("context path : " + conPath);
		System.out.println("command : " + com);
		
		if(com.equals("/b27_write_view.do")) {
			System.out.println("/b27_write_view.do");
			viewPage = "b27_write_view.jsp";
		} else if (com.equals("/update.do")) {
			System.out.println("update");
			System.out.println("=======================");
		} else if (com.equals("/select.do")) {
			System.out.println("select");
			System.out.println("=======================");
		} else if (com.equals("/delete.do")){
			System.out.println("delete");
			System.out.println("=======================");
		}
	}
}
