package com.fssa.livre;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.livre.dao.UserDAO;
import com.fssa.livre.dao.exception.DAOException;

/**
 * Servlet implementation class UpdateProfileServlet
 */
@WebServlet("/UpadteProfile")
public class UpdateProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 

	

	
		protected void doPost(HttpServletRequest request, HttpServletResponse response)
		        throws ServletException, IOException {
		    String updateProfile = request.getParameter("updateProfile");

		    if ("Save changes".equals(updateProfile)) {
		        String name = request.getParameter("fname");
		        int age = Integer.parseInt(request.getParameter("age"));
		        String phoneNumber = request.getParameter("ph_number");
		        String email = request.getParameter("email"); // You may fetch the email from the session

		        UserDAO userDAO = new UserDAO();
				try {
					userDAO.updateUser(email, name, age, phoneNumber);
				} catch (DAOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				// Redirect to a success page or back to the profile page
				response.sendRedirect("profile.jsp?message=Profile updated successfully");
		    } else {
		        // Handle other POST requests (e.g., log out)
		        // ...
		    
		}

	}

}
