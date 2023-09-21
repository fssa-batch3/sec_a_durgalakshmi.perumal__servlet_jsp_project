package com.fssa.livre;

import java.io.IOException;
import java.io.PrintWriter;
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

@WebServlet("/addreadbooks")
public class AddReadbooksServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        PrintWriter out = resp.getWriter();

        String bookname = req.getParameter("bookname");
        String imagelink = req.getParameter("imagelink");
        String pdflink = req.getParameter("pdflink");
        String category = req.getParameter("category");
        
        Readbooks readbooks = new Readbooks(bookname, imagelink, pdflink, category);
        ReadbooksService readbooksService = new ReadbooksService();
        List<Readbooks> books = null;
        try {
            if (readbooksService.addReadBooks(readbooks)) {
                out.println("Readbook added successfully");
                System.out.println("Added");
                books = readbooksService.getAllReadbooks();
                req.setAttribute("readbooksList", books);
               resp.sendRedirect("GetAllReadbooksServlet");
  
            } else {
                out.println("Failed to add readbook");
                resp.sendRedirect("addreadbooks.jsp");
            }
        } catch (ServiceException e) {
            e.printStackTrace();
            out.println(e.getMessage());
        }
    }

}
