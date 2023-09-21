package com.fssa.livre;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.livre.model.User;
import com.fssa.livre.services.UserService;
import com.fssa.livre.services.exceptions.ServiceException;

/**
 * Servlet implementation class ProfileServlet
 */
@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            Integer userId = (Integer) session.getAttribute("userId");
            UserService userService = new UserService();
            User user = userService.getUserById(userId);

      
            if (user != null) {
           

            	request.setAttribute("userDetails", user);
            
            } else {
            
                response.sendRedirect("error.jsp"); 
                return;
            }

            RequestDispatcher dispatcher = request.getRequestDispatcher("/profile.jsp");
            dispatcher.forward(request, response);

        } catch (ServiceException e) {
            e.printStackTrace();
        }
    }
}

