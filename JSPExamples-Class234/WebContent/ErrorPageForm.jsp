<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page errorPage="ErrorPage.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page-Form</title>
    </head>
    <body>
          <form name="thisform" action="ErrorPageResult.jsp">
            <H1>Enter Information</H1>
            Principle : <input type="text" width="20" name="principle"><br>
            Rate :       <input type="text" width="20" name="rate"> %<br>
            Time:      <input type="text" width="20" name="time"><br><br>
            <input type="Submit" name="interest" value="submit">
            <input type="Reset" name="reset" value="reset">
        </form>
        <br><br><br><br>
        
        <img src="images/1-1.jpg" />

    </body>
</html>
