<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Experssions -1</title>
    </head>
    <body>
        Current Time <%=new java.util.Date()%><br>
        Host Name:<%= request.getRemoteHost()%><br>
        Server: <%= application.getServerInfo()%><br>
        Session ID: <%= session.getId()%><br>
        <br><br><br><br><br>
        <img src="images/1-1.jpg" />

    </body>
</html>



