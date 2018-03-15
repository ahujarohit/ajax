package com.vedisoft.jm2.servlets;

import java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Example1Servlet
 */
@WebServlet("/Example1Servlet")
public class Example1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Example1Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String fn = request.getParameter("fname");
		String mn = request.getParameter("mname");
		String ln = request.getParameter("lname");

		PrintWriter out = response.getWriter();
		out.println("<!Doctype html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title> Servlet Example 1 </title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1> Servlet Example 1 </h1>");
		out.println("<h2> First Name " + fn + "</h2>");
		out.println("<h2> Middle Name " + mn + "</h2>");
		out.println("<h2> Last Name " + ln + "</h2>");
		out.println("</body>");
		out.println("</html>");
	}

}
