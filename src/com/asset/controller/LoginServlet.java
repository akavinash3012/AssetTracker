package com.asset.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.asset.dao.impl.LoginDaoImpl;
import com.asset.model.LoginBean;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Here retrieving the values entered by the user and keeping in
		// instance variables for further use.

		String userName = request.getParameter("UserID");
		String password = request.getParameter("password");
		String auth = request.getParameter("Auth");
		// creating object for LoginBean class
		LoginBean loginBean = new LoginBean();
		loginBean.setUserName(userName);
		loginBean.setPassword(password);
		loginBean.setauth(auth);
		// creating object for LoginDao
		LoginDaoImpl loginDao = new LoginDaoImpl();
		// Calling authenticateUser function
		String userValidate = loginDao.authenticateUser(loginBean);
		System.out.println("userValidate" + userValidate);
		try {
			if (userValidate.equals("Admin_Role")) {

				request.getRequestDispatcher("admin.jsp").forward(request, response);
			} else if (userValidate.equals("User_Role")){
				request.getRequestDispatcher("user.jsp").forward(request, response);
			}
				else if (userValidate.equals("Vendor_Role")) {
					request.getRequestDispatcher("vendor.jsp").forward(request, response);
			} else if (userValidate.equals("block")) {
				request.getRequestDispatcher("Block.jsp").forward(request, response);
			} else {
				request.getRequestDispatcher("Login.jsp").forward(request, response);
			}
		} catch (IOException e1) {
			e1.printStackTrace();
		}

	} // End of doPost()
}