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
import com.fssa.livre.model.User;
import com.fssa.livre.services.UserService;
import com.fssa.livre.services.exceptions.ServiceException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    	UserDAO userDao = new UserDAO();
    
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        PrintWriter out = response.getWriter();
        UserService loginService = new UserService();
        HttpSession session = request.getSession();

        try {
            if ("admindurga@gmail.com".equals(email) && "Durgapassword@321".equals(password)) {
                session.setAttribute("admin", true);

                RequestDispatcher userDispatcher = request.getRequestDispatcher("index.jsp");
                userDispatcher.forward(request, response);
                return;
            }
             if (loginService.loginUser(email, password)) {
                out.println("Email and password are valid");
            
                session.setAttribute("loggedInEmail", email);

                System.out.println("Email: " + session.getAttribute("loggedInEmail"));

                RequestDispatcher userDispatcher = request.getRequestDispatcher("index.jsp");
                userDispatcher.forward(request, response);
            } else {
                out.println("Email and password are Invalid");
            }
        } catch (ServiceException e) {
            out.println(e.getMessage());
            e.printStackTrace();
            String[] errorMassage = e.getMessage().split(":");
            response.sendRedirect("index.jsp?errorMessage=" + errorMassage[1]);
        }
    }

}
