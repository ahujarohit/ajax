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
		int p, r, t;
		float simple = 0, compound = 0;
		p = Integer.parseInt(request.getParameter("principle"));
		r = Integer.parseInt(request.getParameter("rate"));
		t = Integer.parseInt(request.getParameter("time"));
		simple = (p * r * t) / 100f;
		compound = (float) (p * Math.pow((1 + (r / 100f)), t)) - p;
	%>
	<UL>
		<LI>Simple Interest : <%=simple%>
		<LI>Compound Interest : <%=compound%>
	</UL>
	<br>
	<br>
	<br>



</body>
</html>
