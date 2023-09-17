package com.fssa.livre;
import com.fssa.livre.services.ReadbooksService;
import com.google.protobuf.ServiceException;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import day11.practice.TaskDAO2.DAOException;
@WebServlet("/DeleteReadBooks")
public class DeleteReadbooksServlet {
	 private static final long serialVersionUID = 1L;

	    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, DAOException, com.fssa.livre.services.exceptions.ServiceException, IOException {
	        PrintWriter out;
			try {
				out = resp.getWriter();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        int id = Integer.parseInt(req.getParameter("id"));
	        
	        ReadbooksService readbooksService = new ReadbooksService();

	        readbooksService.getReadbooksById(id);
		
			System.out.println("Readbooks record with ID " + id + " has been deleted.");
			resp.sendRedirect("GetAllReadbooksServlet");
	    }
	}

