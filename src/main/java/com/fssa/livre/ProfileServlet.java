package com.fssa.livre;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.fssa.livre.dao.UserDAO;
import com.fssa.livre.dao.exception.DAOException;
import com.fssa.livre.model.User;
import com.fssa.livre.services.UserService;
import com.fssa.livre.services.exceptions.ServiceException;

/**
 * Servlet implementation class ProfileServlet
 */
@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        try {
	            HttpSession session = request.getSession(false);
	            String email = (String) session.getAttribute("loggedInEmail");

	            if (email != null) {
	                UserService userService = new UserService();
	                User user = userService.getUserByEmail(email);
	                System.out.println(user);
	                
	                if (user != null) {
	                    request.setAttribute("userDetails", user);
	                  
	                } else {
	                    response.sendRedirect("error.jsp");
	                    return;
	                }

	                RequestDispatcher dispatcher = request.getRequestDispatcher("./pages/profile.jsp");
	                dispatcher.forward(request, response);
	            } else {
	                response.sendRedirect("login.jsp");
	            }
	        } catch (ServiceException e) {
	            e.printStackTrace();
	        }
	    }


	}


