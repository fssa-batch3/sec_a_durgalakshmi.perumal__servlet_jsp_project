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

@WebServlet("/searchreadbooks")
public class SearchReadbooksByCategoryServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String selectedCategory = request.getParameter("category");

        ReadbooksService readbooksService = new ReadbooksService();
        List<Readbooks> categoryResults = null;

        try {
           
            categoryResults = readbooksService.searchReadbooksByCategory(selectedCategory);

            
            request.setAttribute("readbooksList", categoryResults);

      
            RequestDispatcher dispatcher = request.getRequestDispatcher("display_all_readbooks.jsp");
            dispatcher.forward(request, response);
        } catch (ServiceException e) {
            e.printStackTrace();
            
        }
    }
}

