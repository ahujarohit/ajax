package com.vedisoft.servlets.filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vedisoft.servlets.daos.CustomersDao;

/**
 * Servlet Filter implementation class AuthenticationFilter
 */
@WebFilter("/*")
public class AuthenticationFilter implements Filter {

	private ServletContext context;

	public void init(FilterConfig fConfig) throws ServletException {
		this.context = fConfig.getServletContext();
		this.context.log("AuthenticationFilter initialized");
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;

		String uri = req.getRequestURI();
		this.context.log("Requested Resource::" + uri);

		if (uri.endsWith("LoginForm.jsp") || uri.endsWith("LoginServlet") || uri.endsWith("html") || uri.endsWith("js")
				|| uri.endsWith("css") || uri.endsWith("png") || uri.endsWith("RegistrationPage.jsp") || uri.endsWith("RegistrationServlet")) {
			this.context.log("Home Page Access");
			chain.doFilter(request, response);
		} else {
			HttpSession session = req.getSession();
			int customerId = 0;
			String customerName = new String();
			String customerEmail = new String();
			if (session != null) {
				Integer sessionId = (Integer) session.getAttribute("customerId");
				customerName = (String) session.getAttribute("customerName");
				customerEmail = (String) session.getAttribute("customerEmail");
				if (sessionId != null && customerName != null && customerEmail != null) {
					customerId = CustomersDao.verify(customerName, customerEmail);
					if (customerId == sessionId) {
						chain.doFilter(request, response);
					} else {
						res.sendRedirect("/JspExamplesJdbc/pages/LoginForm.jsp");
					}
				} else
					res.sendRedirect("/JspExamplesJdbc/pages/LoginForm.jsp");
			}
		}

	}

	public void destroy() {
		// close any resources here
	}

}
