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

@WebServlet("/GetAllRequestServlet")
public class GetAllRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest httpRequest, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = httpRequest.getSession(false);
		if (session != null && session.getAttribute("loggedInEmail") != null) {
			String userEmail = (String) session.getAttribute("loggedInEmail");
			System.out.println(userEmail + " getrequestbookspagetest");
			try {
				UserRequestABookService userRequestABookService = new UserRequestABookService();
				List<UserRequestABook> userRequestABookList = userRequestABookService.getBookRequestsForLoggedInUser(userEmail);
			

				httpRequest.setAttribute("UserRequestABookList", userRequestABookList);

				RequestDispatcher dispatcher = httpRequest.getRequestDispatcher("./pages/BookrequestList.jsp");
				dispatcher.forward(httpRequest, response);
			} catch (ServiceException e) {
				e.printStackTrace();
				response.sendRedirect("/login.jsp");
			}
		}
	}
}
