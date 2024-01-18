package com.fssa.livre;

import java.io.IOException;
import com.fssa.livre.services.ReadbooksService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteReadbooksServlet")
public class DeleteReadbooksServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int readbookid = Integer.parseInt(req.getParameter("id"));
			ReadbooksService readbooksService = new ReadbooksService();

			// Assuming you have a method like this in your service class to delete the book
			readbooksService.readbooksDelete(readbookid);

			// Optionally, you can set a success message or response status code
			// and then redirect to a success page or return a success JSON response.
			resp.setStatus(HttpServletResponse.SC_OK);
			resp.getWriter().write("Book deleted successfully");
			resp.sendRedirect("GetAllReadbooksServlet");

		} catch (NumberFormatException | com.fssa.livre.services.exceptions.ServiceException e) {
			e.printStackTrace();

			// In case of an error, set an appropriate response status code and message
			resp.setStatus(HttpServletResponse.SC_BAD_REQUEST);
			resp.getWriter().write("Error deleting the book: " + e.getMessage());
		}
	}
}
