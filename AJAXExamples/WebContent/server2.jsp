
<%
	String g = request.getParameter("g");
	if (g.equals("name")) {
		out.println("<h1>Name : John Petriccui</h1>");
	} else if (g.equals("address")) {
		out.println("<h1>Address : 36A/1, 3rd Street, London</h1>");
	} else if (g.equals("phone")) {
		out.println("<h1>Phone : +919999999999</h1>");
	}
%>