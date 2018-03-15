<jsp:useBean id="sessionperson" class="com.vedisoft.Person"
             scope="session" />
<jsp:useBean id="requestperson" class="com.vedisoft.Person"
             scope="request" />
<html>
    <body>
        <h1 align="center">Implicit Variables Examples</h1>
        <table align="center">
            <tr>
                <td>Concept</td>
                <td>Code</td>
                <td>Output</td>
            </tr>
            <tr>
                <td>PageContext</td>
                <td>\${pageContext.request.requestURI}</td>
                <td>${pageContext.request.requestURI}</td>
            </tr>
            <tr>
                <td>sessionScope</td>
                <td>\${sessionScope.sessionperson.name}</td>
                <td>${sessionperson.name}</td>
            </tr>
            <tr>
                <td>requestScope</td>
                <td>\${requestScope.requestperson.name}</td>
                <td>${requestperson.name}</td>
            </tr>
            <tr>
                <td>param</td>
                <td>\${param["name"]}</td>
                <td>${param["name"]}</td>
            </tr>
            <tr>
                <td>paramValues</td>
                <td>\${paramValues.multi[1]}</td>
                <td>${paramValues.multi[1]}</td>
            </tr>
        </table>
            <br><br><br><br>
        <img src="images/1-1.jpg" />
    </body>
</html>