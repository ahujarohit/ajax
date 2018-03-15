<jsp:useBean id="person" class="com.vedisoft.Person"
             scope="request">
    <jsp:setProperty name="person" property="*"/>
</jsp:useBean>
<html>
    <body>
        <h1 align="center"> EL and Simple JavaBeans</h1>
        <table align="center" border="1">
            <tr>
                <td>${person.name}</td>
                <td>${person.age}</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
            <form action="SimpleBean.jsp" method="post">
                <td> Enter Name<input type="text" name="name"></td>
                <td>Enter Age<input type="text" name="age"></td>
                <td><input type="submit"></td>
            </form>
            <tr>
        </table>
        <br><br><br><br>
        <img src="images/1-1.jpg" />
    </body>

</html>