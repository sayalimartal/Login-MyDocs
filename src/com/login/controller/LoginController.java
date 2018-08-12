package com.login.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author Sayali Martal
 *
 */
/**
 * Servlet implementation class LoginController to control login and logout
 */
@WebServlet("*.app")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String action = request.getServletPath();  //Store action to be performed
		HttpSession session = request.getSession();
		
		String userName = request.getParameter("userName");  //Store user name
		String password= request.getParameter("password");   //Store password
		
		switch(action)
		{
		case "/login.app":
			
			if(userName.equals("admin") && password.equals("admin")) { //Check for valid user
				session.setAttribute("username", userName); //Store user name in session
				response.sendRedirect("success.jsp");   //Redirect to success page
			}
			else
				response.sendRedirect("error.jsp");    //Redirect to error page
			break;
			
		case "/logout.app":
			
			session.invalidate();  //Close session
			response.sendRedirect("login.jsp");  //Redirect to login page
			break;
			
		default: break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}