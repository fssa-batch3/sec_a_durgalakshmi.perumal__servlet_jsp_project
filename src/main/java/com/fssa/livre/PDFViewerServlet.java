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

import com.fssa.livre.dao.exception.DAOException;
import com.fssa.livre.model.User;
import com.fssa.livre.model.UserBooks;
import com.fssa.livre.services.UserBooksService;
import com.fssa.livre.services.UserService;
import com.google.protobuf.ServiceException;

@WebServlet("/pdfViewer")
public class PDFViewerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String pdfUrl = request.getParameter("pdflink");
		int bookId = Integer.parseInt(request.getParameter("bookId"));

		HttpSession session = request.getSession(false);
		String email = (String) session.getAttribute("loggedInEmail");
		PrintWriter out = response.getWriter();

		UserService userService = new UserService();
		UserBooksService userBooksService = new UserBooksService(); 

		try {
		    int userId = userService.getUserIdByEmail(email);

		    if (!userBooksService.doesUserHaveBook(userId, bookId)) {
		        UserBooks userBook = new UserBooks(userId, bookId);
		        userBooksService.addUserBook(userBook);

		   

		        System.out.println(pdfUrl);
		        request.setAttribute("pdflink", pdfUrl);

		        RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/pdf_viewer.jsp");
		        dispatcher.forward(request, response);
		    
		     } else {
		    	  request.setAttribute("pdflink", pdfUrl);
		    	 RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/pdf_viewer.jsp");
			        dispatcher.forward(request, response);
		    }
		} catch (ServiceException | com.fssa.livre.services.exceptions.ServiceException | DAOException e) {
		    e.printStackTrace();
		    out.println(e.getMessage());
		}
	}
}
