
<html>
    <body>
        <div align="center">
            <h1 align="center">EL and Complex JavaBeans</h1>
            <table border="1" align="center">
                <tr>
                    <td>${person1.name}</td>
                    <td>${person1.age}</td>
                    <td>${person1.address.line1}</td>
                    <td>${person1["address"].line1}</td>
                    <td>${person1["address"].town}</td>
                    <td>${person1.address.phoneNumbers[0].std} ${person1.address.phoneNumbers[0].number}</td>
                    <td>${person1.address.phoneNumbers[1].std} ${person1.address.phoneNumbers[1].number}</td>
                </tr>



            </table>

            <br><br><br><br>
            <br><br><br><br>
            <img src="images/1-1.jpg" />
        </div>

    </body>

</html>