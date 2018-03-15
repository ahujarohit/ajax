<%@page import="com.vedisoft.bean.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <% Employee e = new Employee();
                    e.setCode(101);
                    e.setBasic(10000);
                    e.setDept("Computer Science");
                    e.setName("S K Jain");
                    e.setDesig("Developer");
                    e.setDoj("06-06-2011");
        %>
        Employee Name: <%= e.getName()%><br>
        Employee Code: <%= e.getCode()%><br>
        Basic Salary: <%= e.getBasic()%><br>
        Employee Designation: <%= e.getDesig()%><br>

        <br><br><br>
        <img src="images/1-1.jpg" />

    </body>
</html>
