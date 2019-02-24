package com.asset.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.asset.dao.impl.AdduserDaoImpl;
import com.asset.model.AddUserBean;

/**
 * Servlet implementation class AddUserServlet
 */
@WebServlet("/AddUserServlet")
public class AddUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//Copying all the input parameters in to local variables
    	String userName = request.getParameter("UserName");	
    	String password =request.getParameter("password");	
    	String email=request.getParameter("EmailAddress");	
    	String organization=request.getParameter("Organization");
    	String contactNumber=request.getParameter("ContactNumber");	
    
    	
    	
    	AddUserBean adduserBean = new AddUserBean();
    	adduserBean.setUserName(userName);
    	adduserBean.setPassword(password);
    	adduserBean.setEmail(email);
    	adduserBean.setOrganization(organization);
    	adduserBean.setContactNumber(contactNumber);
    	
    	
    	AdduserDaoImpl adduserDao = new AdduserDaoImpl();
    	//insert user data in to the database.
    	String userAdd = adduserDao.addUser(adduserBean);
    	if(userAdd.equals("SUCCESS"))
    	{
    	request.getRequestDispatcher("/success.jsp").forward(request, response);
    	}
    	else 
    	{
    	request.getRequestDispatcher("/admin.jsp").forward(request, response);
    	}
    	}	
    }


