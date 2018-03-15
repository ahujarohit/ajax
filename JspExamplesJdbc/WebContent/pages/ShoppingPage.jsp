<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<script>
	function submitForm() {
		document.shoppingForm.submit();
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
				Vedisoft : JDBC <span> : Shopping Page</span>
			</h1>
		</header>
		<div class="form">
			<br>
			<h1>
				<a href="pages/LoginSuccess.jsp">Home</a>
			</h1>
			<br>
			<form id="shoppingForm" name="shoppingForm"  method="post"
				action="/JspExamplesJdbc/ShoppingPageController">

				<p class="contact">
					<label for="categoryId">Category</label>
				</p>


				<select id="categoryId" name="categoryId"  tabindex="1"
					onchange="submitForm();">
					${requestScope.options} 
				</select> <br>
			</form>
		</div>

		<br>
		<div class="form">
			<br>
			<table width="90%" border="1">
				<tr>
					<td align="center">Name</td>
					<td align="center">Price</td>
					<td align="center">&nbsp;</td>
				</tr>
				<c:forEach items="${requestScope.productList}" var="product">
					<tr>
						<td>${product.productName}</td>
						<td>${product.productPrice}</td>
						<td>
							<form method="post"
								action="/JspExamplesJdbc/ShoppingPageController">
								<input type="hidden" name="productId"
									value="${product.productId}"> <input type="hidden"
									name="productPrice" value="${product.productPrice}"> <input
									class="buttom" name="edit" id="edit" value="Add to Cart!"
									type="submit">
							</form>
						</td>

					</tr>
				</c:forEach>
			</table>
			<br>
		</div>
	</div>
</body>
</html>
