
<%
	if (request.getParameter("f").equals("si")) {
		double pr = Double.parseDouble(request.getParameter("pr"));
		double r = Double.parseDouble(request.getParameter("r"));
		double t = Double.parseDouble(request.getParameter("t"));
		double si = (pr * r * t) / 100;
		out.println("<b>Result is :" + si + "</b>");
	} else if (request.getParameter("f").equals("ci")) {
		double pr = Double.parseDouble(request.getParameter("pr"));
		double r = Double.parseDouble(request.getParameter("r"));
		double t = Double.parseDouble(request.getParameter("t"));
		double ci = pr + (r * t) / 100;
		out.println("<b>Result is :" + ci + "</b>");
	}
%>