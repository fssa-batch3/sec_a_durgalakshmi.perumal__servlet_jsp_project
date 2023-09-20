package com.fssa.livre;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/MyBooksServlet")
public class MyBooksServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
      
        String bookId = request.getParameter("readbook_id");

        HttpSession session = request.getSession(false);
        String userId = (String) session.getAttribute("user_id");

        List<String> myBooks = getMyBooksFromSessionOrStorage(session);

        myBooks.add(bookId);

        session.setAttribute("myBooks", myBooks);

        response.sendRedirect("<%=request.getContextPath()%>/DisplayMyBooksServlet");
    }

    private List<String> getMyBooksFromSessionOrStorage(HttpSession session) {
        // Implement your logic to get the user's collection from the session or storage
        // Return a List<String> containing book IDs.
        List<String> myBooks = (List<String>) session.getAttribute("myBooks");

        if (myBooks == null) {
            myBooks = new ArrayList<>();
        }

        return myBooks;
    }
}
