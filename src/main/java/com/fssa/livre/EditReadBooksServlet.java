package com.fssa.livre;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.fssa.livre.model.Readbooks;
import com.fssa.livre.dao.ReadbooksDAO;
import com.fssa.livre.services.ReadbooksService;
import com.fssa.livre.services.exceptions.ServiceException;

@WebServlet("/editreadbooks")
public class EditReadBooksServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idParam = req.getParameter("id");
        if (idParam != null && !idParam.isEmpty()) {
            int id = Integer.parseInt(idParam);

            ReadbooksService readbooksService = new ReadbooksService();
            try {
                Readbooks readbooks = readbooksService.getReadbooksById(id);
                if (readbooks != null) {
                    req.setAttribute("readbooks", readbooks);
                    req.getRequestDispatcher("editreadbooks.jsp").forward(req, resp);
                } else {
                    PrintWriter out = resp.getWriter();
                    out.println("Readbooks entry not found for ID: " + id);
                }
            } catch (ServiceException e) {
                e.printStackTrace();
                // Handle service exception
            }
        } else {
            PrintWriter out = resp.getWriter();
            out.println("Invalid or missing ID parameter");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Handle the form submission for updating an existing Readbooks entry here.
        // Retrieve form parameters, update the Readbooks object, and call the service for the update operation.
        PrintWriter out = resp.getWriter();

        String bookname = req.getParameter("bookname");
        String imagelink = req.getParameter("imagelink");
        String pdflink = req.getParameter("pdflink");
        String category = req.getParameter("category");

        Readbooks readbooks = new Readbooks(bookname, imagelink, pdflink, category);

        ReadbooksService readbooksService = new ReadbooksService();

        try {
            // Update the Readbooks entry here using readbooksService.updateReadBooks(readbooks)
            // Handle success or failure accordingly
        } catch (ServiceException e) {
            e.printStackTrace();
            out.println(e.getMessage());
        }
    }
}
