<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
<title>JSTL sql:query Tag</title>
</head>
<body>

	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/MyInventory" user="root"
		password="vedisoft" />

	<sql:query dataSource="${snapshot}" var="result">
SELECT * from categories;
</sql:query>

	<table border="1" width="100%">
		<tr>
			<th>Category Id</th>
			<th>Category Name</th>
			<th>Category Details</th>

		</tr>
		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.categoryId}" /></td>
				<td><c:out value="${row.categoryName}" /></td>
				<td><c:out value="${row.categoryDetails}" /></td>

			</tr>
		</c:forEach>
	</table>

</body>
</html>