<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
	<%
		String rad = request.getParameter("radius");
		if (rad != null) {
			int radius = Integer.parseInt(rad);
			double area = 3.14 * Math.pow(radius, 2);
	%>
	Area :<%=area%>
	<%
		}
	%>

	<br>
	<br>
	<br>
	<br>



</body>
</html>
