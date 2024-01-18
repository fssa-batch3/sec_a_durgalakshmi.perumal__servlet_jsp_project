package com.fssa.livre;

import java.io.IOException;
import java.io.PrintWriter;
import com.fssa.livre.dao.ReadbooksDAO;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.livre.model.Readbooks;
import com.fssa.livre.services.ReadbooksService;
import com.fssa.livre.services.exceptions.ServiceException;

@WebServlet("/EditReadBooks")
public class EditReadBooksServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		String idParam = req.getParameter("id");
		int id = 0;
		if (idParam != null) {
			id = Integer.parseInt(idParam);
			out.println("Received id: " + id);
		} else {
			out.println("No id parameter found in the URL.");
		}

		ReadbooksService readbooksService = new ReadbooksService();
		Readbooks readbooks = new Readbooks();
		try {
			readbooks = readbooksService.getReadbooksById(id);
		} catch (ServiceException e) {
			out.println(e.getMessage());
			e.printStackTrace();
		}

		req.setAttribute("readbooks", readbooks);
		RequestDispatcher dispatcher = req.getRequestDispatcher("readbooksedit.jsp");
		dispatcher.forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		int id = Integer.parseInt(req.getParameter("readbookid"));
		String bookname = req.getParameter("bookname");
		String imagelink = req.getParameter("imagelink");
		String pdflink = req.getParameter("pdflink");
		String category = req.getParameter("category");

		ReadbooksService readbooksService = new ReadbooksService();
		Readbooks existingReadbooks = new Readbooks(id, bookname, imagelink, pdflink, category);

		try {
			readbooksService.readbooksUpdate(existingReadbooks);
			resp.sendRedirect("GetAllReadbooksServlet");
		} catch (ServiceException e) {
			e.printStackTrace();
			out.println(e.getMessage());
		}
	}
}
