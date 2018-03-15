package com.vedisoft.jm2.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Example2Servlet
 */
@WebServlet("/Example2Servlet")
public class Example2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Example2Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Enumeration e = request.getParameterNames();
		String fn = new String();
		String mn = new String();
		String ln = new String();
		while(e.hasMoreElements()) {
			String vn = (String) e.nextElement();
			String vl = request.getParameter(vn);
			if(vn.equals("fname"))
				fn = vl;
			else if(vn.equals("mname"))
				mn = vl;
			else if(vn.equals("lname"))
				ln = vl;
		}	
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
