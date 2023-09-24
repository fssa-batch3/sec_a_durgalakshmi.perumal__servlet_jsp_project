package com.fssa.livre;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.livre.dao.exception.DAOException;
import com.fssa.livre.model.User;
import com.fssa.livre.services.UserRequestABookService; // You should import the appropriate service class here

@WebServlet("/RequestABookServlet")
public class RequestABookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the logged-in user's email from the session
        HttpSession session = request.getSession(false);
        String userEmail = null;
        if (session != null) {
            userEmail = (String) session.getAttribute("loggedInEmail");
        }

        String bookName = request.getParameter("bookname");
        String imageUrl = request.getParameter("imagelink");
        String description = request.getParameter("description");

        boolean requestSuccess = UserRequestABookService.requestBook(userEmail, bookName, imageUrl, description);

		if (requestSuccess) {
		    // The book request was successful, set an attribute to indicate success
		    request.setAttribute("requestStatus", "Pending");
		    // Redirect to a success page or the home page
		    response.sendRedirect("/index.jsp");
		} else {
		    // Handle the case where the request insertion failed
		    // You can set an attribute for error handling or redirect the user to an error page.
		    request.setAttribute("requestStatus", "Failed");
		    request.getRequestDispatcher("requestABook.jsp").forward(request, response);
		}
    }
}


