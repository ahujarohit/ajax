package com.vedisoft.servlets.jdbc;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vedisoft.servlets.daos.CategoriesDao;
import com.vedisoft.servlets.daos.ProductDao;
import com.vedisoft.servlets.pojos.Categories;
import com.vedisoft.servlets.pojos.Products;

/**
 * Servlet implementation class ProductsController
 */
@WebServlet("/ProductsController")
public class ProductsController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductsController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int productId = 0;
		if (request.getParameter("productId") != null && request.getParameter("productId").trim().length() > 0)
			productId = Integer.parseInt(request.getParameter("productId"));

		String productName = request.getParameter("productName");
		if (productName == null) {
			productName = new String();
		}

		float productPrice = 0;
		if (request.getParameter("productPrice") != null && request.getParameter("productPrice").trim().length() > 0)
			productPrice = Float.parseFloat(request.getParameter("productPrice"));

		int stockInHand = 0;
		if (request.getParameter("stockInHand") != null && request.getParameter("stockInHand").trim().length() > 0)
			stockInHand = Integer.parseInt(request.getParameter("stockInHand"));

		int reorderLevel = 0;
		if (request.getParameter("reorderLevel") != null && request.getParameter("reorderLevel").trim().length() > 0)
			reorderLevel = Integer.parseInt(request.getParameter("reorderLevel"));

		int categoryId = 0;
		if (request.getParameter("categoryId") != null && request.getParameter("categoryId").trim().length() > 0)
			categoryId = Integer.parseInt(request.getParameter("categoryId"));

		String operation = request.getParameter("operation");
		if (operation == null) {
			operation = new String();
		}

		ProductDao productDao = new ProductDao();

		if (operation.equals("create")) {
			Products product = new Products(productId, productName, productPrice, stockInHand, reorderLevel,
					categoryId);
			productDao.create(product);
		} else if (operation.equals("edit")) {
			Products product = new Products(productId, productName, productPrice, stockInHand, reorderLevel,
					categoryId);
			productDao.edit(product);
		} else if (operation.equals("remove")) {
			productDao.remove(productId);
		}

		CategoriesDao categoriesDao = new CategoriesDao();
		ArrayList<Products> productList = productDao.findAll();
		request.setAttribute("productList", productList);
		ArrayList<Categories> categoryList = categoriesDao.findAll();
		request.setAttribute("catList", categoryList);
		RequestDispatcher rd = request.getRequestDispatcher("pages/ProductsHome.jsp");
		rd.forward(request, response);
	}

}
