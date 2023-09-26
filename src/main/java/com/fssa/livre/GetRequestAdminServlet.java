package com.fssa.livre;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.livre.model.UserRequestABook;
import com.fssa.livre.services.UserRequestABookService;
import com.fssa.livre.services.exceptions.ServiceException;

@WebServlet("/GetRequestAdminServlet")
public class GetRequestAdminServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Create an instance of UserRequestABookService
        UserRequestABookService userRequestABookService = new UserRequestABookService();

        // Retrieve all book requests using the service
        List<UserRequestABook> bookRequests = userRequestABookService.getAllBookRequests();

        // Print the id values for debugging
//        for (UserRequestABook bookRequest : bookRequests) {
//            System.out.println("ID: " + bookRequest.getRequestId()); // Assuming getRequestId() returns the id
//        }

        // Set the list of book requests as a request attribute
        request.setAttribute("bookRequests", bookRequests);

        // Forward the request to a JSP page for rendering
        RequestDispatcher dispatcher = request.getRequestDispatcher("./pages/bookrequest.jsp");
        dispatcher.forward(request, response);
    }
}

