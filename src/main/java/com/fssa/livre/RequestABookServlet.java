package com.fssa.livre;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.fssa.livre.model.UserRequestABook;
import com.fssa.livre.services.UserRequestABookService;
import com.fssa.livre.services.exceptions.ServiceException;

@WebServlet("/RequestABookServlet")
public class RequestABookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);
		String userEmail = null;
		if (session != null) {
			userEmail = (String) session.getAttribute("loggedInEmail");
		}

		try {
			String bookName = request.getParameter("bookname");
			String imageUrl = request.getParameter("imagelink");
			String description = request.getParameter("description");

			UserRequestABook userRequestABook = new UserRequestABook();
			userRequestABook.setemail(userEmail);

			userRequestABook.setBookName(bookName);
			userRequestABook.setImageUrl(imageUrl);
			userRequestABook.setDescription(description);
			userRequestABook.setStatus("Pending");

			UserRequestABookService userRequestABookService = new UserRequestABookService();
			boolean requestSuccess = userRequestABookService.requestBook(userEmail, bookName, imageUrl, description);
			List<UserRequestABook> bookRequests = userRequestABookService.getAllBookRequests();

			// Set the list as an attribute in the request
			request.setAttribute("bookRequests", bookRequests);
			response.sendRedirect("index.jsp");

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("not done");
			response.sendRedirect(request.getContextPath() + "/error.jsp");

		}

	}
}
