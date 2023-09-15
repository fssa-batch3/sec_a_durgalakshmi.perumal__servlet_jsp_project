package com.fssa.livre;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.livre.model.User;
import com.fssa.livre.services.UserService;
import com.fssa.livre.services.exceptions.ServiceException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		PrintWriter out = resp.getWriter();

		
	    String email = req.getParameter("email");
	    String password = req.getParameter("password");

	    User user = new User(email, password);
	    UserService userService = new UserService();
	    
	    try {
			if (userService.registerUser(user)) {
				out.println("user is valid");
				RequestDispatcher dispatcher = req.getRequestDispatcher("./pages/login.jsp");
				dispatcher.forward(req, resp);
			} else {
				out.println("user is Invalid");
				resp.sendRedirect("index.jsp");
			}
		} catch (ServiceException e) {
		e.printStackTrace();
		}

	}
}
