package com.fssa.livre;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.livre.services.UserRequestABookService;

/**
 * Servlet implementation class StatusServlet
 */
@WebServlet("/AcceptStatusServlet")
public class AcceptStatusServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String requestId = request.getParameter("requestId");

        if (requestId != null && !requestId.isEmpty()) {
            UserRequestABookService userRequestABookService = new UserRequestABookService();
             
            boolean updated = userRequestABookService.updateAcceptStatus(requestId, "Accepted");

            if (updated) {
                response.sendRedirect(request.getContextPath() + "/GetRequestAdminServlet");
                return;
            }
        }
        
        response.sendRedirect(request.getContextPath() + "/error.jsp");
    }
}


