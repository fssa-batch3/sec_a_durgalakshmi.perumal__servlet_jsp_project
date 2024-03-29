package com.fssa.livre;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.livre.model.Readbooks;
import com.fssa.livre.services.ReadbooksService;
import com.fssa.livre.services.exceptions.ServiceException;

@WebServlet("/GetAllReadbooksServlet")
public class GetAllReadbooksServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Handles GET requests to retrieve and display all readbooks.
	 *
	 * @param request  The HTTP request object.
	 * @param response The HTTP response object.
	 * @throws ServletException If a servlet related error occurs.
	 * @throws IOException      If an I/O error occurs.
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ReadbooksService readbooksService = new ReadbooksService();
		List<Readbooks> readbooksList = null;
		try {
			readbooksList = readbooksService.getAllReadbooks();
		} catch (ServiceException e) {
			e.printStackTrace();
		}

		request.setAttribute("readbooksList", readbooksList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("./pages/readbooks.jsp");
		dispatcher.forward(request, response);
	}
}
