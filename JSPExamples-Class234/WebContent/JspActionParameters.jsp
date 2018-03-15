<html>
<head>
<title>Dynamic include in Action tags JSP</title>
</head>

<body>
<jsp:include page="Scriptlet2.jsp">
    <jsp:param name="principle" value="2300" />
    <jsp:param name="rate" value="20" />
    <jsp:param name="time" value="2" />
</jsp:include>
</body>
</html>
