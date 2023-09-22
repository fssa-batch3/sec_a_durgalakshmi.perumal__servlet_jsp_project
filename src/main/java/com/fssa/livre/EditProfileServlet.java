package com.fssa.livre;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.livre.dao.UserDAO;

import day11.practice.TaskDAO2.DAOException;


@WebServlet("/UpdateProfile")
public class EditProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null) {
            String email = (String) session.getAttribute("loggedInEmail");
            String name = request.getParameter("fname");
            int age = Integer.parseInt(request.getParameter("age"));
            String phoneNumber = request.getParameter("ph_number");

            UserDAO userDAO = new UserDAO();
            
            try {
                userDAO.updateUser(email, name, age, phoneNumber); // Update user details
                response.sendRedirect("profile.jsp?message=Profile updated successfully"); // Redirect with success message
            } catch (com.fssa.livre.dao.exception.DAOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        } else {
            response.sendRedirect("login.jsp"); // Redirect to login if session is not available
        }
    }

    // ... Other methods (e.g., doGet for displaying the updateProfile.jsp) go here
}
