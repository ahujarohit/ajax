<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Experssions -2</title>
</head>
<body>
	The value of Pi is:
	<%=Math.PI%><br> A random number between 1 and 100 is:
	<%=(int) (Math.random() * 100) + 1%><br> Today is:
	<%=new java.text.SimpleDateFormat("EEEE").format(new java.util.Date())%><br>
	<%=new java.text.SimpleDateFormat("dd-MM-yy").format(new java.util.Date())%><br>
	<%=new java.text.SimpleDateFormat("dd-MM-yy hh:mm:ss").format(new java.util.Date())%><br>
	<%=new java.text.SimpleDateFormat("dd MMMM, yyyy (EEEE)").format(new java.util.Date())%><br>
</body>
</html>










