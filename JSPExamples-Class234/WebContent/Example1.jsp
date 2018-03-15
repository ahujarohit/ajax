<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
    <HEAD>
        <TITLE>Using jsp:setProperty</TITLE>
        
    </HEAD>
    <BODY>

        <CENTER>
            <TABLE >
                <TR><TH CLASS="TITLE">
                        Using jsp:setProperty</TABLE>
                        <jsp:useBean id="employee" class="com.vedisoft.bean.Employee" />
                        <%
                                    int code = 1;
                                    try {
                                        code =
                                                Integer.parseInt(request.getParameter("code"));
                                    } catch (NumberFormatException nfe) {
                                    }
                        %>
                        <jsp:setProperty
                            name="employee"
                            property="code"
                        value='<%= code%>' />

            <jsp:setProperty
                name="employee"
                property="name"
            value='<%= request.getParameter("name")%>' />

            <jsp:setProperty
                name="employee"
                property="dept"
            value='<%= request.getParameter("dept")%>' />

            <jsp:setProperty
                name="employee"
                property="desig"
            value='<%= request.getParameter("desig")%>' />

            <jsp:setProperty
                name="employee"
                property="doj"
            value='<%= request.getParameter("doj")%>' />

            <%
                        double basic = 1.0;
                        try {
                            String basic1 = request.getParameter("basic");
                            basic = Double.parseDouble(basic1);
                        } catch (NumberFormatException nfe) {
                        }
            %>

            <jsp:setProperty
                name="employee"
                property="basic"
            value='<%= basic%>'/>
            <BR>
       
            <TABLE> 
                <TR><TD><B>Employee Code</B></TD><TD><jsp:getProperty name="employee" property="code" /></TD></TR>
                <TR><TD><B>Employee Name</B></TD><TD><jsp:getProperty name="employee" property="name" /></TD></TR>
                <TR><TD><B>Employee Department</B></TD><TD><jsp:getProperty name="employee" property="dept" /></TD></TR>
                <TR><TD><B>Employee Designation</B></TD><TD><jsp:getProperty name="employee" property="desig" /></TD></TR>
                <TR><TD><B>Date Of Joining</B></TD><TD><jsp:getProperty name="employee" property="doj" /></TD></TR>
                <TR><TD><B>Basic Pay</B></TD><TD><jsp:getProperty name="employee" property="basic" /></TD></TR>
                <TR><TD><B>HRA <font color="red">20% of Basic Pay</font></B><TD><jsp:getProperty name="employee" property="HRA" /><TD></TD></TR>
                <TR><TD><B>DA <font color="red">10% of Basic Pay</font></B><TD><jsp:getProperty name="employee" property="DA" /><TD></TD></TR>
                <TR><TD><B>CA <font color="red">10% of Basic Pay</font></B><TD><jsp:getProperty name="employee" property="CA" /><TD></TD></TR>
                <TR><TD><B>Total Salary  <font color="red">HRA +DA + CA</font></B><TD><jsp:getProperty name="employee" property="NSalary" /><TD></TD></TR>

            </TABLE>
        </CENTER>
        <br><br><br>
              <img src="images/1-1.jpg" />


    </BODY></HTML>