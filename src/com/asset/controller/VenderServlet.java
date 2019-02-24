package com.asset.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.asset.dao.impl.VenderDaoImpl;
import com.asset.model.VenderBean;

/**
 * Servlet implementation class VenderServlet
 */
@WebServlet("/VenderServlet")
public class VenderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VenderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//Copying all the input parameters in to local variables
    	String productID = request.getParameter("productID");	
    	String productName =request.getParameter("productName");	
    	String locationID=request.getParameter("locationID");	
    	String city=request.getParameter("city");
    	String date=request.getParameter("date");
    	
    
    	
    	
    	VenderBean venderBean = new VenderBean();
    	venderBean.setProductID(productID);
    	venderBean.setProductName(productName);
    	venderBean.setLocationID(locationID);
    	venderBean.setCity(city);
    	venderBean.setDate(date);
    	
    	
    	VenderDaoImpl VenderDao = new VenderDaoImpl();
    	//insert user data in to the database.
    	String locationAdd = VenderDao.addLocation(venderBean);
    	if(locationAdd.equals("SUCCESS"))
    	{
    	request.getRequestDispatcher("success.jsp").forward(request, response);
    	}
    	else 
    	{
    	request.getRequestDispatcher("vendor.jsp").forward(request, response);
    	}
    	}	
    }



