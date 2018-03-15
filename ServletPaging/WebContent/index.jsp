<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Servlet pagination using data tables</title>
<link rel="stylesheet" type="text/css"
	href="css/jquery.dataTables.min.css">
<script type="text/javascript" src="css/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="css/jquery.dataTables.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		$("#example").dataTable({
			"bProcessing" : false,
			"bServerSide" : false,
			"sort" : "position",
			"sAjaxSource" : "/ServletPaging/PaginationServlet",
			"aoColumns" : [ {
				"mData" : "name"
			}, {
				"mData" : "position"
			}, {
				"mData" : "office"
			}, {
				"mData" : "phone"
			}, {
				"mData" : "startDate"
			}, {
				"mData" : "salary"
			},

			]
		});

	});
</script>
</head>
<body>
	<form action="">
		<h2>
			Pagination using data tables and servlet on server side<br> <br>
		</h2>
		<table width="70%"
			style="border: 3px; background: rgb(243, 244, 248);">
			<tr>
				<td>
					<table id="example" class="display" cellspacing="0" width="100%">
						<thead>
							<tr>
								<th>Name</th>
								<th>Position</th>
								<th>Office</th>
								<th>Phone</th>
								<th>Start Date</th>
								<th>Salary</th>
							</tr>
						</thead>
					</table>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>