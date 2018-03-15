package com.vedisoft;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Test
 */
@WebServlet("/Test")
public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Test() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		Person p = new Person();
		p.setName("Sam Dalton");
		p.setAge(26);

		Address a = new Address();
		a.setLine1("221b Baker Street");
		a.setTown("London");
		a.setCounty("Greater London");
		a.setPostcode("NW1 1AA");

		ArrayList al = new ArrayList();
		PhoneNumber ph = new PhoneNumber();
		ph.setStd("01895");
		ph.setNumber("678901");
		al.add(ph);

		ph = new PhoneNumber();
		ph.setStd("555");
		ph.setNumber("8654789");
		al.add(ph);

		a.setPhoneNumbers(al);
		p.setAddress(a);

		req.setAttribute("person1", p);

		RequestDispatcher rd = req.getRequestDispatcher("/el/ComplexBean.jsp");
		rd.forward(req, res);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
