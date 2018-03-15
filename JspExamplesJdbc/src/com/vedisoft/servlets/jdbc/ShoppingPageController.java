package com.vedisoft.servlets.jdbc;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vedisoft.servlets.daos.CategoriesDao;
import com.vedisoft.servlets.daos.ProductDao;
import com.vedisoft.servlets.pojos.Categories;
import com.vedisoft.servlets.pojos.OrderDetailsList;
import com.vedisoft.servlets.pojos.Products;

/**
 * Servlet implementation class ShoppingPageController
 */
@WebServlet("/ShoppingPageController")
public class ShoppingPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShoppingPageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		OrderDetailsList od = (OrderDetailsList) session.getAttribute("od");
		if (od == null) {
			od = new OrderDetailsList();
			session.setAttribute("od", od);
		}
		int categoryId = 0;
		if (request.getParameter("categoryId") != null && request.getParameter("categoryId").trim().length() > 0)
			categoryId = Integer.parseInt(request.getParameter("categoryId"));

		if (request.getParameter("productId") != null && request.getParameter("productId").trim().length() > 0) {
			int productId = Integer.parseInt(request.getParameter("productId"));
			float price = Float.parseFloat(request.getParameter("productPrice"));
			od.create(productId, 1, price);
		}
		
		StringBuilder options = new StringBuilder(); 
		CategoriesDao categoriesDao = new CategoriesDao();
		ArrayList<Categories> categoryList = categoriesDao.findAll();
		for (Categories cat : categoryList) {
			if (categoryId == 0) {
				categoryId = cat.getCategoryId();
			}
			if (categoryId == cat.getCategoryId())
				options.append("<option selected value=\"" + cat.getCategoryId() + "\">" + cat.getCategoryName()
						+ "</option>");
			else
				options.append("<option value=\"" + cat.getCategoryId() + "\">" + cat.getCategoryName() + "</option>");
		}
		request.setAttribute("options", options.toString());
		ProductDao productDao = new ProductDao();
		ArrayList<Products> productList = productDao.findAll(categoryId);
		request.setAttribute("productList", productList);
		RequestDispatcher rd = request.getRequestDispatcher("pages/ShoppingPage.jsp");
		rd.forward(request, response);
		
	}

}
