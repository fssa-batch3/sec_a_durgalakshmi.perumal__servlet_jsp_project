package com.fssa.livre;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.livre.dao.UserDAO;
//import com.fssa.livre.model.User;
import com.fssa.livre.services.UserService;
import com.fssa.livre.services.exceptions.ServiceException;
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	UserDAO userDao = new UserDAO();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
//		PrintWriter out = response.getWriter();
//		if(email == null || "".equals(email)) {
//			out.println("Invalid Email");
//			response.sendRedirect("login.jsp?errorMessage=Invalid Email");
//		}
//		
//		else if(password == null || "".equals(password) || password.length() < 6) {
//			out.println("Invalid Password");
//			response.sendRedirect("login.jsp?errorMessage=Invalid Password");	
//			
//		}
//		else {
//			out.println("Email and password is valid");
////			response.sendRedirect("home.html");

//			RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
//			dispatcher.forward(request, response);
//			
//		}

		
		PrintWriter out = response.getWriter();

		UserService loginService = new UserService();
		
		
			try {
				if(loginService.loginUser(email, password)) {
					out.println("Email and password is valid");
//					response.sendRedirect("home.jsp");
					HttpSession session = request.getSession();
					session.setAttribute("loggedInEmail", email);
					RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
					dispatcher.forward(request, response);
				}
				else {
					out.println("Email and password is Invalid");
				
}
			} catch (ServiceException e) {
				out.println(e.getMessage());
				e.printStackTrace();
				String[] errorMassage = e.getMessage().split(":");
				response.sendRedirect("login.jsp?errorMessage="+errorMassage[1]);
			}
	
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}
	
	
}