package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Product;

/**
 * Servlet implementation class ProductServlet
 */
@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = (String) request.getParameter("pName");
		String id = (String) request.getParameter("pId");
		String color = (String) request.getParameter("pColor");
		String year = (String) request.getParameter("pYear");
		
		Product product =new Product();
		product.setName(name);
		product.setId(id);
		product.setColor(color);
		product.setYear(year);
		//response.getWriter().println(product);
		HttpSession session = request.getSession();
		session.setAttribute("productse", product);
		//request.getRequestDispatcher("ShowProduct.jsp").forward(request, response);	
		response.sendRedirect("ShowProduct.jsp");
	}

}
