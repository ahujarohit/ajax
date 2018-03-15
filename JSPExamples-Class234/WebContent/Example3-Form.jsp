<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
    <HEAD>
        <TITLE>Invoking Example3.jsp</TITLE>
        <Link rel="stylesheet" type="text/css" href="css/calender.css" />
        <Link rel="stylesheet" href="css/epoch_styles.css" type="text/css">
        <script type="text/javascript" src="javascript/epoch_classes.js"></script>

        <script language="JavaScript">

            var dp_cal1;
            window.onload = function () {
                dp_cal1  = new Epoch('epoch_popup','popup',document.getElementById('popup_container'));

            };
        </script>
    </HEAD>
    <BODY >
        <CENTER>
            <TABLE >
                <TR><TH CLASS="TITLE">
                        Invoking Example3.jsp</TABLE>
            <FORM ACTION="Example3.jsp">
                <TABLE >
                    <TR><TD><B>Employee Code</B></TD><TD><INPUT TYPE="TEXT" NAME="code"></TD></TR>
                    <TR><TD><B>Employee Name</B></TD><TD><INPUT TYPE="TEXT" NAME="name"></TD></TR>
                    <TR><TD><B>Employee Department</B></TD><TD><INPUT TYPE="TEXT" NAME="dept"></TD></TR>
                    <TR><TD><B>Employee Designation</B></TD><TD><INPUT TYPE="TEXT" NAME="desig"></TD></TR>
                    <TR><TD><B>Date Of Joining<font color="red">(dd-mm-yy)</font></B></TD><TD><INPUT TYPE="TEXT" id="popup_container" NAME="doj"></TD></TR>
                    <TR><TD><B>Basic Pay</B></TD><TD><INPUT TYPE="TEXT" NAME="basic"></TD></TR>
                </TABLE>
                <INPUT TYPE="SUBMIT" VALUE="Show Employee">
            </FORM>
        </CENTER></BODY>


    <br><br><br>
    <img src="images/1-1.jpg" />


</HTML>