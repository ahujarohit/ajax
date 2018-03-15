<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
    <HEAD>
        <TITLE>Using jsp:setProperty</TITLE>
       
    </HEAD>
    <BODY >

        <CENTER>
            <TABLE >
                <TR><TH CLASS="TITLE">
                        Using jsp:setProperty</TABLE>
                        <jsp:useBean id="person" class="com.vedisoft.bean.Person" />
                        <jsp:setProperty
                            name="person"
                            property="name"
                        value='<%= request.getParameter("name")%>' />

            <jsp:setProperty
                name="person"
                property="phone"
            value='<%= request.getParameter("phone")%>' />

            <BR>
            <TABLE >
                <TR><TD><B>Name</B></TD>
                <TD><jsp:getProperty name="person" property="name" /></TD></TR>
                <TR><TD><B>Phone</B></TD>
                <TD><jsp:getProperty name="person" property="phone" /></TD></TR>

            </TABLE>
        </CENTER>
        <br><br><br>
       
        <img src="images/1-1.jpg" />

    </BODY></HTML>