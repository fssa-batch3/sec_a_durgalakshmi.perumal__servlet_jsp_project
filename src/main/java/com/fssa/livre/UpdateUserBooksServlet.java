package com.fssa.livre;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.fssa.livre.services.UserService;
import com.fssa.livre.dao.exception.DAOException;
import com.fssa.livre.model.User;
import com.fssa.livre.services.UserBooksService;
import com.fssa.livre.services.exceptions.ServiceException;

@WebServlet("/UpdateUserBooksServlet")
public class UpdateUserBooksServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        String email = (String) session.getAttribute("loggedInEmail");

        UserBooksService userBooksService = new UserBooksService(); // Assuming you have a service for UserBooks

        try {
            // Get the parameters from the request (bookId, duration, and status)
            int bookId = Integer.parseInt(request.getParameter("bookId"));
            long duration = Long.parseLong(request.getParameter("duration"));
            String status = request.getParameter("status");

            // Get the user's ID by email
            UserService userService = new UserService(); // Assuming you have a service for User
            int userId = userService.getUserIdByEmail(email);

            // Update the user_books table with the new duration and status
            userBooksService.updateUserBook(userId, bookId, duration, status);

            // Send a response (e.g., success or error message)
            response.getWriter().write("Duration updated successfully.");
        } catch (ServiceException | DAOException e) {
            // Handle the ServiceException (e.g., display an error message)
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred.");
        } catch (com.google.protobuf.ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
}
