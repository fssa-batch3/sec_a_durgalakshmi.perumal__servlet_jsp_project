package com.fssa.livre;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.livre.model.User;
import com.fssa.livre.services.UserService;
import com.fssa.livre.services.exceptions.ServiceException;

/**
 * Servlet implementation class GetAllUserServlet
 */
@WebServlet("/GetAllUserServlet")
public class GetAllUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<User> users = null;
		UserService userService = new UserService();
		try {
			users = userService.getAllUserList();
		} catch (ServiceException e) {
			e.printStackTrace();
		}

//		users.add(new User("dddgalaks@gmail.com", "D@urg467"));
//		users.add(new User("anjali@gmail.com", "Durgadhiva3"));
//		users.add(new User("perumal@gmail.com", "Anjalidevi7"));
		// TODO set the list of users in the request scope and create a
		// display_all_users.jsp file
		// to print the details in HTML Tabular format. DO NOT print the passwords

		request.setAttribute("users", users);
		request.getRequestDispatcher("display_all_users.jsp").forward(request, response);
	}

}