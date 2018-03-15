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
	<div class=container>
		<header>
			<h1>
				Vedisoft : JDBC <span> : Shopping Cart</span>
			</h1>
		</header>
		<br>
		<div class=form>
			<br>
			<h1>
				<a href="pages/LoginSuccess.jsp">Home</a>
			</h1>
			<br>
			<table width=90% border=1>

				<tr>
					<td align=center>Name</td>
					<td align=center>Price</td>
					<td align=center>Quantity</td>
				</tr>



				<c:forEach var="orderDetail" items="${requestScope.orderDetailsList}">
					<tr>
						<td>${orderDetail.productId}</td>
						<td>${orderDetail.price}</td>
						<td>${orderDetail.quantity}</td>
					</tr>
				</c:forEach>



			</table>
			<form id=closeShopping action="/JspExamplesJdbc/SaveCart"
				method="post">
				<br> <input class="buttom" name="submit" id="submit"
					tabindex="1" value="Place Order!" type="submit">
			</form>
			<br>
		</div>
	</div>
</body>
</html>
