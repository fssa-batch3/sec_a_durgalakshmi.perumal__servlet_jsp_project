package com.fssa.livre;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.livre.dao.UserDAO;
import com.fssa.livre.dao.exception.DAOException;
import com.fssa.livre.model.User;

/**
 * Servlet implementation class UpdateProfileServlet
 */
@WebServlet("/UpdateProfile")
public class UpdateProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if (session != null) {
			String email = (String) session.getAttribute("loggedInEmail");

			UserDAO userDAO = new UserDAO();

			try {
				User user = userDAO.getUserByEmail(email);
				request.setAttribute("userDetails", user);

				RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/updateProfile.jsp");
				dispatcher.forward(request, response);
			} catch (DAOException e) {
				e.printStackTrace();
			}
		} else {
			response.sendRedirect("login.jsp");
		}
	}

}
