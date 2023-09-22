package com.fssa.livre;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.livre.dao.exception.DAOException;
import com.fssa.livre.model.Readbooks;
import com.fssa.livre.model.UserBooks;
import com.fssa.livre.services.ReadbooksService;
import com.fssa.livre.services.UserBooksService;
import com.fssa.livre.services.UserService;
import com.fssa.livre.services.exceptions.ServiceException;

@WebServlet("/MyBooksServlet")
public class MyBooksServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        String email = (String) session.getAttribute("loggedInEmail");

        UserService userService = new UserService();
        UserBooksService userBooksService = new UserBooksService();
        ReadbooksService readbooksService = new ReadbooksService(); // Assuming you have a service for Readbooks

        try {
            int userId = userService.getUserIdByEmail(email);
            System.out.println("User ID: " + userId);

            // Retrieve the list of user_books entries by user ID
            List<UserBooks> userBooksList = userBooksService.getUserBooksByUserId(userId);

            // Create a list to store the corresponding Readbooks details
            List<Readbooks> userReadbooksList = new ArrayList<>();

            // Retrieve Readbooks details based on the readbookid from each user_books entry
            for (UserBooks userBook : userBooksList) {
                int readbookid = userBook.getReadBookId();
                Readbooks readbook = readbooksService.getReadbooksById(readbookid);

                // Add the Readbooks details to the list
                userReadbooksList.add(readbook);
            }

            // Set the userReadbooksList as a request attribute for JSP
            request.setAttribute("userReadbooksList", userReadbooksList);

            // Forward the user to a JSP page to display the list of books
            RequestDispatcher dispatcher = request.getRequestDispatcher("./pages/mybooks.jsp");
            dispatcher.forward(request, response);
        } catch (ServiceException e) {
            // Handle the ServiceException (e.g., display an error message)
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred.");
        } catch (DAOException e) {
            // Handle DAOException if necessary
            e.printStackTrace();
        } catch (com.google.protobuf.ServiceException e) {
            // Handle ServiceException if necessary
            e.printStackTrace();
        }
    }
}
