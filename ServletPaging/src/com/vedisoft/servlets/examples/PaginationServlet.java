package com.vedisoft.servlets.examples;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.vedisoft.servlets.daos.PersonDao;
import com.vedisoft.servlets.pojos.Person;
import com.vedisoft.servlets.pojos.PersonJsonObject;

/**
 * Servlet implementation class PaginationServlet
 */
@WebServlet("/PaginationServlet")
public class PaginationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaginationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

     
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    response.setContentType("application/json");
	    PrintWriter out = response.getWriter();
	    PersonDao pDao = new PersonDao();
	    ArrayList<Person> personsList = pDao.findAll();
	    PersonJsonObject personJsonObject = new PersonJsonObject();
	    personJsonObject.setiTotalDisplayRecords(personsList.size());
	    personJsonObject.setiTotalRecords(personsList.size());
	    personJsonObject.setAaData(personsList);

	    Gson gson = new GsonBuilder().setPrettyPrinting().create();
	    String json2 = gson.toJson(personJsonObject);
	    out.print(json2);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
