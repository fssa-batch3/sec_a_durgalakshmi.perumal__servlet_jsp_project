package com.fssa.livre;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.livre.model.UserBooks;
import com.fssa.livre.services.UserBooksService;
import com.google.protobuf.ServiceException;

@WebServlet("/pdfViewer")
public class PDFViewerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("Servlet called");
		String pdfUrl = request.getParameter("pdflink");

		System.out.println(pdfUrl);
		request.setAttribute("pdflink", pdfUrl);

//		mybooks starts
	     String userIdParam = request.getParameter("userId");
	        String bookIdParam = request.getParameter("readBookId");
	        System.out.println(userIdParam);
	        System.out.println(bookIdParam);

	        if (userIdParam != null && bookIdParam != null) {
	            try {
	                // Convert user ID and book ID to integers
	                int userId = Integer.parseInt(userIdParam);
	                int bookId = Integer.parseInt(bookIdParam);

	                // Create a UserBooks object with the provided user and book IDs
	                UserBooks user_books = new UserBooks(userId, bookId, true);

	                // Add the user book to the database using UserBooksService
	                UserBooksService userBooksService = new UserBooksService();
	                boolean addResult = userBooksService.addUserBook(user_books);
	                

	                if (addResult) {
	                    System.out.println("Book added successfully.");
	                } else {
	                    System.out.println("Failed to add the book.");
	                }
	            } catch (NumberFormatException e) {
	              
	                System.out.println("Invalid user or book ID provided.");
	            } catch (ServiceException e) {
	                e.printStackTrace();
	                System.out.println("Failed to add the book with an exception.");
	            }
	        }
//		mybooks end
		RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/pdf_viewer.jsp");
		dispatcher.forward(request, response);
		
	}


}
