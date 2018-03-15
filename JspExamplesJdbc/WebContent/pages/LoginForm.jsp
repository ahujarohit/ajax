<!DOCTYPE html>
<html>
<head>
<title>Vedisoft Software & Education Services Pvt. Ltd.</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7;IE=EmulateIE9">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="viewport"
	content="width=device-width, initial-scale=1,
	maximum-scale=1.0, user-scalable=no" />

<link rel="stylesheet" type="text/css" href="/JspExamplesJdbc/resources/style.css"
	media="all" />

<link rel="stylesheet" type="text/css" href="/JspExamplesJdbc/resources/demo.css"
	media="all" />
</head>
<body>
	<div class="container">
		<header>
			<h1>
				<span>Vedisoft : JSP JDBC Example 1</span> Welcome Home
			</h1>
		</header>
		<div class="form">
			<form id="contactform" action="/JspExamplesJdbc/LoginServlet"
				method="post">
				<p class="contact">
					<label for="username">Customer Name</label>
				</p>
				<input id="username" name="name" placeholder="name" required=""
					tabindex="1" type="text">
				<p class="contact">
					<label for="email">Email</label>
				</p>
				<input type="email" id="email" name="email" required="" tabindex="2">
				<br> <br> <input class="buttom" name=\
					"submit" id="submit" tabindex="3" value="Login !" type="submit">
				<p class="contact">
				<h1>
					<a href="RegistrationPage.jsp">Register Me</a>
				</h1>
				</p>

			</form>
		</div>
	</div>
</body>
</html>
