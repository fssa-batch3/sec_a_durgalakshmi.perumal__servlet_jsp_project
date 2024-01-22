
package com.fssa.livre;

import java.io.IOException;
import java.util.List;

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

	protected  void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String requestId = request.getParameter("requestId");
		  String bookName = request.getParameter("bookName");
		  System.out.println(bookName);
		  if (bookName != null) {
			  
			    String processedBookName = bookName.toLowerCase().replaceAll("\\s", "");
			    System.out.println(processedBookName);
			    String folderPath = "/Books";

			    DropboxConnect dc = new DropboxConnect();
			    List<String> pdfFileNames = dc.retrievePdfNames(folderPath);

			    System.out.println(pdfFileNames.toString());
			    
			    
			    if (pdfFileNames.contains(processedBookName + ".pdf")) {
			        if (requestId != null && !requestId.isEmpty()) {
			            UserRequestABookService userRequestABookService = new UserRequestABookService();

			            boolean updated = userRequestABookService.updateAcceptStatus(requestId, "Accepted");

			            if (updated) {
			                response.sendRedirect(request.getContextPath() + "/GetRequestAdminServlet");
			                return;
			            }
			        }
			    }
			}
		  else {
			  System.out.println("not working");
		  }

	}
}
