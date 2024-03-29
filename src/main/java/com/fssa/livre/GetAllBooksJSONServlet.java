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

import com.fssa.livre.model.Readbooks;
import com.fssa.livre.services.ReadbooksService;
import com.fssa.livre.services.exceptions.ServiceException;

/**
 * Servlet implementation class GetAllBooksJSONServlet
 */
@WebServlet("/GetAllBooksJSONServlet")
public class GetAllBooksJSONServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetAllBooksJSONServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(false);
		List<Readbooks> readbooksList = null;
		ReadbooksService readbooksService = new ReadbooksService();
		try {
			readbooksList = readbooksService.getAllReadbooks();
		} catch (ServiceException e) {
			e.printStackTrace();
		}

		session.setAttribute("readbooksList", readbooksList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("display_all_readbooks.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
