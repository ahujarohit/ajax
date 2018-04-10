<%@page contentType="text/html" pageEncoding="UTF-8" import="jquery_test.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Drop Down Example</title>
        <script src="jquery-1.4.2.js"></script>
        <script src="myjs.js"></script>
    </head>
    <body>
        <h1>Drop Down Example</h1>
        <br />
       State : &nbsp;&nbsp;<select name="stateid" onchange="view_page_qs('getcity.jsp?stateid='+this.value)">
            <option>--select a state--</option>
            <%= State.getOptions() %>
        </select>
        <br />
        <span id="view"></span>
    </body>
</html>
