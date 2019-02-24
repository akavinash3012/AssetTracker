package com.asset.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.asset.dao.impl.AddassetDaoImpl;
import com.asset.model.AddAssetBean;

/**
 * Servlet implementation class AddUserServlet
 */
@WebServlet("/AddAssetServlet")
public class AddAssetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAssetServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//Copying all the input parameters in to local variables
    	String assets = request.getParameter("assets");	
    	String productName =request.getParameter("productName");	
    	String productID=request.getParameter("productID");	
    	String organization=request.getParameter("organization");
    	String price=request.getParameter("price");	
    
    	
    	
    	AddAssetBean addassetBean = new AddAssetBean();
    	addassetBean.setAssets(assets);
    	addassetBean.setProductName(productName);
    	addassetBean.setProductID(productID);
    	addassetBean.setOrganization(organization);
    	addassetBean.setPrice(price);
    	
    	
    	AddassetDaoImpl addassetDao = new AddassetDaoImpl();
    	//insert user data in to the database.
    	String assetAdd = addassetDao.addAsset(addassetBean);
    	if(assetAdd.equals("SUCCESS"))
    	{
    	request.getRequestDispatcher("/success.jsp").forward(request, response);
    	}
    	else 
    	{
    	request.getRequestDispatcher("/admin.jsp").forward(request, response);
    	}
    	}	
    }


