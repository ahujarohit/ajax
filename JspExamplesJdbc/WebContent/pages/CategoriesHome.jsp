<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script>
		function del(categoryId) {
		document.getElementById("categoryId").value = categoryId;
		document.getElementById("operation").value = 'remove';
		document.categoriesForm.submit();
		}
		function mod(categoryId,categoryName,categoryDetails) {
		document.getElementById("categoryId").value = categoryId;
		document.getElementById("categoryName").value = categoryName;
		document.getElementById("categoryDetails").value = categoryDetails;
		document.getElementById("add").value = 'Save!';
		document.getElementById("operation").value = 'edit';
		}
		</script>
<title>Vedisoft Software & Education Services Pvt. Ltd.</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7;IE=EmulateIE9">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="viewport"
	content="width=device-width, initial-scale=1,
	maximum-scale=1.0, user-scalable=no" />

<link rel="stylesheet" type="text/css" href="resources/style.css"
	media="all" />

<link rel="stylesheet" type="text/css" href="resources/demo.css"
	media="all" />
</head>
<body>
	<div class="container">
		<header>
			<h1>
				Vedisoft : JDBC <span> : Categories Form</span>
			</h1>
		</header>
		<div class=form>

			<form id=categoriesForm name=categoriesForm method=post
				action=CategoriesController>
				<p class=contact>
					<label for=name>Name</label>
				</p>

				<input id=categoryName name=categoryName placeholder=Name
					required=tabindex=1 type=text>
				<p class=contact>
					<label for=phone>Details</label>
				</p>

				<textarea id=categoryDetails rows=5 cols=57 name=categoryDetails
					required=tabindex=2> </textarea>
				<br> <br> <input class=buttom name=add id=add tabindex=3
					value=Add ! type=submit> <input name=operation id=operation
					value=create type=hidden> <input name=categoryId
					id=categoryId type=hidden>

			</form>
		</div>
		<br>
		<div class=form>
			<br>
			<table width=90% border=1>

				<tr>
					<td align=center>Name</td>
					<td align=center>Details</td>
					<td align=center>&nbsp;</td>
					<td align=center>&nbsp;</td>
				</tr>
				<c:forEach items="${requestScope.catList}" var="cat">
					<tr>
						<td>${cat.categoryName}</td>
						<td>${cat.categoryDetails}</td>
						<td><input class="buttom" name="edit" id="edit" value="Edit!"
							type="button" onclick="mod('${cat.categoryId}','${cat.categoryName}','${cat.categoryDetails}');"></td>
						<td><input class="buttom" name="delete" id="delete" value="Delete!" type="button" onclick="del('${cat.categoryId}');"></td>
					</tr>
				</c:forEach>
			</table>
			<br>
		</div>
	</div>
</body>
</html>
