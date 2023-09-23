package com.fssa.livre;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.livre.dao.UserDAO;
import com.fssa.livre.model.User;
import com.fssa.livre.services.UserService;
import com.fssa.livre.services.exceptions.ServiceException;

import day11.practice.TaskDAO2.DAOException;

@WebServlet("/EditProfileServlet")
public class EditProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			HttpSession session = request.getSession(false);
			if (session != null) {
				String email = (String) session.getAttribute("loggedInEmail");
				String name = request.getParameter("name");
				int age = Integer.parseInt(request.getParameter("age"));
				long phoneNumber = Long.parseLong(request.getParameter("phonenumber"));

				User user = (User) request.getSession().getAttribute("userDetails");
				System.out.println("Here is your User Data " + user);
				user.setname(name);
				user.setAge(age);
				user.setPhoneNumber(phoneNumber);

				UserService userService = new UserService();
				userService.updateUserProfile(user);

				response.sendRedirect(request.getContextPath() + "/ProfileServlet");
			}
		} catch (NumberFormatException | ServiceException e) {
			e.printStackTrace();
			response.sendRedirect(request.getContextPath() + "/error.jsp");
		}
	}
}
