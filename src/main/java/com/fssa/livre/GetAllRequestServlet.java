package com.fssa.livre;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.livre.model.UserRequestABook;
import com.fssa.livre.services.UserRequestABookService;
import com.fssa.livre.services.exceptions.ServiceException;

/**
 * Servlet implementation class GetAllRequestServlet
 */
@WebServlet("/GetAllRequestServlet")
public class GetAllRequestServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Check if the user is logged in
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("loggedInUser") != null) {
            try {
                // Replace with your service for retrieving book requests
                List<UserRequestABook> bookRequests = UserRequestABookService.getBookRequestsForLoggedInUser();

                // Set the list of book requests as a request attribute
                request.setAttribute("bookRequests", bookRequests);

                // Forward the request to a JSP page for rendering
                RequestDispatcher dispatcher = request.getRequestDispatcher("/bookRequests.jsp");
                dispatcher.forward(request, response);
            } catch (ServiceException e) {
                // Handle the ServiceException (e.g., display an error message)
                e.printStackTrace();
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred.");
            }
        } else {
            // User is not logged in, you can redirect to a login page
            response.sendRedirect("login.jsp");
        }
    }
}


